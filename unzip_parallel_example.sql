CREATE OR REPLACE VIEW VUNZIP_PARALLEL_PROGRESS
AS -- Support for monitoring
SELECT REPLACE(MESSAGE, TARGET_DESC) MESSAGE,
    TRUNC(TIME_REMAINING / 3600)
    || ':' || LPAD(MOD(TRUNC(TIME_REMAINING / 60), 60), 2, '0')
    || ':' || LPAD(MOD(TIME_REMAINING, 60), 2, '0') TIME_REMAINING,
    TRUNC(ELAPSED_SECONDS / 3600)
    || ':' || LPAD(MOD(TRUNC(ELAPSED_SECONDS / 60), 60), 2, '0')
    || ':' || LPAD(MOD(ELAPSED_SECONDS, 60), 2, '0') ELAPSED_SECONDS,
    ROUND(NVL(SOFAR / NULLIF(TOTALWORK, 0), 1) * 100) AS PERCENT
FROM V$SESSION_LONGOPS
WHERE USERNAME = :OWNER
AND OPNAME = 'Expand_Zip_Archive'
AND TARGET_DESC = :P1_FILE_ID
AND LAST_UPDATE_TIME > SYSDATE - 1 / 24 / 4
ORDER BY LAST_UPDATE_TIME DESC, PERCENT
;


-- Demo Schema
CREATE SEQUENCE DEMO_FOLDERS_SEQ;

CREATE TABLE DEMO_FOLDERS (
	ID NUMBER DEFAULT ON NULL DEMO_FOLDERS_SEQ.NEXTVAL NOT NULL ENABLE,
	PARENT_ID NUMBER,
	FOLDER_NAME VARCHAR2(200) NOT NULL ENABLE,
	CONSTRAINT DEMO_FOLDERS_PK PRIMARY KEY (ID),
	CONSTRAINT DEMO_FOLDERS_FK FOREIGN KEY (PARENT_ID) REFERENCES DEMO_FOLDERS(ID),
	CONSTRAINT DEMO_FOLDERS_UK UNIQUE (PARENT_ID, FOLDER_NAME)
);

CREATE SEQUENCE DEMO_FILES_SEQ;

CREATE TABLE DEMO_FILES (
	ID NUMBER(11,0) DEFAULT ON NULL DEMO_FILES_SEQ.NEXTVAL NOT NULL ENABLE,
	FILE_CONTENT BLOB,
	FILE_NAME VARCHAR2(300),
	FILE_DATE DATE,
	FILE_SIZE NUMBER,
	MIME_TYPE VARCHAR2(300),
	FOLDER_ID NUMBER,
	CONSTRAINT DEMO_FILES_PK PRIMARY KEY (ID),
	CONSTRAINT DEMO_FILES_FK FOREIGN KEY (FOLDER_ID) REFERENCES DEMO_FOLDERS(ID),
	CONSTRAINT DEMO_FILES_UK UNIQUE (FOLDER_ID, FILE_NAME)
);

insert into demo_folders (folder_name) values('Home');
commit;
--
CREATE OR REPLACE PROCEDURE Expand_Demo_Files_Job (
	p_File_ID 			INTEGER,
	p_Parent_Folder 	VARCHAR2 DEFAULT '/Home',
	p_Execute_Parallel 	BOOLEAN DEFAULT true
)
AUTHID DEFINER
is
	v_message			VARCHAR2(4000);
	v_SQLCode 			INTEGER;
begin
	if apex_application.g_debug then
        apex_debug.info('Expand_Demo_Files_Job : %s %s', p_File_ID, p_Parent_Folder);
    end if;
	Unzip_Parallel.Expand_Zip_Archive (
			p_Load_Zip_Query => 'SELECT FILE_CONTENT, FILE_NAME ' || chr(10) ||
								'FROM DEMO_FILES ' || chr(10) ||
								'WHERE  LOWER(MIME_TYPE) = ''application/zip'' ' || chr(10) ||
								'AND ID = :search_value',
			p_Search_Value => p_File_ID,
			p_Folder_query => 'SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS',
			p_Filter_Path_Cond => 'instr(:path_name, ''__MACOSX/'') != 1',
			p_Save_File_Code => 'INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID)' || chr(10) ||
								'VALUES	(:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);',
			p_Parent_Folder => p_Parent_Folder,
			p_Execute_Parallel	=> p_Execute_Parallel,
			p_SQLCode => v_SQLCode,
			p_Message => v_Message
	);
	begin
		if v_SQLCode = 0 then
			v_message := 'OK';
		end if;
		htp.init();
		htp.p(v_message);
	exception when value_error then
		dbms_output.put_line(v_message);
	end;
end;
/

-- for performance comparison with the provided library APEX_ZIP from Oracle
CREATE OR REPLACE PROCEDURE Expand_Apex_Zip_Job (
	p_File_ID 			INTEGER,
	p_Parent_Folder 	VARCHAR2 DEFAULT '/Home'
)
AUTHID DEFINER
is
	v_zip_file blob;
	v_unzipped_file blob;
	v_files apex_zip.t_files;
	v_Full_Path 	VARCHAR2(4000);
	v_File_Name 	VARCHAR2(4000);
	v_Folder_query  VARCHAR2(4000) := 'SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS';
	v_Save_File_Code VARCHAR2(4000);
	v_root_id 		INTEGER;
	v_Folder_Id		INTEGER;
begin
	v_Folder_query   := 'SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS';
	v_Save_File_Code := 'INSERT INTO DEMO_FILES ( FILE_CONTENT, FILE_NAME, FOLDER_ID ) ' ||
						'VALUES ( :unzipped_file, :File_Name, :Folder_Id );';
	select FILE_CONTENT
	into v_zip_file
	from DEMO_FILES
	where LOWER(MIME_TYPE) = 'application/zip'
	and ID = p_File_ID;

	v_root_id := Unzip_Parallel.Create_Path(
		p_Path_Name => p_Parent_Folder,
		p_Root_Id => null,
		p_Folder_query => v_Folder_query
	);

	v_files := APEX_ZIP.GET_FILES ( p_zipped_blob => v_zip_file );
	for i in 1 .. v_files.count loop
		v_Full_Path := v_files(i);
		v_File_Name := SUBSTR(v_Full_Path, INSTR(v_Full_Path, '/', -1) + 1);
		if instr(v_Full_Path, '__MACOSX/') != 1 then
			v_unzipped_file := APEX_ZIP.GET_FILE_CONTENT (
				p_zipped_blob => v_zip_file,
				p_file_name => v_Full_Path
			);
			v_Folder_Id := Unzip_Parallel.Create_Path(
				p_Path_Name => v_Full_Path,
				p_Root_Id => v_root_id,
				p_Folder_query => v_Folder_query
			);

			execute immediate 'begin ' || v_Save_File_Code || ' end;'
			using v_File_Name, v_unzipped_file, v_Folder_Id;
		end if;
	end loop;
	commit;
end;
/


/*

exec Expand_Demo_Files_Job(1, '/Home', true);
--
delete from DEMO_FILES where ID not in ( 1 ) or FOLDER_ID IS NULL;
delete from DEMO_FOLDERS t where NOT EXISTS (select 1 from DEMO_FILES s where s.folder_id = t.id) ;
commit;

exec Expand_Zip_Apex_Job(1, '/Home');


--
DROP TABLE DEMO_FILES;
DROP TABLE DEMO_FOLDERS;
DROP SEQUENCE DEMO_FOLDERS_SEQ;
DROP SEQUENCE DEMO_FILES_SEQ;
*/

