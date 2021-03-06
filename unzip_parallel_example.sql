/*
Copyright 2017-2019 Dirk Strack

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

CREATE OR REPLACE VIEW VUNZIP_PARALLEL_PROGRESS (
	MESSAGE, TIME_REMAINING, TIME_ELAPSED, PERCENT, TARGET_DESC
)
AS -- Support for monitoring
SELECT REPLACE(MESSAGE, OPNAME ||': '|| TARGET_DESC, OPNAME) MESSAGE,
    TRUNC(TIME_REMAINING / 3600)
    || ':' || LPAD(MOD(TRUNC(TIME_REMAINING / 60), 60), 2, '0')
    || ':' || LPAD(MOD(TIME_REMAINING, 60), 2, '0') TIME_REMAINING,
    TRUNC(ELAPSED_SECONDS / 3600)
    || ':' || LPAD(MOD(TRUNC(ELAPSED_SECONDS / 60), 60), 2, '0')
    || ':' || LPAD(MOD(ELAPSED_SECONDS, 60), 2, '0') ELAPSED_SECONDS,
    ROUND(NVL(SOFAR / NULLIF(TOTALWORK, 0), 1) * 100) AS PERCENT,
    TARGET_DESC
FROM V$SESSION_LONGOPS
WHERE USERNAME = SYS_CONTEXT('USERENV', 'CURRENT_SCHEMA')
AND CONTEXT IN (NVL(MOD(NV('APP_SESSION'), POWER(2,31)), 0), 0)		-- context is of type BINARY_INTEGER
AND OPNAME = 'Expand_Zip_Archive'
AND START_TIME >= SYSDATE - (1 / 24)
AND SOFAR < TOTALWORK
ORDER BY LAST_UPDATE_TIME DESC, PERCENT
;



-- Demo Schema
CREATE SEQUENCE DEMO_FOLDERS_SEQ;

CREATE TABLE DEMO_FOLDERS (
	ID NUMBER DEFAULT ON NULL DEMO_FOLDERS_SEQ.NEXTVAL NOT NULL ENABLE,
	PARENT_ID NUMBER,
	FOLDER_NAME VARCHAR2(200) NOT NULL ENABLE,
	CONSTRAINT DEMO_FOLDERS_PK PRIMARY KEY (ID),
	CONSTRAINT DEMO_FOLDERS_FK FOREIGN KEY (PARENT_ID) REFERENCES DEMO_FOLDERS(ID) ON DELETE CASCADE,
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
	CONSTRAINT DEMO_FILES_FK FOREIGN KEY (FOLDER_ID) REFERENCES DEMO_FOLDERS(ID) ON DELETE CASCADE,
	CONSTRAINT DEMO_FILES_UK UNIQUE (FOLDER_ID, FILE_NAME)
);

insert into demo_folders (folder_name) values('Home');
commit;
--
CREATE OR REPLACE PROCEDURE Expand_Demo_Files_Job (
	p_File_ID 			INTEGER,
	p_Parent_Folder 	VARCHAR2 DEFAULT '/Home',
	p_Execute_Parallel 	BOOLEAN DEFAULT true
) -- this procedure is called on demand by an ajax request
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

CREATE OR REPLACE PROCEDURE Expand_Files_Job (
	p_File_Name			VARCHAR2,
	p_Parent_Folder 	VARCHAR2 DEFAULT '/Home',
	p_Execute_Parallel 	BOOLEAN DEFAULT true
) -- this procedure is called on demand by an ajax request
AUTHID DEFINER
is
	v_message			VARCHAR2(4000);
	v_SQLCode 			INTEGER;
	v_Init_Session_Code VARCHAR2(4000);
	v_Load_Zip_File_Query VARCHAR2(4000);
	v_Save_File_Code 	VARCHAR2(4000);
begin
	if apex_application.g_debug then
        apex_debug.info('Expand_Files_Job : %s %s', p_File_Name, p_Parent_Folder);
    end if;
	v_Init_Session_Code :=
			'apex_session.attach (' || 
			'p_app_id=>' || V('APP_ID') || ', ' || 
			'p_page_id=>' || V('APP_PAGE_ID') || ', ' || 
			'p_session_id=>' || V('APP_SESSION') || 
			');';
	
	v_Load_Zip_File_Query :=
			'select BLOB_CONTENT, FILENAME' || chr(10) ||
			'from APEX_APPLICATION_TEMP_FILES' || chr(10) ||
			'where LOWER(MIME_TYPE) = ''application/zip'' ' || chr(10) ||
			'and FILENAME = :search_value';
	v_Save_File_Code := 'INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID)' || chr(10) ||
						'VALUES	(:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);';
	Unzip_Parallel.Expand_Zip_Archive (
			p_Init_Session_Code => v_Init_Session_Code,
			p_Load_Zip_Query => v_Load_Zip_File_Query,
			p_Search_Value => p_File_Name,
			p_Folder_query => 'SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS',
			p_Filter_Path_Cond => 'instr(:path_name, ''__MACOSX/'') != 1',
			p_Save_File_Code => v_Save_File_Code,
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
end Expand_Files_Job;
/


CREATE OR REPLACE PROCEDURE Expand_Apex_Zip_Job (
	p_File_ID 			INTEGER,
	p_Parent_Folder 	VARCHAR2 DEFAULT '/Home'
)
AUTHID DEFINER
is -- for performance comparison with the provided library APEX_ZIP from Oracle
	v_zip_file blob;
	v_unzipped_file blob;
	v_files apex_zip.t_files;
	v_Full_Path 	VARCHAR2(4000);
	v_File_Name 	VARCHAR2(4000);
	v_Folder_query  VARCHAR2(4000);
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

ALTER SESSION ENABLE PARALLEL QUERY PARALLEL 4;
-- list content of a zip archive 
select T.file_path, T.file_name, T.file_date, T.mime_type, T.file_size
from demo_files S, 
	table(Unzip_Parallel.Pipe_unzip_files_parallel(
		S.FILE_CONTENT,
		cursor( select * from table(
			Unzip_Parallel.Pipe_Zip_Directory(
				S.FILE_CONTENT)) 
	)) 
) T 
where S.FILE_NAME = 'example.zip'
;

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

