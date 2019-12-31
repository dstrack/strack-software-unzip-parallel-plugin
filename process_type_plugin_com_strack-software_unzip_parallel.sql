prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1304835857079617
,p_default_application_id=>118060
,p_default_owner=>'STRACK_DEV'
);
end;
/
prompt --application/shared_components/plugins/process_type/com_strack_software_unzip_parallel
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(79548390634857226)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'COM.STRACK-SOFTWARE.UNZIP_PARALLEL'
,p_display_name=>'Unzip Parallel'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_api_version=>1
,p_execution_function=>'Unzip_Parallel_Plugin'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Process plug-in for reading a zip file from a table, storing all expanded files in one table and the folders for the files in a second table.',
'The table for the files has a least the two columns for file_name varchar2, file_content blob',
'and optionally file_date date, file_size number, mime_type varchar2(300), folder_id number.',
'The table for the folders has at least a folder_id number, parent_id number, folder_name varchar2.',
'When no folder definition is provided in the Folder Query attribute, full pathnames are stored in the file_name field of the files table.',
'Zip file larger than 5MB will be processed in parallel to reduce the processing time when parallel execution is enabled.'))
,p_version_identifier=>'1.0'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The library Unzip_Parallel calculates an array of offsets to the individual zipped files of the zipped archive.',
'The offsets are then used to expand all files without repeated sequential searching within the zipped archive.',
'This method causes a dramatic reduction of execution time for larger archives with tousends of files.',
'Chunks of the zipped archive can be executed in parallel by DBMS_SCHEDULER job slaves to further reduce execution time.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79635537621660522)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Init Session Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'PL/SQL code for initialization of session context.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79550403949021895)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Skip Empty Files'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>true
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'If set to Yes, then empty files are skipped and not saved.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79550703734025429)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Skip Dot Files'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>true
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'If set to Yes, then files with a file name that start with ''.'' are skipped and not saved.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81071975886142006)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Only Files'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>true
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'If set to Yes, empty directory entries are not created. Otherwise, set to No to include empty directory entries..'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(81072839294151049)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Encoding'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>30
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'AL32UTF8',
'',
'US8PC437',
'</pre>'))
,p_help_text=>'This is the encoding used to zip the file.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79548649419904236)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Load Zip File Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'SELECT FILE_CONTENT, FILE_NAME',
'FROM DEMO_FILES',
'WHERE MIME_TYPE = ''application/zip''',
'AND ID = :search_value',
'',
'select BLOB_CONTENT, FILENAME',
'from APEX_APPLICATION_TEMP_FILES',
'where MIME_TYPE = ''application/zip''',
'and name = :P1_UPLOAD_FILE',
'</pre>'))
,p_help_text=>'SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79640149604715237)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Search Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'P1_UPLOAD_FILE',
'</pre>'))
,p_help_text=>'Item with the search value for the bind variable in the Load Zip Query code.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79640664580729132)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Folder Query'
,p_attribute_type=>'SQL'
,p_is_required=>false
,p_sql_min_column_count=>3
,p_sql_max_column_count=>3
,p_is_translatable=>false
,p_examples=>'SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS'
,p_help_text=>'SQL Query for parameters to store the folders in a recursive tree table. When this field is empty, the :file_name will be prefixed with the path in the Save file code.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79641155018737979)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Filter Path Condition'
,p_attribute_type=>'PLSQL EXPRESSION BOOLEAN'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_examples=>'instr(:path_name, ''__MACOSX/'') != 1'
,p_help_text=>'Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79641596352748400)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Save File Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID)',
'VALUES (:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);',
'</pre>'))
,p_help_text=>'PL/SQL code to save an unzipped file from the zip archive. The bind variables :unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id deliver values to be saved.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79642070334759409)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Parent Folder'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'Home',
'',
'Home/Pictures',
'',
'&P1_DIRECTORY.',
'</pre>'))
,p_help_text=>'Pathname of the Directory where the unzipped files are saved.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(79687927038118694)
,p_plugin_id=>wwv_flow_api.id(79548390634857226)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Parallel Execution'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>true
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If set to Yes, then files are processed in parallel jobs.',
'When the zipped file is smaller that 5MB or when the zipped file is selected from APEX_APPLICATION_TEMP_FILES or WWV_FLOW_FILES, parallel processing is disabled.'))
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
