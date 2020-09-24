README:

Process plug-in for reading a zip file from a table, storing all expanded files 
in one table and the folders for the files in a second table.
The table for the files has a least the two columns for file_name varchar2, file_content blob
and optionally file_date date, file_size number, mime_type varchar2(300), folder_id number.
The table for the folders has at least a folder_id number, parent_id number, folder_name varchar2.
When no folder definition is provided in the Folder Query attribute, full pathnames are stored in the file_name field of the files table.
Zip file larger than 5MB will be processed in parallel to reduce the processing time when parallel execution is enabled.

----------
Installation 

The packages as_zip, unzip_parallel and the function unzip_parallel_plugin have to be installed in the application schema. 
execute the file unzip_parallel_plsql_code.sql to install the required database objects.
You can add the files to the installation script of you application.

A demo of the plugin can be found here:
https://apex.oracle.com/pls/apex/f?p=118060:LOGIN_DESKTOP
