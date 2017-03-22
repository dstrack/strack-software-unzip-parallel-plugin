/*
Copyright 2017 Dirk Strack

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

CREATE OR REPLACE function Unzip_Parallel_Plugin (
	p_process in apex_plugin.t_process,
	p_plugin  in apex_plugin.t_plugin )
return apex_plugin.t_process_exec_result
is
/* Process plug-in for reading a zip file from a table, storing all expanded files in one table and the folders for the files in a second table.
	The table for the files has a least the two columns for file_name varchar2, file_content blob
	and optionally file_date date, file_size number, mime_type varchar2(300), folder_id number.
	The table for the folders has at least a folder_id number, parent_id number, folder_name varchar2.
	When no folder definition is provided in the Folder Query attribute, full pathnames are stored in the file_name field of the files table.
	Zip file larger than 5MB will be processed in parallel to reduce the processing time when parallel execution is enabled.
*/
	v_exec_result apex_plugin.t_process_exec_result;
	v_Load_Zip_Query 	VARCHAR2(4000);
	v_Search_Value		VARCHAR2(4000);
	v_Execute_Parallel	BOOLEAN;
	v_message			VARCHAR2(2000);
	v_SQLCode 			INTEGER;
begin
	-- p_plugin.attribute_01:  Load Zip File Query
	-- p_plugin.attribute_03:  Search Item
	-- p_plugin.attribute_03:  Folder Query
	-- p_plugin.attribute_04:  Filter Path Condition
	-- p_plugin.attribute_05:  Save File Code
	-- p_plugin.attribute_06:  Parent Folder
	-- p_plugin.attribute_07:  Parallel Execution

	-- p_process.attribute_01: Init Session Code
	-- p_process.attribute_02: Skip Empty Files
	-- p_process.attribute_03: Skip Dot Files
	-- p_process.attribute_04: Only Files
	-- p_process.attribute_05: Encoding
	if apex_application.g_debug then
		apex_plugin_util.debug_process (
			p_plugin => p_plugin,
			p_process => p_process
		);
	end if;
	v_Load_Zip_Query:= replace(p_process.attribute_01, p_process.attribute_02, 'search_value' );
	v_Search_Value 	:= apex_util.get_session_state(p_process.attribute_02);
	v_Execute_Parallel := case when p_process.attribute_07 = 'Y' then true else false end;
	if instr(upper(v_Load_Zip_Query), 'APEX_APPLICATION_TEMP_FILES') > 0
	or instr(upper(v_Load_Zip_Query), 'WWV_FLOW_FILES') > 0 then
		v_Execute_Parallel := false;	-- this views are not accessable by background jobs
	end if;

	Unzip_Parallel.Expand_Zip_Archive (
			p_Init_Session_Code => p_plugin.attribute_01,
			p_Load_Zip_Query 	=> v_Load_Zip_Query,
			p_Search_Value 		=> v_Search_Value,
			p_Folder_query 		=> p_process.attribute_03,
			p_Filter_Path_Cond 	=> p_process.attribute_04,
			p_Save_File_Code 	=> p_process.attribute_05,
			p_Parent_Folder 	=> p_process.attribute_06,
			p_Skip_Empty 		=> case when p_plugin.attribute_02 = 'Y' then true else false end,
			p_Skip_Dot 			=> case when p_plugin.attribute_03 = 'Y' then true else false end,
			p_Only_Files		=> case when p_plugin.attribute_04 = 'Y' then true else false end,
			p_Execute_Parallel	=> v_Execute_Parallel,
			p_Encoding			=> p_plugin.attribute_05,
			p_SQLCode 			=> v_SQLCode,
			p_Message 			=> v_Message
	);
	if v_message IS NOT NULL then
		v_message := APEX_LANG.LANG (
			p_primary_text_string => v_Message,
			p_primary_language => 'en'
		);
		raise_application_error (Unzip_Parallel.c_App_Error_Code, v_message);
	end if;
	return v_exec_result;
end Unzip_Parallel_Plugin;
/


