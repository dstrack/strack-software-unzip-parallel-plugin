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
 
prompt APPLICATION 118060 - Unzip Parallel Plugin Demo
--
-- Application Export:
--   Application:     118060
--   Name:            Unzip Parallel Plugin Demo
--   Date and Time:   01:14 Tuesday December 31, 2019
--   Exported By:     DIRK
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     250161874321153
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    9
--     Computations:             2
--     Validations:              1
--     Processes:               11
--     Regions:                  5
--     Buttons:                  7
--     Dynamic Actions:          5
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               4
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included
--     Install scripts:          4

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'STRACK_DEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Unzip Parallel Plugin Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'UNZIP_PARALLEL_PLUGIN_DEMO118060')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'83F5118C8275C215741127F08D3E91B06188AFF4ED60336A5BF4333C45993099'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(79541399712447913)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Unzip Parallel Plugin Demo'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'DIRK'
,p_last_upd_yyyymmddhh24miss=>'20191230030236'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(79498795309447778)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79542573944447931)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Upload Zip Archives'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(79541131786447890)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(79541328133447910)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(58112629450359351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(58112771358359351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(58112837881359351)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(58113099587359352)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(79498482611447777)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(79498630243447777)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(79498701800447778)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(79636002720661943)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'PLUGIN_COM.STRACK-SOFTWARE.UNZIP_PARALLEL'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(79542493743447928)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(79542954317447932)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79498907971447782)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499060083447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499130462447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499188863447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499282087447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499449573447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499476677447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499621398447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499753498447787)
,p_page_template_id=>wwv_flow_api.id(79498907971447782)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79499803669447791)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79499903878447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500009762447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500085008447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500252106447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500298789447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500431852447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500485946447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500610609447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500680453447791)
,p_page_template_id=>wwv_flow_api.id(79499803669447791)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79500812892447791)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500937464447792)
,p_page_template_id=>wwv_flow_api.id(79500812892447791)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79500976164447792)
,p_page_template_id=>wwv_flow_api.id(79500812892447791)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79501121024447792)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501209849447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501288591447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501449689447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501505112447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501600217447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501692244447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501791218447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501886317447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79501990306447792)
,p_page_template_id=>wwv_flow_api.id(79501121024447792)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79502105488447792)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502264389447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502345715447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502382044447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502515194447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502572838447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502753174447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79502812525447793)
,p_page_template_id=>wwv_flow_api.id(79502105488447792)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79502918357447793)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503039877447793)
,p_page_template_id=>wwv_flow_api.id(79502918357447793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503102684447793)
,p_page_template_id=>wwv_flow_api.id(79502918357447793)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503255357447793)
,p_page_template_id=>wwv_flow_api.id(79502918357447793)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79503278535447793)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503383268447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503545872447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503609017447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503765632447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503846937447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79503958527447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504024572447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504114150447794)
,p_page_template_id=>wwv_flow_api.id(79503278535447793)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79504262104447794)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504326179447794)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504445539447794)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504510536447794)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504605426447795)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504696787447795)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504799848447795)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79504895248447795)
,p_page_template_id=>wwv_flow_api.id(79504262104447794)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79505010454447795)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79505095265447795)
,p_page_template_id=>wwv_flow_api.id(79505010454447795)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79505207827447795)
,p_page_template_id=>wwv_flow_api.id(79505010454447795)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(79505346703447795)
,p_page_template_id=>wwv_flow_api.id(79505010454447795)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79535903011447835)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79536008142447836)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79536068931447836)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79588163588596912)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79505435102447797)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79505522421447799)
,p_plug_template_id=>wwv_flow_api.id(79505435102447797)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79506916269447804)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79506977464447804)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79507107306447804)
,p_plug_template_id=>wwv_flow_api.id(79506977464447804)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79507231738447804)
,p_plug_template_id=>wwv_flow_api.id(79506977464447804)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79510554820447806)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79510598245447806)
,p_plug_template_id=>wwv_flow_api.id(79510554820447806)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79511398542447806)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79511531919447806)
,p_plug_template_id=>wwv_flow_api.id(79511398542447806)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79511649968447806)
,p_plug_template_id=>wwv_flow_api.id(79511398542447806)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79512260394447807)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79512302386447807)
,p_plug_template_id=>wwv_flow_api.id(79512260394447807)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79512420538447807)
,p_plug_template_id=>wwv_flow_api.id(79512260394447807)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79514359343447808)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79514462064447808)
,p_plug_template_id=>wwv_flow_api.id(79514359343447808)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79514555243447808)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79514856267447808)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79514921630447808)
,p_plug_template_id=>wwv_flow_api.id(79514856267447808)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79514971027447808)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79515095641447808)
,p_plug_template_id=>wwv_flow_api.id(79514971027447808)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79515212384447808)
,p_plug_template_id=>wwv_flow_api.id(79514971027447808)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79517157380447810)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79517229520447810)
,p_plug_template_id=>wwv_flow_api.id(79517157380447810)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79517269461447810)
,p_plug_template_id=>wwv_flow_api.id(79517157380447810)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79518299064447810)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79518802743447811)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(79518879281447811)
,p_plug_template_id=>wwv_flow_api.id(79518802743447811)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79527223628447820)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79528952491447824)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79531037690447826)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79531483988447827)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79531605048447828)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79532557994447828)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79533036236447829)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79533777209447829)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79533942131447829)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79534799327447830)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79534962729447830)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79519422425447812)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79519568430447813)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79521169439447815)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79523305962447816)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79523682756447816)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79523842526447817)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(79523842526447817)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79525082054447817)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79526117142447818)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79527006840447819)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79535423815447831)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79535495406447832)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79535605133447832)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79535691676447832)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79535820747447834)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(79536524823447837)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(79536729243447840)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(79536627768447838)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(79537101790447848)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(79504262104447794)
,p_default_dialog_template=>wwv_flow_api.id(79502918357447793)
,p_error_template=>wwv_flow_api.id(79500812892447791)
,p_printer_friendly_template=>wwv_flow_api.id(79504262104447794)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(79500812892447791)
,p_default_button_template=>wwv_flow_api.id(79536008142447836)
,p_default_region_template=>wwv_flow_api.id(79514971027447808)
,p_default_chart_template=>wwv_flow_api.id(79514971027447808)
,p_default_form_template=>wwv_flow_api.id(79514971027447808)
,p_default_reportr_template=>wwv_flow_api.id(79514971027447808)
,p_default_tabform_template=>wwv_flow_api.id(79514971027447808)
,p_default_wizard_template=>wwv_flow_api.id(79514971027447808)
,p_default_menur_template=>wwv_flow_api.id(79518299064447810)
,p_default_listr_template=>wwv_flow_api.id(79514971027447808)
,p_default_irr_template=>wwv_flow_api.id(79514555243447808)
,p_default_report_template=>wwv_flow_api.id(79523842526447817)
,p_default_label_template=>wwv_flow_api.id(79535495406447832)
,p_default_menu_template=>wwv_flow_api.id(79536524823447837)
,p_default_calendar_template=>wwv_flow_api.id(79536627768447838)
,p_default_list_template=>wwv_flow_api.id(79533036236447829)
,p_default_nav_list_template=>wwv_flow_api.id(79534962729447830)
,p_default_top_nav_list_temp=>wwv_flow_api.id(79534962729447830)
,p_default_side_nav_list_temp=>wwv_flow_api.id(79534799327447830)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(79511398542447806)
,p_default_dialogr_template=>wwv_flow_api.id(79506916269447804)
,p_default_option_label=>wwv_flow_api.id(79535495406447832)
,p_default_required_label=>wwv_flow_api.id(79535691676447832)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(79531483988447827)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#HAMMERJS_URL#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(79536818916447842)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(79536945223447843)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(79537047636447843)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79505681132447803)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79505966933447803)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79506226506447803)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79507311901447804)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79507848832447805)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79508565383447805)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79509138542447805)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79509398962447805)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79509613416447805)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79509788681447806)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79510715114447806)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79511787695447807)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79512909377447807)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79517499162447810)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79517765402447810)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79517877710447810)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79518478848447810)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79519004163447811)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79519602598447814)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79520446482447815)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79521667246447815)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79521788695447815)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79522200345447815)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79522652659447816)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79523445868447816)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79523924730447817)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79524109002447817)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79524474202447817)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79525229899447817)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79527289047447823)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79527486759447823)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79529287452447825)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79529495894447825)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79529901944447825)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79530359263447826)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79532060185447828)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79532655221447828)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79533509928447829)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79536247773447836)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79537250925447886)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79537398393447887)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79537590747447887)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79537849445447887)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79537994047447887)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79538389799447887)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79539085183447888)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79539563236447888)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79539707307447888)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79539918999447888)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79540149102447888)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79540417136447888)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(79540717457447888)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79505660798447801)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79505790149447803)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(79505681132447803)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79505996997447803)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(79505966933447803)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506120899447803)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(79505681132447803)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506362480447803)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(79506226506447803)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506370549447803)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(79505966933447803)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506483409447803)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(79505681132447803)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506614284447803)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(79505966933447803)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506746752447804)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(79505966933447803)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79506854120447804)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79505435102447797)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(79506226506447803)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507414467447804)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507479331447804)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507572740447804)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507735358447805)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507874703447805)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(79507848832447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79507995336447805)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(79507848832447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508126870447805)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(79507848832447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508204032447805)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(79507848832447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508326492447805)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508383355447805)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508660368447805)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508671162447805)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508862781447805)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79508940652447805)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509067652447805)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509169983447805)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(79509138542447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509352555447805)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(79509138542447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509517476447805)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509766467447806)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(79509613416447805)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79509906417447806)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510055762447806)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510163691447806)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(79509613416447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510171965447806)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510326884447806)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510445317447806)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79506977464447804)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510807490447806)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(79510715114447806)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79510924069447806)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(79510715114447806)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511047331447806)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(79510715114447806)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511098447447806)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511261689447806)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511278159447806)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79510554820447806)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511720746447806)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(79511398542447806)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79511886549447807)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(79511398542447806)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(79511787695447807)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512018344447807)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(79511398542447806)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512130195447807)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(79511398542447806)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(79511787695447807)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512484709447807)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512637466447807)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512739415447807)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79512802756447807)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513007332447807)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(79512909377447807)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513134724447807)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(79512909377447807)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513177085447807)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513350568447807)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513419583447807)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513544857447807)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513590911447807)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513741251447808)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513822622447808)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79513915003447808)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79514052699447808)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79514146977447808)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79514248439447808)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79512260394447807)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79514616614447808)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514555243447808)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79514716115447808)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514555243447808)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515338949447809)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515460045447809)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515488028447809)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515593434447809)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(79507311901447804)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515698732447809)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515823718447809)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79515880307447809)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516068096447809)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516162580447809)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516243444447809)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(79508565383447805)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516282372447809)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516387057447809)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(79509613416447805)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516561044447809)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516643774447809)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516706234447810)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516810259447810)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(79509613416447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79516924621447810)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(79509398962447805)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79517058768447810)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79514971027447808)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(79509788681447806)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79517448055447810)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79517647464447810)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(79517499162447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79517777480447810)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(79517765402447810)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79517978188447810)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(79517877710447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79518125338447810)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(79517877710447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79518206094447810)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79517157380447810)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(79517765402447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79518444235447810)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(79518299064447810)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79518588515447810)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(79518299064447810)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(79518478848447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79518703850447811)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(79518299064447810)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(79518478848447810)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519141769447811)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(79518802743447811)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(79519004163447811)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519212878447811)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79518802743447811)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(79519004163447811)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519286967447811)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(79518802743447811)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519731429447814)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519828761447814)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519928550447814)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79519993220447814)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520104918447814)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520258050447814)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520352623447814)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520487958447815)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(79520446482447815)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520647710447815)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(79520446482447815)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520747069447815)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520826996447815)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(79520446482447815)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79520954299447815)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521068402447815)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(79520446482447815)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521076646447815)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79519568430447813)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(79520446482447815)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521298486447815)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521464808447815)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521556793447815)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521728578447815)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(79521667246447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521917502447815)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(79521788695447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79521989330447815)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522112204447815)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(79521667246447815)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522300679447815)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(79522200345447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522466817447816)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(79522200345447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522530491447816)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(79522200345447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522743495447816)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(79522652659447816)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522798578447816)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(79522652659447816)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79522920178447816)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(79521667246447815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523035882447816)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523156293447816)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(79522200345447815)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523263996447816)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(79521169439447815)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523484278447816)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79523305962447816)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(79523445868447816)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523590382447816)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79523305962447816)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(79523445868447816)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79523996766447817)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(79523924730447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524250540447817)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(79524109002447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524291493447817)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(79524109002447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524436671447817)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(79524109002447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524578306447817)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(79524474202447817)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524702169447817)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(79524474202447817)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524836657447817)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(79523924730447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79524889842447817)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525060425447817)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79523842526447817)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(79524109002447817)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525342325447818)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525393596447818)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525527721447818)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525657256447818)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525732983447818)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525863832447818)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525896671447818)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79525998768447818)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(79525082054447817)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526243856447818)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526292368447818)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526459251447818)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526518390447818)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526603395447819)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(79519602598447814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526685835447819)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526838997447819)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79526968429447819)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(79526117142447818)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(79525229899447817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527084515447819)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(79527006840447819)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(79521667246447815)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527447911447823)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(79527289047447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527662298447823)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527674814447823)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527785316447823)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79527954262447823)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528018127447823)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528123541447823)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528260777447823)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528353663447823)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(79527289047447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528467173447823)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(79527289047447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528548283447823)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528604295447824)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(79527289047447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528675203447824)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79528790205447824)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(79527223628447820)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(79527289047447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529000447447824)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529139783447825)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529199411447825)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529403885447825)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529631105447825)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(79529495894447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529683203447825)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529808006447825)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79529975624447825)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(79529901944447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530094540447825)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(79529901944447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530220290447826)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(79529901944447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530433712447826)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(79530359263447826)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530480600447826)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(79530359263447826)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530572394447826)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530759637447826)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530826516447826)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(79529901944447825)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79530964491447826)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(79528952491447824)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531071442447826)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(79531037690447826)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531196762447827)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79531037690447826)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531328126447827)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79531037690447826)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531447266447827)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79531037690447826)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531757437447828)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531775149447828)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(79530359263447826)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79531886184447828)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(79530359263447826)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532092240447828)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(79532060185447828)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532180148447828)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532356308447828)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532463506447828)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(79531605048447828)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(79532060185447828)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532703293447828)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79532557994447828)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(79532655221447828)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532837784447828)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79532557994447828)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(79532655221447828)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79532892669447829)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79532557994447828)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(79532655221447828)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533102136447829)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(79529287452447825)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533242343447829)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533314203447829)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533410591447829)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533666689447829)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(79533509928447829)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79533749066447829)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79533036236447829)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(79533509928447829)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534025436447829)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534142943447829)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534169752447829)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534324701447829)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534373557447829)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(79527486759447823)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534492702447829)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534587719447829)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534733604447829)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(79533942131447829)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79534984590447830)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(79534962729447830)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79535090204447830)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(79534962729447830)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79535193771447830)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(79534962729447830)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79535307415447830)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(79534962729447830)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79536346508447836)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(79536068931447836)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(79536247773447836)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79536420906447836)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(79536068931447836)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(79536247773447836)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79537298208447886)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(79537250925447886)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79537477058447887)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(79537398393447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79537758592447887)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(79537590747447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79537931159447887)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(79537849445447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538090764447887)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(79537994047447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538215103447887)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(79537398393447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538362149447887)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(79537590747447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538487856447887)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(79538389799447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538588305447887)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(79538389799447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538740831447887)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(79538389799447887)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538782357447887)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(79537250925447886)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538928406447887)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(79537994047447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79538997369447888)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(79537849445447887)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79539191136447888)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(79539085183447888)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79539350273447888)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(79537250925447886)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79539416192447888)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(79537250925447886)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79539596047447888)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(79539563236447888)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79539844610447888)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(79539707307447888)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540039243447888)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(79539918999447888)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540178066447888)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(79540149102447888)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540288839447888)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(79540149102447888)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540528297447888)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(79540417136447888)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540578445447888)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(79539707307447888)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540828218447888)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(79540717457447888)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540885722447888)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(79540972915447888)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(79540717457447888)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/apex
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(79541399712447913)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
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
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','COM.STRACK-SOFTWARE.UNZIP_PARALLEL'),'')
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(79541228898447891)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(79498795309447778)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(79534799327447830)
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(79541131786447890)
,p_nav_bar_list_template_id=>wwv_flow_api.id(79531483988447827)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(79541228898447891)
,p_name=>'Upload Zip Archives'
,p_step_title=>'Upload Zip Archives'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DIRK'
,p_last_upd_yyyymmddhh24miss=>'20190402001921'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79587757915596908)
,p_plug_name=>'Folder'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79514971027447808)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "FOLDER_NAME" as title, ',
'       ''icon-ws-file'' as icon, ',
'       "ID" as value, ',
'       null as tooltip, ',
'       ''f?p=&APP_ID.:1:''||:APP_SESSION||''::::P1_SELECTED_NODE:''||"ID" as link ',
'from "#OWNER#"."DEMO_FOLDERS"',
'start with "PARENT_ID" is null',
'connect by prior "ID" = "PARENT_ID"',
'order siblings by "FOLDER_NAME"'))
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No data found.'
,p_attribute_02=>'S'
,p_attribute_03=>'P1_SELECTED_NODE'
,p_attribute_04=>'N'
,p_attribute_07=>'APEX_TREE'
,p_attribute_08=>'a-Icon'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79591370938624629)
,p_name=>'Files'
,p_template=>wwv_flow_api.id(79514971027447808)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FILE_NAME,',
'       FILE_DATE,',
'       FILE_SIZE,',
'       MIME_TYPE',
'  from DEMO_FILES',
'where FOLDER_ID = :P1_SELECTED_NODE',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79523842526447817)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79619796841052457)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79611146075020598)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79611499210020599)
,p_query_column_id=>3
,p_column_alias=>'FILE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'File Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79611927764020600)
,p_query_column_id=>4
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>4
,p_column_heading=>'File Size'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79612328533020600)
,p_query_column_id=>5
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Mime Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79609488920989002)
,p_plug_name=>'Controls'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(79511398542447806)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81086805344525698)
,p_name=>'Unzip Progress'
,p_region_name=>'PROCESS_PROGRESS'
,p_template=>wwv_flow_api.id(79514971027447808)
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MESSAGE, TIME_REMAINING, TIME_ELAPSED, PERCENT',
'FROM VUNZIP_PARALLEL_PROGRESS',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79523842526447817)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'waiting for progress results'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81087389567525714)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81087776022525714)
,p_query_column_id=>2
,p_column_alias=>'TIME_REMAINING'
,p_column_display_sequence=>2
,p_column_heading=>'Time Remaining'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40630346525105301)
,p_query_column_id=>3
,p_column_alias=>'TIME_ELAPSED'
,p_column_display_sequence=>3
,p_column_heading=>'Time Elapsed'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81088646999525715)
,p_query_column_id=>4
,p_column_alias=>'PERCENT'
,p_column_display_sequence=>4
,p_column_heading=>'Percent'
,p_column_format=>'PCT_GRAPH:#cccccc:#777777:150'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71997810897922527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(81086805344525698)
,p_button_name=>'CANCEL_PROGRESS'
,p_button_static_id=>'CANCEL_PROGRESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79535903011447835)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-close'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79588064400596910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79587757915596908)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(79588163588596912)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79589581399596930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79587757915596908)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(79588163588596912)
,p_button_image_alt=>'Expand All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79610202385000723)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79609488920989002)
,p_button_name=>'UPLOAD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79536008142447836)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload File'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79581862737491029)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79609488920989002)
,p_button_name=>'DELETE_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79536008142447836)
,p_button_image_alt=>'Delete All'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71997924709922528)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(81086805344525698)
,p_button_name=>'REFRESH_PROGRESS'
,p_button_static_id=>'REFRESH_PROGRESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79535903011447835)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81129765610398934)
,p_branch_name=>'Show results and request UNZIP'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.:UNZIP:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(79610202385000723)
,p_branch_sequence=>10
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>':P1_UNZIP = ''Y'' and :P1_SHOW_PROGRESS = ''Y'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81162716249336930)
,p_branch_name=>'Show results'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71998376603922533)
,p_name=>'P1_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81086805344525698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79587501741583221)
,p_name=>'P1_SELECTED_NODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79608904473945520)
,p_name=>'P1_UPLOAD_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79634730472629857)
,p_name=>'P1_UNZIP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_item_default=>'Y'
,p_prompt=>'Expand Zip File'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79661067651748439)
,p_name=>'P1_DIRECTORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_prompt=>'Directory'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81163026615336933)
,p_name=>'P1_SHOW_PROGRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_item_default=>'Y'
,p_prompt=>'Show progress'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135380762508256749)
,p_name=>'P1_ZIP_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79609488920989002)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(79604009698909496)
,p_computation_sequence=>10
,p_computation_item=>'P1_SELECTED_NODE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'APEX_UTIL.GET_PREFERENCE(''P1_SELECTED_NODE'', :APP_USER)'
,p_compute_when=>'P1_SELECTED_NODE'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(79670081226675422)
,p_computation_sequence=>10
,p_computation_item=>'P1_DIRECTORY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PATH',
'FROM (',
'SELECT "ID", SYS_CONNECT_BY_PATH(TRANSLATE("FOLDER_NAME", ''/'', ''-''), ''/'') PATH',
'FROM (SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS) T ',
'START WITH  "PARENT_ID" IS NULL',
'CONNECT BY "PARENT_ID" = PRIOR "ID")',
'WHERE ID = :P1_SELECTED_NODE',
'',
''))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(81131002010435423)
,p_validation_name=>'P1_UPLOAD_FILE - not null'
,p_validation_sequence=>10
,p_validation=>'P1_UPLOAD_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(79610202385000723)
,p_associated_item=>wwv_flow_api.id(79608904473945520)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79588714743596926)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(79588064400596910)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79589237947596929)
,p_event_id=>wwv_flow_api.id(79588714743596926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79587757915596908)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79590046564596930)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(79589581399596930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79590540836596930)
,p_event_id=>wwv_flow_api.id(79590046564596930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79587757915596908)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81162856108336931)
,p_name=>'Hide Unzip Progress'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81162947232336932)
,p_event_id=>wwv_flow_api.id(81162856108336931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81086805344525698)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(81098402716546840)
,p_name=>'Parallel Process Unzip'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILENAME ',
'FROM APEX_APPLICATION_TEMP_FILES',
'WHERE LOWER(MIME_TYPE) = ''application/zip''',
'AND FILENAME = :P1_ZIP_FILENAME ',
'AND :REQUEST = ''UNZIP'''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81098797601546843)
,p_event_id=>wwv_flow_api.id(81098402716546840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var progress_timer = null;',
'function start_progress_update(seconds) {',
'	if (progress_timer) {',
'		clearTimeout(progress_timer);',
'	}				',
'	progress_timer = setTimeout( function() {',
'		progress_timer = null;',
'		if ($(''#PROCESS_PROGRESS:visible'').length > 0) {',
'			$(''#REFRESH_PROGRESS'').click();',
'			start_progress_update(2);',
'		}',
'	}, 1000 * seconds);	',
'}',
'',
'function stop_progress_update(seconds) {',
'	if (progress_timer) {',
'		clearTimeout(progress_timer);',
'	}				',
'	progress_timer = setTimeout( function() {',
'		progress_timer = null;',
'		if ($(''#PROCESS_PROGRESS:visible'').length > 0) {',
'			$(''#CANCEL_PROGRESS'').click();',
'		}',
'	}, 1000 * seconds);	',
'}',
'',
'',
'apex.server.process ( ',
'	"Unzip_Parallel_Job", { ',
'		pageItems: "#P1_ZIP_FILENAME,#P1_DIRECTORY,#P1_UNZIP,#P1_MESSAGE" ',
'	},',
'	{',
'		success: function( pData ) {',
'			$s("P1_MESSAGE", pData);',
'            stop_progress_update();',
'		},',
'      	dataType: "text"',
'	}',
');',
'',
'start_progress_update(1);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(81119454346307610)
,p_event_id=>wwv_flow_api.id(81098402716546840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81086805344525698)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71998026757922529)
,p_name=>'REFRESH_PROGRESS'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(71997924709922528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71998131112922530)
,p_event_id=>wwv_flow_api.id(71998026757922529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81086805344525698)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79670342929707767)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Selected Node'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(ID)',
'into :P1_SELECTED_NODE ',
'from DEMO_FOLDERS ',
'where PARENT_ID IS NULL;',
'if :P1_SELECTED_NODE  IS NULL then ',
'    APEX_UTIL.REMOVE_PREFERENCE(',
'        p_preference => ''P1_SELECTED_NODE'', ',
'        p_user => :APP_USER);',
'end if;'))
,p_process_when=>'select 1 from DEMO_FOLDERS where ID = :P1_SELECTED_NODE'
,p_process_when_type=>'NOT_EXISTS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79603637491892330)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_USER_PREFERENCES'
,p_process_name=>'Save Selected Node'
,p_attribute_01=>'SET_PREFERENCE_TO_ITEM_VALUE'
,p_attribute_02=>'P1_SELECTED_NODE'
,p_attribute_03=>'P1_SELECTED_NODE'
,p_process_when=>'select 1 from DEMO_FOLDERS where ID = :P1_SELECTED_NODE'
,p_process_when_type=>'EXISTS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79581732072491028)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_COM.STRACK-SOFTWARE.UNZIP_PARALLEL'
,p_process_name=>'Unzip_Parallel'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BLOB_CONTENT, FILENAME',
'  from APEX_APPLICATION_TEMP_FILES',
' where MIME_TYPE = ''application/zip'' ',
' and name = :P1_UPLOAD_FILE',
'',
''))
,p_attribute_02=>'P1_UPLOAD_FILE'
,p_attribute_03=>'select ID, PARENT_ID, FOLDER_NAME from DEMO_FOLDERS'
,p_attribute_04=>'instr(:path_name, ''__MACOSX/'') != 1'
,p_attribute_05=>'INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID) VALUES (:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);'
,p_attribute_06=>'&P1_DIRECTORY.'
,p_attribute_07=>'Y'
,p_process_error_message=>'#SQLERRM#'
,p_process_when_button_id=>wwv_flow_api.id(79610202385000723)
,p_process_when=>'P1_SHOW_PROGRESS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'N'
,p_process_success_message=>'file has been expanded.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(140793038726775204)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Copy Zip Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FILENAME',
' into :P1_ZIP_FILENAME',
'  from APEX_APPLICATION_TEMP_FILES',
' where name = :P1_UPLOAD_FILE;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79610202385000723)
,p_process_when=>'P1_SHOW_PROGRESS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79581922210491030)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete all'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from DEMO_FILES;',
'delete from DEMO_FOLDERS;',
'insert into demo_folders (folder_name) values(''Home'');',
'commit;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79581862737491029)
,p_process_success_message=>'All files and folders have been deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81162637549336929)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Finish Unzip'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from APEX_APPLICATION_TEMP_FILES',
' where name = :P1_ZIP_FILENAME;',
':P1_ZIP_FILENAME := NULL;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(71997810897922527)
,p_process_success_message=>'File has been expanded.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71998585452922535)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Unzip_Parallel_Job'
,p_process_sql_clob=>'Expand_Files_Job(:P1_ZIP_FILENAME, :P1_DIRECTORY);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(79541228898447891)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Unzip Parallel Plugin Demo - Log In'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(79500812892447791)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DIRK'
,p_last_upd_yyyymmddhh24miss=>'20170322043014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79541757213447922)
,p_plug_name=>'Unzip Parallel Plugin Demo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79514971027447808)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79542017212447926)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79541757213447922)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79536008142447836)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79541851293447925)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79541757213447922)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79541904521447926)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79541757213447922)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79535495406447832)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79542262688447928)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79542167299447927)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79542465907447928)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79542314089447928)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(79688763819208918)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP TABLE DEMO_FILES;',
'DROP TABLE DEMO_FOLDERS;',
'DROP SEQUENCE DEMO_FOLDERS_SEQ;',
'DROP SEQUENCE DEMO_FILES_SEQ;',
'',
'DROP PACKAGE as_zip;',
'DROP PACKAGE unzip_parallel;',
'DROP FUNCTION unzip_parallel_plugin;',
'DROP VIEW VUNZIP_PARALLEL_PROGRESS;',
'DROP PROCEDURE Expand_Demo_Files_Job;',
'DROP PROCEDURE Expand_Apex_Zip_Job;'))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
end;
/
prompt --application/deployment/install/install_as_zip
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(81192353833149321)
,p_install_id=>wwv_flow_api.id(79688763819208918)
,p_name=>'as_zip'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_Schema_Name VARCHAR2(128) := SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'');',
'	v_use_utl_file VARCHAR2(128);',
'	v_stat VARCHAR2(32767);',
'begin',
'	SELECT case when COUNT(*) > 0 then ''TRUE'' else ''FALSE'' end INTO v_use_utl_file',
'	FROM ALL_TAB_PRIVS ',
'	WHERE TABLE_NAME = ''UTL_FILE'' ',
'	AND TABLE_SCHEMA = ''SYS'' ',
'	AND GRANTEE IN (v_Schema_Name, ''PUBLIC'')',
'	AND PRIVILEGE = ''EXECUTE'';',
'	/* generate the package as_zip_spec to enable conditional compilation */',
'',
'	v_stat := ''',
'	CREATE OR REPLACE PACKAGE as_zip_specs AUTHID DEFINER ',
'	IS',
'		c_use_utl_file 			CONSTANT BOOLEAN	:= '' || v_use_utl_file || '';',
'	END as_zip_specs;',
'	'';',
'	EXECUTE IMMEDIATE v_Stat;',
'    dbms_output.put_line(v_Stat);',
'	v_stat := ''',
'	CREATE OR REPLACE PACKAGE BODY as_zip_specs',
'	IS',
'    BEGIN -- package for specifications of the available libraries in the current installation schema',
'        NULL;',
'    END as_zip_specs;',
'    '';',
'	EXECUTE IMMEDIATE v_Stat;',
'end;',
'/',
'',
'CREATE OR REPLACE package as_zip',
'AUTHID DEFINER',
'is',
'/**********************************************',
'**',
'** Author: Anton Scheffer',
'** Date: 25-01-2012',
'** Website: http://technology.amis.nl/blog',
'**',
'** Changelog:',
'**   Date: 22-03-2017 by Dirk Strack',
'**     improve performance by using nocopy compiler hints',
'**     added subtype t_path_name is varchar2(32767) for Oracle 12',
'**     added procedure get_file_date_list to return arrays with file names, dates and offsets.',
'**     added variant of function get_file with parameter p_offset for fast direct access.',
'**   Date: 12-03-2017 by Dirk Strack',
'**     added parameter p_date to add1file',
'**     added check for file size limit to add1file and finish_zip',
'**   Date: 04-08-2016',
'**     fixed endless loop for empty/null zip file',
'**   Date: 28-07-2016',
'**     added support for defate64 (this only works for zip-files created with 7Zip)',
'**   Date: 31-01-2014',
'**     file limit increased to 4GB',
'**   Date: 29-04-2012',
'**    fixed bug for large uncompressed files, thanks Morten Braten',
'**   Date: 21-03-2012',
'**     Take CRC32, compressed length and uncompressed length from',
'**     Central file header instead of Local file header',
'**   Date: 17-02-2012',
'**     Added more support for non-ascii filenames',
'**   Date: 25-01-2012',
'**     Added MIT-license',
'**     Some minor improvements',
'******************************************************************************',
'******************************************************************************',
'Copyright (C) 2010,2011 by Anton Scheffer',
'',
'Permission is hereby granted, free of charge, to any person obtaining a copy',
'of this software and associated documentation files (the "Software"), to deal',
'in the Software without restriction, including without limitation the rights',
'to use, copy, modify, merge, publish, distribute, sublicense, and/or sell',
'copies of the Software, and to permit persons to whom the Software is',
'furnished to do so, subject to the following conditions:',
'',
'The above copyright notice and this permission notice shall be included in',
'all copies or substantial portions of the Software.',
'',
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR',
'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,',
'FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE',
'AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER',
'LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,',
'OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN',
'THE SOFTWARE.',
'',
'******************************************************************************',
'******************************************** */',
'',
'$IF DBMS_DB_VERSION.VERSION >= 12 $THEN',
'  subtype t_path_name is varchar2(32767);',
'$ELSE',
'  subtype t_path_name is clob;',
'$END',
'  type file_list is table of t_path_name;',
'  type date_list is table of date;',
'  type foffset_list is table of integer;',
'  g_size_limit integer := power(2, 32);',
'  g_size_limit_sqlcode integer := -20200;',
'  g_size_limit_message varchar2(200) := ''Maximum file size of 4GB exceeded'';',
'  g_access_utl_file_sqlcode integer := -20201;',
'  g_access_utl_file_message varchar2(200) := ''Function is not enabled. Execute privilege on sys.utl_file to owner is required'';',
'--',
'  function file2blob',
'    ( p_dir varchar2',
'    , p_file_name varchar2',
'    )',
'  return blob;',
'--',
'  function get_file_list',
'    ( p_dir varchar2',
'    , p_zip_file varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return file_list;',
'--',
'  function get_file_list',
'    ( p_zipped_blob blob',
'    , p_encoding varchar2 := null',
'    )',
'  return file_list;',
'--',
'  function get_file',
'    ( p_dir varchar2',
'    , p_zip_file varchar2',
'    , p_file_name varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return blob;',
'--',
'  function get_file',
'    ( p_zipped_blob blob',
'    , p_file_name varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return blob;',
'--',
'  procedure add1file',
'    ( p_zipped_blob in out nocopy blob',
'    , p_name varchar2',
'    , p_content blob',
'	, p_date date default sysdate',
'    );',
'--',
'  procedure finish_zip( p_zipped_blob in out nocopy blob );',
'--',
'  procedure save_zip',
'    ( p_zipped_blob blob',
'    , p_dir varchar2 := ''MY_DIR''',
'    , p_filename varchar2 := ''my.zip''',
'    );',
'--',
'  procedure get_file_date_list',
'    ( p_zipped_blob 	in blob',
'    , p_encoding 		in varchar2 := null',
'    , p_file_list		out nocopy file_list',
'    , p_date_list		out nocopy date_list',
'    , p_offset_list		out nocopy foffset_list',
'    );',
'--',
'  function get_file',
'    ( p_zipped_blob blob',
'    , p_file_name varchar2',
'    , p_offset integer',
'    )',
'  return blob;',
'end;',
'/',
'--',
'/*',
'declare',
'  g_zipped_blob blob;',
'begin',
'  as_zip.add1file( g_zipped_blob, ''test4.txt'', null ); -- a empty file',
'  as_zip.add1file( g_zipped_blob, ''dir1/test1.txt'', utl_raw.cast_to_raw( q''<A file with some more text, stored in a subfolder which isn''t added>'' ) );',
'  as_zip.add1file( g_zipped_blob, ''test1234.txt'', utl_raw.cast_to_raw( ''A small file'' ) );',
'  as_zip.add1file( g_zipped_blob, ''dir2/'', null ); -- a folder',
'  as_zip.add1file( g_zipped_blob, ''dir3/'', null ); -- a folder',
'  as_zip.add1file( g_zipped_blob, ''dir3/test2.txt'', utl_raw.cast_to_raw( ''A small filein a previous created folder'' ) );',
'  as_zip.finish_zip( g_zipped_blob );',
'  as_zip.save_zip( g_zipped_blob, ''MY_DIR'', ''my.zip'' );',
'  dbms_lob.freetemporary( g_zipped_blob );',
'end;',
'--',
'declare',
'  zip_files as_zip.file_list;',
'begin',
'  zip_files  := as_zip.get_file_list( ''MY_DIR'', ''my.zip'' );',
'  for i in zip_files.first() .. zip_files.last',
'  loop',
'    dbms_output.put_line( zip_files( i ) );',
'    dbms_output.put_line( utl_raw.cast_to_varchar2( as_zip.get_file( ''MY_DIR'', ''my.zip'', zip_files( i ) ) ) );',
'  end loop;',
'end;',
'',
'declare',
'  g_zipped_blob blob;',
'  g_file_list		as_zip.file_list;',
'  g_date_list		as_zip.date_list;',
'  g_offset_list 	as_zip.foffset_list;',
'  g_unzipped_file blob;',
'begin',
'  as_zip.add1file( g_zipped_blob, ''test4.txt'', null ); -- a empty file',
'  as_zip.add1file( g_zipped_blob, ''dir1/test1.txt'', utl_raw.cast_to_raw( q''<A file with some more text, stored in a subfolder which isn''t added>'' ) );',
'  as_zip.add1file( g_zipped_blob, ''test1234.txt'', utl_raw.cast_to_raw( ''A small file'' ) );',
'  as_zip.add1file( g_zipped_blob, ''dir2/'', null ); -- a folder',
'  as_zip.add1file( g_zipped_blob, ''dir3/'', null ); -- a folder',
'  as_zip.add1file( g_zipped_blob, ''dir3/test2.txt'', utl_raw.cast_to_raw( ''A small file in a previous created folder'' ) );',
'  as_zip.finish_zip( g_zipped_blob );',
'',
'  as_zip.get_file_date_list ( g_zipped_blob, null, g_file_list, g_date_list, g_offset_list);',
'  for i in 1 .. g_file_list.count loop',
'  	g_unzipped_file := as_zip.get_file (g_zipped_blob, g_file_list(i), g_offset_list(i));',
'    dbms_output.put_line(''Pathname : '' || g_file_list(i));',
'    dbms_output.put_line(''Date     : '' || g_date_list(i));',
'    dbms_output.put_line(''Offset   : '' || g_offset_list(i));',
'    dbms_output.put_line(utl_raw.cast_to_varchar2( g_unzipped_file ));',
'  end loop;',
'  dbms_lob.freetemporary( g_zipped_blob );',
'end;',
'',
'*/',
'',
'CREATE OR REPLACE package body as_zip',
'is',
'--',
'  c_LOCAL_FILE_HEADER        constant raw(4) := hextoraw( ''504B0304'' ); -- Local file header signature',
'  c_END_OF_CENTRAL_DIRECTORY constant raw(4) := hextoraw( ''504B0506'' ); -- End of central directory signature',
'--',
'  function blob2num( p_blob blob, p_len integer, p_pos integer )',
'  return number',
'  is',
'    rv number;',
'  begin',
'    rv := utl_raw.cast_to_binary_integer( dbms_lob.substr( p_blob, p_len, p_pos ), utl_raw.little_endian );',
'    if rv < 0',
'    then',
'      rv := rv + 4294967296;',
'    end if;',
'    return rv;',
'  end;',
'--',
'  function raw2varchar2( p_raw raw, p_encoding varchar2 )',
'  return varchar2',
'  is',
'  begin',
'    return coalesce( utl_i18n.raw_to_char( p_raw, p_encoding )',
'                   , utl_i18n.raw_to_char( p_raw, utl_i18n.map_charset( p_encoding, utl_i18n.GENERIC_CONTEXT, utl_i18n.IANA_TO_ORACLE ) )',
'                   );',
'  end;',
'--',
'  function little_endian( p_big number, p_bytes pls_integer := 4 )',
'  return raw',
'  is',
'    t_big number := p_big;',
'  begin',
'    if t_big > 2147483647',
'    then',
'      t_big := t_big - 4294967296;',
'    end if;',
'    return utl_raw.substr( utl_raw.cast_from_binary_integer( t_big, utl_raw.little_endian ), 1, p_bytes );',
'  end;',
'--',
'  function file2blob',
'    ( p_dir varchar2',
'    , p_file_name varchar2',
'    )',
'  return blob',
'  is',
'    file_lob bfile;',
'    file_blob blob;',
'  begin',
'    file_lob := bfilename( p_dir, p_file_name );',
'    dbms_lob.open( file_lob, dbms_lob.file_readonly );',
'    dbms_lob.createtemporary( file_blob, true );',
'    dbms_lob.loadfromfile( file_blob, file_lob, dbms_lob.lobmaxsize );',
'    dbms_lob.close( file_lob );',
'    return file_blob;',
'  exception',
'    when others then',
'      if dbms_lob.isopen( file_lob ) = 1',
'      then',
'        dbms_lob.close( file_lob );',
'      end if;',
'      if dbms_lob.istemporary( file_blob ) = 1',
'      then',
'        dbms_lob.freetemporary( file_blob );',
'      end if;',
'      raise;',
'  end;',
'--',
'  function get_file_list',
'    ( p_zipped_blob blob',
'    , p_encoding varchar2 := null',
'    )',
'  return file_list',
'  is',
'    t_ind integer;',
'    t_hd_ind integer;',
'    t_rv file_list;',
'    t_encoding varchar2(32767);',
'  begin',
'    t_ind := nvl( dbms_lob.getlength( p_zipped_blob ), 0 ) - 21;',
'    loop',
'      exit when t_ind < 1 or dbms_lob.substr( p_zipped_blob, 4, t_ind ) = c_END_OF_CENTRAL_DIRECTORY;',
'      t_ind := t_ind - 1;',
'    end loop;',
'--',
'    if t_ind <= 0',
'    then',
'      return null;',
'    end if;',
'--',
'    t_hd_ind := blob2num( p_zipped_blob, 4, t_ind + 16 ) + 1;',
'    t_rv := file_list();',
'    t_rv.extend( blob2num( p_zipped_blob, 2, t_ind + 10 ) );',
'    for i in 1 .. blob2num( p_zipped_blob, 2, t_ind + 8 )',
'    loop',
'      if p_encoding is null',
'      then',
'        if utl_raw.bit_and( dbms_lob.substr( p_zipped_blob, 1, t_hd_ind + 9 ), hextoraw( ''08'' ) ) = hextoraw( ''08'' )',
'        then',
'          t_encoding := ''AL32UTF8''; -- utf8',
'        else',
'          t_encoding := ''US8PC437''; -- IBM codepage 437',
'        end if;',
'      else',
'        t_encoding := p_encoding;',
'      end if;',
'      t_rv( i ) := raw2varchar2',
'                     ( dbms_lob.substr( p_zipped_blob',
'                                      , blob2num( p_zipped_blob, 2, t_hd_ind + 28 )',
'                                      , t_hd_ind + 46',
'                                      )',
'                     , t_encoding',
'                     );',
'      t_hd_ind := t_hd_ind + 46',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 28 )  -- File name length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 30 )  -- Extra field length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 32 ); -- File comment length',
'    end loop;',
'--',
'    return t_rv;',
'  end;',
'--',
'  function get_file_list',
'    ( p_dir varchar2',
'    , p_zip_file varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return file_list',
'  is',
'  begin',
'    return get_file_list( file2blob( p_dir, p_zip_file ), p_encoding );',
'  end;',
'--',
'  function get_file',
'    ( p_zipped_blob blob',
'    , p_file_name varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return blob',
'  is',
'    t_tmp blob;',
'    t_ind integer;',
'    t_hd_ind integer;',
'    t_fl_ind integer;',
'    t_encoding varchar2(32767);',
'    t_len integer;',
'  begin',
'    t_ind := nvl( dbms_lob.getlength( p_zipped_blob ), 0 ) - 21;',
'    loop',
'      exit when t_ind < 1 or dbms_lob.substr( p_zipped_blob, 4, t_ind ) = c_END_OF_CENTRAL_DIRECTORY;',
'      t_ind := t_ind - 1;',
'    end loop;',
'--',
'    if t_ind <= 0',
'    then',
'      return null;',
'    end if;',
'--',
'    t_hd_ind := blob2num( p_zipped_blob, 4, t_ind + 16 ) + 1;',
'    for i in 1 .. blob2num( p_zipped_blob, 2, t_ind + 8 )',
'    loop',
'      if p_encoding is null',
'      then',
'        if utl_raw.bit_and( dbms_lob.substr( p_zipped_blob, 1, t_hd_ind + 9 ), hextoraw( ''08'' ) ) = hextoraw( ''08'' )',
'        then',
'          t_encoding := ''AL32UTF8''; -- utf8',
'        else',
'          t_encoding := ''US8PC437''; -- IBM codepage 437',
'        end if;',
'      else',
'        t_encoding := p_encoding;',
'      end if;',
'      if p_file_name = raw2varchar2',
'                         ( dbms_lob.substr( p_zipped_blob',
'                                          , blob2num( p_zipped_blob, 2, t_hd_ind + 28 )',
'                                          , t_hd_ind + 46',
'                                          )',
'                         , t_encoding',
'                         )',
'      then',
'        t_len := blob2num( p_zipped_blob, 4, t_hd_ind + 24 ); -- uncompressed length',
'        if t_len = 0',
'        then',
'          if substr( p_file_name, -1 ) in ( ''/'', ''\'' )',
'          then  -- directory/folder',
'            return null;',
'          else -- empty file',
'            return empty_blob();',
'          end if;',
'        end if;',
'--',
'        if dbms_lob.substr( p_zipped_blob, 2, t_hd_ind + 10 ) in ( hextoraw( ''0800'' ) -- deflate',
'                                                                 , hextoraw( ''0900'' ) -- deflate64',
'                                                                 )',
'        then',
'          t_fl_ind := blob2num( p_zipped_blob, 4, t_hd_ind + 42 );',
'          t_tmp := hextoraw( ''1F8B0800000000000003'' ); -- gzip header',
'          dbms_lob.copy( t_tmp',
'                       , p_zipped_blob',
'                       ,  blob2num( p_zipped_blob, 4, t_hd_ind + 20 )',
'                       , 11',
'                       , t_fl_ind + 31',
'                       + blob2num( p_zipped_blob, 2, t_fl_ind + 27 ) -- File name length',
'                       + blob2num( p_zipped_blob, 2, t_fl_ind + 29 ) -- Extra field length',
'                       );',
'          dbms_lob.append( t_tmp, utl_raw.concat( dbms_lob.substr( p_zipped_blob, 4, t_hd_ind + 16 ) -- CRC32',
'                                                , little_endian( t_len ) -- uncompressed length',
'                                                )',
'                         );',
'          return utl_compress.lz_uncompress( t_tmp );',
'        end if;',
'--',
'        if dbms_lob.substr( p_zipped_blob, 2, t_hd_ind + 10 ) = hextoraw( ''0000'' ) -- The file is stored (no compression)',
'        then',
'          t_fl_ind := blob2num( p_zipped_blob, 4, t_hd_ind + 42 );',
'          dbms_lob.createtemporary( t_tmp, true );',
'          dbms_lob.copy( t_tmp',
'                       , p_zipped_blob',
'                       , t_len',
'                       , 1',
'                       , t_fl_ind + 31',
'                       + blob2num( p_zipped_blob, 2, t_fl_ind + 27 ) -- File name length',
'                       + blob2num( p_zipped_blob, 2, t_fl_ind + 29 ) -- Extra field length',
'                       );',
'          return t_tmp;',
'        end if;',
'      end if;',
'      t_hd_ind := t_hd_ind + 46',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 28 )  -- File name length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 30 )  -- Extra field length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 32 ); -- File comment length',
'    end loop;',
'--',
'    return null;',
'  end;',
'--',
'  function get_file',
'    ( p_dir varchar2',
'    , p_zip_file varchar2',
'    , p_file_name varchar2',
'    , p_encoding varchar2 := null',
'    )',
'  return blob',
'  is',
'  begin',
'    return get_file( file2blob( p_dir, p_zip_file ), p_file_name, p_encoding );',
'  end;',
'--',
'  procedure add1file',
'    ( p_zipped_blob in out nocopy blob',
'    , p_name varchar2',
'    , p_content blob',
'	, p_date date default sysdate',
'    )',
'  is',
'    t_now timestamp with time zone;',
'    t_blob blob;',
'    t_len integer;',
'    t_clen integer;',
'    t_crc32 raw(4) := hextoraw( ''00000000'' );',
'    t_compressed boolean := false;',
'    t_name raw(32767);',
'  begin',
'    t_now := cast(nvl(p_date, sysdate) as timestamp with local time zone) at time zone ''UTC'';',
'    t_len := nvl( dbms_lob.getlength( p_content ), 0 );',
'    if t_len > 0',
'    then',
'      t_blob := utl_compress.lz_compress( p_content );',
'      t_clen := dbms_lob.getlength( t_blob ) - 18;',
'      t_compressed := t_clen < t_len;',
'      t_crc32 := dbms_lob.substr( t_blob, 4, t_clen + 11 );',
'    end if;',
'    if not t_compressed',
'    then',
'      t_clen := t_len;',
'      t_blob := p_content;',
'    end if;',
'    if p_zipped_blob is null',
'    then',
'      dbms_lob.createtemporary( p_zipped_blob, true );',
'    end if;',
'    t_name := utl_i18n.string_to_raw( compose(p_name), ''AL32UTF8'' );',
'    dbms_lob.append( p_zipped_blob',
'                   , utl_raw.concat( c_LOCAL_FILE_HEADER -- Local file header signature',
'                                   , hextoraw( ''1400'' )  -- version 2.0',
'                                   , case when t_name = utl_i18n.string_to_raw( p_name, ''US8PC437'' )',
'                                       then hextoraw( ''0000'' ) -- no General purpose bits',
'                                       else hextoraw( ''0008'' ) -- set Language encoding flag (EFS)',
'                                     end',
'                                   , case when t_compressed',
'                                        then hextoraw( ''0800'' ) -- deflate',
'                                        else hextoraw( ''0000'' ) -- stored',
'                                     end',
'                                   , little_endian( to_number( to_char( t_now, ''ss'' ) ) / 2',
'                                                  + to_number( to_char( t_now, ''mi'' ) ) * 32',
'                                                  + to_number( to_char( t_now, ''hh24'' ) ) * 2048',
'                                                  , 2',
'                                                  ) -- File last modification time',
'                                   , little_endian( to_number( to_char( t_now, ''dd'' ) )',
'                                                  + to_number( to_char( t_now, ''mm'' ) ) * 32',
'                                                  + ( greatest(to_number( to_char( t_now, ''yyyy'' ) ) - 1980, 0) ) * 512',
'                                                  , 2',
'                                                  ) -- File last modification date',
'                                   , t_crc32 -- CRC-32',
'                                   , little_endian( t_clen )                      -- compressed size',
'                                   , little_endian( t_len )                       -- uncompressed size',
'                                   , little_endian( utl_raw.length( t_name ), 2 ) -- File name length',
'                                   , hextoraw( ''0000'' )                           -- Extra field length',
'                                   , t_name                                       -- File name',
'                                   )',
'                   );',
'    if t_compressed',
'    then',
'      dbms_lob.copy( p_zipped_blob, t_blob, t_clen, dbms_lob.getlength( p_zipped_blob ) + 1, 11 ); -- compressed content',
'    elsif t_clen > 0',
'    then',
'      dbms_lob.copy( p_zipped_blob, t_blob, t_clen, dbms_lob.getlength( p_zipped_blob ) + 1, 1 ); --  content',
'    end if;',
'    if dbms_lob.istemporary( t_blob ) = 1',
'    then',
'      dbms_lob.freetemporary( t_blob );',
'    end if;',
'    if g_size_limit < dbms_lob.getlength( p_zipped_blob ) then',
'    	raise_application_error (g_size_limit_sqlcode, g_size_limit_message || '' in as_zip.add1file'');',
'    end if;',
'  end;',
'--',
'  procedure finish_zip( p_zipped_blob in out nocopy blob )',
'  is',
'    t_cnt pls_integer := 0;',
'    t_offs integer;',
'    t_offs_dir_header integer;',
'    t_offs_end_header integer;',
'    t_comment raw(32767) := utl_raw.cast_to_raw( ''Implementation by Anton Scheffer, improved by Dirk Strack'' );',
'  begin',
'    t_offs_dir_header := dbms_lob.getlength( p_zipped_blob );',
'    t_offs := 1;',
'    while dbms_lob.substr( p_zipped_blob, utl_raw.length( c_LOCAL_FILE_HEADER ), t_offs ) = c_LOCAL_FILE_HEADER',
'    loop',
'      t_cnt := t_cnt + 1;',
'      dbms_lob.append( p_zipped_blob',
'                     , utl_raw.concat( hextoraw( ''504B0102'' )      -- Central directory file header signature',
'                                     , hextoraw( ''1400'' )          -- version 2.0',
'                                     , dbms_lob.substr( p_zipped_blob, 26, t_offs + 4 )',
'                                     , hextoraw( ''0000'' )          -- File comment length',
'                                     , hextoraw( ''0000'' )          -- Disk number where file starts',
'                                     , hextoraw( ''0000'' )          -- Internal file attributes =>',
'                                                                   --     0000 binary file',
'                                                                   --     0100 (ascii)text file',
'                                     , case',
'                                         when dbms_lob.substr( p_zipped_blob',
'                                                             , 1',
'                                                             , t_offs + 30 + blob2num( p_zipped_blob, 2, t_offs + 26 ) - 1',
'                                                             ) in ( hextoraw( ''2F'' ) -- /',
'                                                                  , hextoraw( ''5C'' ) -- \',
'                                                                  )',
'                                         then hextoraw( ''10000000'' ) -- a directory/folder',
'                                         else hextoraw( ''2000B681'' ) -- a file',
'                                       end                         -- External file attributes',
'                                     , little_endian( t_offs - 1 ) -- Relative offset of local file header',
'                                     , dbms_lob.substr( p_zipped_blob',
'                                                      , blob2num( p_zipped_blob, 2, t_offs + 26 )',
'                                                      , t_offs + 30',
'                                                      )            -- File name',
'                                     )',
'                     );',
'      t_offs := t_offs + 30 + blob2num( p_zipped_blob, 4, t_offs + 18 )  -- compressed size',
'                            + blob2num( p_zipped_blob, 2, t_offs + 26 )  -- File name length',
'                            + blob2num( p_zipped_blob, 2, t_offs + 28 ); -- Extra field length',
'    end loop;',
'    t_offs_end_header := dbms_lob.getlength( p_zipped_blob );',
'    dbms_lob.append( p_zipped_blob',
'                   , utl_raw.concat( c_END_OF_CENTRAL_DIRECTORY                                -- End of central directory signature',
'                                   , hextoraw( ''0000'' )                                        -- Number of this disk',
'                                   , hextoraw( ''0000'' )                                        -- Disk where central directory starts',
'                                   , little_endian( t_cnt, 2 )                                 -- Number of central directory records on this disk',
'                                   , little_endian( t_cnt, 2 )                                 -- Total number of central directory records',
'                                   , little_endian( t_offs_end_header - t_offs_dir_header )    -- Size of central directory',
'                                   , little_endian( t_offs_dir_header )                        -- Offset of start of central directory, relative to start of archive',
'                                   , little_endian( nvl( utl_raw.length( t_comment ), 0 ), 2 ) -- ZIP file comment length',
'                                   , t_comment',
'                                   )',
'                   );',
'    if g_size_limit < dbms_lob.getlength( p_zipped_blob ) then',
'    	raise_application_error (g_size_limit_sqlcode, g_size_limit_message || '' in as_zip.finish_zip'');',
'    end if;',
'  end;',
'--',
'$IF as_zip_specs.c_use_utl_file $THEN',
'  procedure save_zip',
'    ( p_zipped_blob blob',
'    , p_dir varchar2 := ''MY_DIR''',
'    , p_filename varchar2 := ''my.zip''',
'    )',
'  is',
'    t_fh utl_file.file_type;',
'    t_len pls_integer := 32767;',
'  begin',
'    t_fh := utl_file.fopen( p_dir, p_filename, ''wb'' );',
'    for i in 0 .. trunc( ( dbms_lob.getlength( p_zipped_blob ) - 1 ) / t_len )',
'    loop',
'      utl_file.put_raw( t_fh, dbms_lob.substr( p_zipped_blob, t_len, i * t_len + 1 ) );',
'    end loop;',
'    utl_file.fclose( t_fh );',
'  end;',
'$ELSE',
'  procedure save_zip',
'    ( p_zipped_blob blob',
'    , p_dir varchar2 := ''MY_DIR''',
'    , p_filename varchar2 := ''my.zip''',
'    )',
'  is',
'  begin',
'	raise_application_error (g_access_utl_file_sqlcode, g_access_utl_file_message || '' in as_zip.save_zip'');',
'  end;',
'$END',
'--',
'  procedure get_file_date_list',
'    ( p_zipped_blob 	in blob',
'    , p_encoding 		in varchar2 := null',
'    , p_file_list		out nocopy file_list',
'    , p_date_list		out nocopy date_list',
'    , p_offset_list		out nocopy foffset_list',
'    )',
'  is',
'    t_ind 		integer := 0;',
'    t_hd_ind 	integer := 0;',
'    t_file_list file_list;',
'    t_date_list date_list;',
'    t_offset_list foffset_list;',
'    t_encoding 	varchar2(255);',
'    t_size		integer := 0;',
'    t_total 	integer := 0;',
'    t_date_num 	integer := 0;',
'    t_time_num 	integer := 0;',
'    t_date_str	varchar2(50);',
'  begin',
'    t_ind := nvl( dbms_lob.getlength( p_zipped_blob ), 0 ) - 21;',
'    loop',
'      exit when t_ind < 1 or dbms_lob.substr( p_zipped_blob, 4, t_ind ) = c_END_OF_CENTRAL_DIRECTORY;',
'      t_ind := t_ind - 1;',
'    end loop;',
'--',
'    if t_ind <= 0',
'    then',
'      return;',
'    end if;',
'--',
'    t_hd_ind := blob2num( p_zipped_blob, 4, t_ind + 16 ) + 1;',
'    t_file_list := file_list();',
'    t_date_list := date_list();',
'    t_offset_list := foffset_list();',
'',
'    t_size := blob2num( p_zipped_blob, 2, t_ind + 10 );',
'    t_file_list.extend( t_size );',
'    t_date_list.extend( t_size );',
'    t_offset_list.extend( t_size );',
'    -- total number of entries in the central directory',
'    t_total := blob2num( p_zipped_blob, 2, t_ind + 8 );',
'    for i in 1 .. t_total',
'    loop',
'      if p_encoding is null',
'      then',
'        if utl_raw.bit_and( dbms_lob.substr( p_zipped_blob, 1, t_hd_ind + 9 ), hextoraw( ''08'' ) ) = hextoraw( ''08'' )',
'        then',
'          t_encoding := ''AL32UTF8''; -- utf8',
'        else',
'          t_encoding := ''US8PC437''; -- IBM codepage 437',
'        end if;',
'      else',
'        t_encoding := p_encoding;',
'      end if;',
'      t_time_num := blob2num( p_zipped_blob, 2, t_hd_ind + 12 );',
'      t_date_num := blob2num( p_zipped_blob, 2, t_hd_ind + 14 );',
'      t_date_str := trunc(t_date_num / 512) + 1980 || ''/''	-- year',
'      			|| trunc(mod(t_date_num, 512) / 32) || ''/''	-- month',
'      			|| mod(t_date_num, 32)	|| '' ''				-- day',
'      			|| trunc(t_time_num / 2048) || ''.''			-- hour24',
'      			|| trunc(mod(t_time_num, 2048) / 32) || ''.''	-- minutes',
'      			|| mod(t_time_num, 32) * 2;					-- seconds',
'      t_file_list( i ) := raw2varchar2	-- path name',
'                     ( dbms_lob.substr( p_zipped_blob',
'                                      , blob2num( p_zipped_blob, 2, t_hd_ind + 28 )',
'                                      , t_hd_ind + 46',
'                                      )',
'                     , t_encoding',
'                     );',
'      t_date_list( i ) :=  to_date(t_date_str, ''YYYY/MM/DD HH24.MI.SS'');',
'      t_offset_list( i ) := t_hd_ind;',
'',
'      t_hd_ind := t_hd_ind + 46',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 28 )  -- File name length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 30 )  -- Extra field length',
'                + blob2num( p_zipped_blob, 2, t_hd_ind + 32 ); -- File comment length',
'    end loop;',
'--',
'    p_file_list := t_file_list;',
'    p_date_list := t_date_list;',
'    p_offset_list := t_offset_list;',
'  end;',
'',
'--',
'  function get_file',
'    ( p_zipped_blob blob',
'    , p_file_name varchar2',
'    , p_offset integer',
'    )',
'  return blob',
'  is',
'    t_tmp 		blob;',
'    t_hd_ind 	integer := p_offset;',
'    t_fl_ind 	integer;',
'    t_len 		integer;',
'  begin',
'	t_len := blob2num( p_zipped_blob, 4, t_hd_ind + 24 ); -- uncompressed length',
'	if t_len = 0',
'	then',
'	  if substr( p_file_name, -1 ) in ( ''/'', ''\'' )',
'	  then  -- directory/folder',
'		return null;',
'	  else -- empty file',
'		return empty_blob();',
'	  end if;',
'	end if;',
'--',
'	if dbms_lob.substr( p_zipped_blob, 2, t_hd_ind + 10 ) = hextoraw( ''0800'' ) -- deflate',
'	then',
'	  t_fl_ind := blob2num( p_zipped_blob, 4, t_hd_ind + 42 );',
'	  t_tmp := hextoraw( ''1F8B0800000000000003'' ); -- gzip header',
'	  dbms_lob.copy( t_tmp',
'				   , p_zipped_blob',
'				   ,  blob2num( p_zipped_blob, 4, t_hd_ind + 20 )',
'				   , 11',
'				   , t_fl_ind + 31',
'				   + blob2num( p_zipped_blob, 2, t_fl_ind + 27 ) -- File name length',
'				   + blob2num( p_zipped_blob, 2, t_fl_ind + 29 ) -- Extra field length',
'				   );',
'	  dbms_lob.append( t_tmp, utl_raw.concat( dbms_lob.substr( p_zipped_blob, 4, t_hd_ind + 16 ) -- CRC32',
'											, little_endian( t_len ) -- uncompressed length',
'											)',
'					 );',
'	  return utl_compress.lz_uncompress( t_tmp );',
'	end if;',
'--',
'	if dbms_lob.substr( p_zipped_blob, 2, t_hd_ind + 10 ) = hextoraw( ''0000'' ) -- The file is st'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(81192353833149321)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ored (no compression)',
'	then',
'	  t_fl_ind := blob2num( p_zipped_blob, 4, t_hd_ind + 42 );',
'	  dbms_lob.createtemporary( t_tmp, true );',
'	  dbms_lob.copy( t_tmp',
'				   , p_zipped_blob',
'				   , t_len',
'				   , 1',
'				   , t_fl_ind + 31',
'				   + blob2num( p_zipped_blob, 2, t_fl_ind + 27 ) -- File name length',
'				   + blob2num( p_zipped_blob, 2, t_fl_ind + 29 ) -- Extra field length',
'				   );',
'	  return t_tmp;',
'	end if;',
'--',
'    return null;',
'  end;',
'--',
'end;',
'/',
'show errors',
''))
);
null;
end;
/
prompt --application/deployment/install/install_unzip_parallel
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(81192547075153663)
,p_install_id=>wwv_flow_api.id(79688763819208918)
,p_name=>'unzip_parallel'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Copyright 2017-2019 Dirk Strack',
'',
'Licensed under the Apache License, Version 2.0 (the "License");',
'you may not use this file except in compliance with the License.',
'You may obtain a copy of the License at',
'',
'    http://www.apache.org/licenses/LICENSE-2.0',
'',
'Unless required by applicable law or agreed to in writing, software',
'distributed under the License is distributed on an "AS IS" BASIS,',
'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.',
'See the License for the specific language governing permissions and',
'limitations under the License.',
'*/',
'',
'CREATE OR REPLACE package Unzip_Parallel',
'AUTHID DEFINER',
'is',
'/*',
'	The library procedure Unzip_Parallel.Expand_Zip_Archive provides functionality',
'	for reading a zip file from a table, storing all expanded files in one table and the folders for the files in a second table.',
'	The table for the files has a least the two columns for file_name varchar2, file_content blob',
'	and optionally file_date date, file_size number, mime_type varchar2(300), folder_id number.',
'	The table for the folders has at least a folder_id number, parent_id number, folder_name varchar2.',
'	When no folder definition is provided in the Folder Query attribute, full pathnames are stored in the file_name field of the files table.',
'	Zip file larger than 5MB will be processed in parallel to reduce the processing time when parallel execution is enabled.',
'',
'	The process calculates an array of offsets to the individual zipped files of the zipped archive.',
'	The offsets are then used to expand all files without repeated sequential searching within the zipped archive.',
'	This method causes a dramatic reduction of execution time for larger archives with tousends of files.',
'	Chunks of the zipped archive can be executed in parallel by DBMS_SCHEDULER job slaves to further reduce execution time.',
'*/',
'	c_Process_Name 		CONSTANT VARCHAR2(50) := ''Expand_Zip_Archive'';',
'	c_App_Error_Code	CONSTANT INTEGER := -20200;',
'	c_msg_file_bad_type CONSTANT VARCHAR2(500) := ''The file is not a zip archive.''; -- ''Datei ist kein Zip-Archiv.''',
unistr('	c_msg_file_empty 	CONSTANT VARCHAR2(500) := ''The zip archive does not contain any files.''; -- ''Das Zip-Archiv enth\00E4lt keine Dateien.'''),
'	c_msg_process_fails	CONSTANT VARCHAR2(500) := ''The zip archive could not be processed.''; -- ''Das Zip-Archiv konnte nicht verarbeitet werden.''',
'	c_debug 			CONSTANT BOOLEAN := FALSE;',
'	c_rows_lower_limit CONSTANT INTEGER := 16;	-- lower limit of rows processed in one chunk.',
'	c_size_lower_limit CONSTANT INTEGER := 5 * 1024 * 1024;	-- 5MB - lower limit for parallel processing',
'	c_parallel_jobs    CONSTANT INTEGER := 4;	-- upper limit of parallel jobs.',
'  	procedure get_folder_list(',
'		p_zipped_blob 	BLOB,',
'		p_only_files 	BOOLEAN DEFAULT TRUE,',
'		p_encoding 		IN OUT NOCOPY VARCHAR2,',
'		p_folder_max_count INTEGER DEFAULT NULL,',
'		p_folder_list	OUT NOCOPY as_zip.file_list,',
'		p_file_count 	OUT INTEGER',
'    );',
'',
'	function Create_Path (',
'		p_Path_Name		VARCHAR2,',
'		p_Root_Id 		INTEGER,',
'		p_Folder_query 	VARCHAR2,',
'		p_Container_ID 	NUMBER DEFAULT NULL',
'	) return INTEGER;',
'',
'	function Mime_Type_from_Extension(',
'		p_File_Name			VARCHAR2,',
'		p_Default_Mime_Type	VARCHAR2 := ''application/octet-stream''',
'	)',
'	return varchar2 deterministic;',
'',
'	PROCEDURE Expand_Zip_Parallel (',
'		p_process_text 	VARCHAR2,',
'		p_total_count 	INTEGER,',
'		p_SQLCode 		OUT INTEGER,',
'		p_Message		OUT NOCOPY VARCHAR2',
'	);',
'',
'	PROCEDURE Load_zip_file_query (',
'		p_Load_Zip_Query IN VARCHAR2,',
'		p_Search_Value IN VARCHAR2,',
'		p_zip_file	OUT NOCOPY BLOB,',
'		p_Archive_Name OUT NOCOPY VARCHAR2',
'	);',
'',
'	PROCEDURE Delete_Zip_File_Query (',
'		p_Delete_Zip_Query IN VARCHAR2,',
'		p_Search_Value IN VARCHAR2',
'	);',
'',
'	PROCEDURE Expand_Zip_Range (',
'		p_Start_ID INTEGER DEFAULT NULL,',
'		p_End_ID INTEGER DEFAULT NULL,',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,',
'		p_Load_Zip_Code 	VARCHAR2 DEFAULT NULL,',
'		p_Load_Zip_Query	VARCHAR2 DEFAULT NULL,',
'		p_Search_Value		VARCHAR2 DEFAULT NULL,',
'		p_Create_Path_Code 	VARCHAR2 DEFAULT NULL,',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',',
'		p_Save_File_Code 	VARCHAR2,',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Only_Files 		BOOLEAN DEFAULT TRUE,',
'		p_Skip_Empty 		BOOLEAN DEFAULT TRUE,',
'		p_Skip_Dot 			BOOLEAN DEFAULT TRUE,',
'		p_Encoding			VARCHAR2 DEFAULT NULL',
'	);',
'',
'	PROCEDURE Expand_Zip_Archive (',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,	-- PL/SQL code for initialization of session context.',
'		p_Load_Zip_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code for loading the zipped blob and filename. The bind variable :search_value can be used to pass the p_Search_Value attribute.',
'		p_Load_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.',
'		p_Delete_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for deleting the source of the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind.',
'		p_Search_Value		VARCHAR2 DEFAULT NULL,	-- Search value for the bind variable in the Load Zip Query code.',
'		p_Folder_query 		VARCHAR2 DEFAULT NULL,	-- SQL Query for parameters to store the folders in a recursive tree table. When this field is empty, the :file_name will be prefixed with the path in the Save file code.',
'		p_Create_Path_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code to save the path of the saved files.',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',-- Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.',
'		p_Save_File_Code 	VARCHAR2,				-- PL/SQL code to save an unzipped file from the zip archive. The bind variables :unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id deliver values to be saved.',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,	-- Pathname of the Directory where the unzipped files are saved.',
'		p_Container_ID		NUMBER  DEFAULT NULL,   -- folder table foreign key reference value to container table',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Only_Files 		BOOLEAN DEFAULT TRUE,	-- If set to Yes, empty directory entries are not created. Otherwise, set to No to include empty directory entries..',
'		p_Skip_Empty 		BOOLEAN DEFAULT TRUE,	-- If set to Yes, then empty files are skipped and not saved.',
'		p_Skip_Dot 			BOOLEAN DEFAULT TRUE,	-- If set to Yes, then files with a file name that start with ''.'' are skipped and not saved.',
'		p_Execute_Parallel	BOOLEAN DEFAULT TRUE,	-- If set to Yes, then files are processed in parallel jobs.',
'		p_Encoding			VARCHAR2 DEFAULT NULL, -- This is the encoding used to zip the file. (AL32UTF8 or US8PC437)',
'		p_SQLCode 			OUT INTEGER,',
'		p_Message 			OUT NOCOPY VARCHAR2',
'	);',
'	PROCEDURE Default_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2);',
'	PROCEDURE PLSQL_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2);',
'	PROCEDURE AJAX_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2);',
'	PROCEDURE Expand_Zip_Archive_Job (',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,	-- PL/SQL code for initialization of session context.',
'		p_Load_Zip_Query	VARCHAR2,	-- SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.',
'		p_Delete_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for deleting the source of the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind.',
'		p_File_Names		VARCHAR2,	-- file names for the bind variable in the Load Zip Query code.',
'		p_Folder_query 		VARCHAR2,	-- SQL Query for parameters to store the folders in a recursive tree table. When this field is empty, the :file_name will be prefixed with the path in the Save file code.',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',-- Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.',
'		p_Save_File_Code 	VARCHAR2,				-- PL/SQL code to save an unzipped file from the zip archive. The bind variables :unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id deliver values to be saved.',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,	-- Pathname of the Directory where the unzipped files are saved.',
'		p_Container_ID		NUMBER  DEFAULT NULL,   -- folder table foreign key reference value to container table',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Completion_Procedure VARCHAR2 DEFAULT ''unzip_parallel.Default_Completion'' -- Name of a procedure with a call profile like: unzip_Completion(p_SQLCode NUMBER, p_Message VARCHAR2)',
'		-- when the procedure is called from a Apex PL/SQL process, unzip_parallel.use PLSQL_Completion to display bad results.',
'		-- when it is called from a AJAX process, use ''unzip_parallel.AJAX_Completion''  to display results.',
'		-- when it is called from a scheduler job, write the result in a logging table.',
'	);',
'	',
'end Unzip_Parallel;',
'/',
'show errors',
'',
'CREATE OR REPLACE package body Unzip_Parallel',
'is',
'	c_END_OF_CENTRAL_DIRECTORY constant raw(4) := hextoraw( ''504B0506'' ); -- End of central directory signature',
'',
'	function blob2num( p_blob blob, p_len integer, p_pos integer )',
'	return number',
'	is',
'		rv number;',
'	begin',
'		rv := utl_raw.cast_to_binary_integer( dbms_lob.substr( p_blob, p_len, p_pos ), utl_raw.little_endian );',
'		if rv < 0 then',
'		  rv := rv + 4294967296;',
'		end if;',
'		return rv;',
'	end;',
'',
'	function raw2varchar2( p_raw raw, p_encoding varchar2 )',
'	return varchar2',
'	is',
'	begin',
'		return coalesce( utl_i18n.raw_to_char( p_raw, p_encoding )',
'	   , utl_i18n.raw_to_char( p_raw, utl_i18n.map_charset( p_encoding, utl_i18n.GENERIC_CONTEXT, utl_i18n.IANA_TO_ORACLE ) )',
'	   );',
'	end;',
'',
'	procedure get_folder_list(',
'		p_zipped_blob 	BLOB,',
'		p_only_files 	BOOLEAN DEFAULT TRUE,',
'		p_encoding 		IN OUT NOCOPY VARCHAR2,',
'		p_folder_max_count INTEGER DEFAULT NULL,',
'		p_folder_list	OUT NOCOPY as_zip.file_list,',
'		p_file_count 	OUT INTEGER',
'    )',
'	is',
'		t_ind integer;',
'		t_hd_ind integer;',
'		t_folder_list  as_zip.file_list :=  as_zip.file_list(NULL);',
'		t_encoding varchar2(255);',
'		t_size		integer;',
'		t_total 	integer;',
'		t_file_name as_zip.t_path_name;',
'		t_full_path as_zip.t_path_name;',
'		t_file_path as_zip.t_path_name;',
'		t_last_path as_zip.t_path_name := '' '';',
'	begin',
'		t_ind := nvl( dbms_lob.getlength( p_zipped_blob ), 0 ) - 21;',
'		loop',
'		  exit when t_ind < 1 or dbms_lob.substr( p_zipped_blob, 4, t_ind ) = c_END_OF_CENTRAL_DIRECTORY;',
'		  t_ind := t_ind - 1;',
'		end loop;',
'		--',
'		p_file_count := 0;',
'		if t_ind <= 0',
'		then',
'		  return;',
'		end if;',
'		--',
'		t_hd_ind := blob2num( p_zipped_blob, 4, t_ind + 16 ) + 1;',
'		t_size := blob2num( p_zipped_blob, 2, t_ind + 10 );',
'		t_total := blob2num( p_zipped_blob, 2, t_ind + 8 );',
'		for i in 1 .. t_total',
'		loop',
'		  if p_encoding is null',
'		  then',
'			if utl_raw.bit_and( dbms_lob.substr( p_zipped_blob, 1, t_hd_ind + 9 ), hextoraw( ''08'' ) ) = hextoraw( ''08'' )',
'			then',
'			  t_encoding := ''AL32UTF8''; -- utf-8',
'			else',
'			  t_encoding := ''US8PC437''; -- ibm437',
'			end if;',
'		  else',
'			t_encoding := p_encoding;',
'		  end if;',
'		  t_full_path := raw2varchar2',
'						 ( dbms_lob.substr( p_zipped_blob',
'										  , blob2num( p_zipped_blob, 2, t_hd_ind + 28 )',
'										  , t_hd_ind + 46',
'										  )',
'						 , t_encoding',
'						 );',
'		  t_file_path := nvl(substr(t_full_path, 1, instr(t_full_path, ''/'', -1)), '' '');',
'		  t_file_name := substr(t_full_path, instr(t_full_path, ''/'', -1) + 1);',
'		  if t_file_path != t_last_path',
'		  and (NOT p_only_files or t_file_name IS NOT NULL) then',
'			  t_folder_list.EXTEND;',
'			  t_folder_list(t_folder_list.LAST) :=  t_file_path;',
'',
'			  exit when t_folder_list.LAST >= p_folder_max_count;',
'			  t_last_path := t_file_path;',
'		  end if;',
'		  t_hd_ind := t_hd_ind + 46',
'					+ blob2num( p_zipped_blob, 2, t_hd_ind + 28 )  -- File name length',
'					+ blob2num( p_zipped_blob, 2, t_hd_ind + 30 )  -- Extra field length',
'					+ blob2num( p_zipped_blob, 2, t_hd_ind + 32 ); -- File comment length',
'		end loop;',
'		--',
'		p_encoding := t_encoding;',
'		p_folder_list := t_folder_list;',
'		p_file_count := t_size;',
'	end get_folder_list;',
'',
'	PROCEDURE Load_Folder_query (',
'		p_Folder_query IN VARCHAR2,',
'		p_Folder_ID_Col  	OUT NOCOPY VARCHAR2,	-- Column Name of the Primary Key in the tree table.',
'		p_Parent_ID_Col  	OUT NOCOPY VARCHAR2,	-- Column Name of the Foreign Key in the tree table.',
'		p_Folder_Name_Col 	OUT NOCOPY VARCHAR2,	-- Column Name of the Folder Name in the tree table.',
'		p_Container_ID_Col	OUT NOCOPY VARCHAR2',
'	)',
'	is',
'		v_cur INTEGER;',
'		v_rows INTEGER;',
'		v_col_cnt INTEGER;',
'		v_rec_tab DBMS_SQL.DESC_TAB2;',
'	begin',
'		v_cur := dbms_sql.open_cursor;',
'		dbms_sql.parse(v_cur, p_Folder_query, DBMS_SQL.NATIVE);',
'		dbms_sql.describe_columns2(v_cur, v_col_cnt, v_rec_tab);',
'$IF Unzip_Parallel.c_debug $THEN',
'		for j in 1..v_col_cnt loop',
'			dbms_output.put_line(''col_name: '' || v_rec_tab(j).col_name || '', type: '' || v_rec_tab(j).col_type);',
'		end loop; ',
'$END',
'		p_Folder_ID_Col := case when v_col_cnt >= 1 then v_rec_tab(1).col_name end;',
'		p_Parent_ID_Col := case when v_col_cnt >= 2 then v_rec_tab(2).col_name end;',
'		p_Folder_Name_Col := case when v_col_cnt >= 3 then v_rec_tab(3).col_name end;',
'		p_Container_ID_Col := case when v_col_cnt >= 4 then v_rec_tab(4).col_name end;',
'',
'		dbms_sql.close_cursor(v_cur);',
'	exception',
'	  when others then',
'		dbms_sql.close_cursor(v_cur);',
'		raise;',
'	end;',
'',
'	FUNCTION Create_Path (',
'		p_Path_Name		VARCHAR2,',
'		p_Root_Id 		INTEGER,',
'		p_Folder_query 	VARCHAR2,',
'		p_Container_ID 	NUMBER DEFAULT NULL',
'	) return INTEGER',
'	is',
'		v_Folder_ID_Col	VARCHAR2(128);',
'		v_Parent_ID_Col	VARCHAR2(128);',
'		v_Container_ID_Col	VARCHAR2(128);',
'		v_Folder_Name_Col	VARCHAR2(128);',
'		v_statment 	VARCHAR2(4000);',
'		v_path 		as_zip.t_path_name;',
'		v_folder_name 	as_zip.t_path_name;',
'		v_folder_id INTEGER;',
'		v_root_id	INTEGER;',
'	begin',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''Create_Path : '' || p_Path_Name || '', Root_Id: '' || p_Root_Id || '', p_Container_ID: '' || p_Container_ID);',
'$END',
'		v_folder_id := p_Root_Id;',
'		v_path := ''/'' || SUBSTR(p_Path_Name, 1, INSTR(p_Path_Name, ''/'', -1) - 1);',
'		if v_path = ''/'' then',
'			return v_folder_id;',
'		end if;',
'		Load_Folder_query(',
'			p_Folder_query => p_Folder_query,',
'			p_Folder_ID_Col => v_Folder_ID_Col,',
'			p_Parent_ID_Col => v_Parent_ID_Col,',
'			p_Folder_Name_Col => v_Folder_Name_Col,',
'			p_Container_ID_Col => v_Container_ID_Col',
'		);',
'		v_statment :=',
'		''SELECT '' || dbms_assert.enquote_name(v_Folder_ID_Col) || chr(10) ||',
'		''INTO :folder_id'' || chr(10) ||',
'		''FROM ('' || chr(10) ||',
'			''SELECT '' || dbms_assert.enquote_name(v_Folder_ID_Col) || '', SYS_CONNECT_BY_PATH(TRANSLATE('' ||',
'					dbms_assert.enquote_name(v_Folder_Name_Col) || '', ''''/'''', ''''-''''), ''''/'''') PATH'' || chr(10) ||',
'			''FROM ('' || p_Folder_query || '') T '' || chr(10) ||',
'			case when v_Container_ID_Col IS NOT NULL then ',
'				''WHERE '' || dbms_assert.enquote_name(v_Container_ID_Col) || '' = '' || dbms_assert.enquote_literal(p_Container_ID) || chr(10) ',
'			end ||',
'			''START WITH ('' || dbms_assert.enquote_name(v_Parent_ID_Col) || '' = :root_id '' ||',
'				   '' OR '' || dbms_assert.enquote_name(v_Parent_ID_Col) || '' IS NULL AND :root_id IS NULL )'' || chr(10) ||',
'			''CONNECT BY '' || dbms_assert.enquote_name(v_Parent_ID_Col) || '' = PRIOR '' || dbms_assert.enquote_name(v_Folder_ID_Col) ||',
'		'')'' || chr(10) ||',
'		''WHERE PATH = :path'';',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''----------'');',
'		dbms_output.put_line(v_statment);',
'$END',
'		execute immediate ''begin '' || v_statment || ''; end;''',
'			using out v_folder_id, p_Root_Id, v_path;',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''found path : '' || v_path || '', folder_id: '' || v_folder_id);',
'$END',
'		return v_folder_id;',
'	exception',
'	  when NO_DATA_FOUND then',
'	  	v_path := SUBSTR(v_path, 2) || ''/'';',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''new path : '' || v_path);',
'$END',
'		while INSTR(v_path, ''/'') > 0',
'		loop',
'			v_folder_name := SUBSTR(v_path, 1, INSTR(v_path, ''/'')-1);',
'			v_path := SUBSTR(v_path, INSTR(v_path, ''/'')+1);',
'			v_root_id := v_folder_id;',
'			begin',
'				v_statment :=',
'				''SELECT '' || dbms_assert.enquote_name(v_Folder_ID_Col) || chr(10) ||',
'				''INTO :folder_id''|| chr(10) ||',
'				''FROM ('' || p_Folder_query || '') T '' || chr(10) ||',
'				''WHERE ('' || dbms_assert.enquote_name(v_Parent_ID_Col) || '' = :root_id'' || chr(10) ||',
'				   '' OR '' || dbms_assert.enquote_name(v_Parent_ID_Col) || '' IS NULL AND :root_id IS NULL )'' || chr(10) ||',
'				''AND '' || dbms_assert.enquote_name(v_Folder_Name_Col) || '' = :folder_name'' || chr(10)',
'				|| case when v_Container_ID_Col IS NOT NULL then ',
'					''AND '' || dbms_assert.enquote_name(v_Container_ID_Col) || '' = '' || dbms_assert.enquote_literal(p_Container_ID)  ',
'				end;',
'$IF Unzip_Parallel.c_debug $THEN',
'				dbms_output.put_line(''----------'');',
'				dbms_output.put_line(v_statment);',
'$END',
'				execute immediate ''begin '' || v_statment || ''; end;''',
'					using out v_folder_id, v_root_id, v_folder_name;',
'			exception',
'			  when NO_DATA_FOUND then',
'			  	if v_Container_ID_Col IS NOT NULL then ',
'					v_statment :=',
'					''INSERT INTO ('' || p_Folder_query || '') T '' ||',
'					'' ('' || dbms_assert.enquote_name(v_Folder_Name_Col) ||',
'					'', '' || dbms_assert.enquote_name(v_Parent_ID_Col) || ',
'					'', '' || dbms_assert.enquote_name(v_Container_ID_Col) ||',
'					'')'' || chr(10) ||',
'					''VALUES (:folder_name, :parent_id, :container_id)'' || chr(10) ||',
'					''RETURNING '' || dbms_assert.enquote_name(v_Folder_ID_Col) || '' INTO :folder_id'';',
'$IF Unzip_Parallel.c_debug $THEN',
'					dbms_output.put_line(''----------'');',
'					dbms_output.put_line(v_statment);',
'$END',
'					execute immediate ''begin '' || v_statment || ''; end;''',
'						using v_folder_name, v_root_id, p_Container_ID, out v_folder_id;',
'				else',
'					v_statment :=',
'					''INSERT INTO ('' || p_Folder_query || '') T '' ||',
'					'' ('' || dbms_assert.enquote_name(v_Folder_Name_Col) ||',
'					'', '' || dbms_assert.enquote_name(v_Parent_ID_Col) || ',
'					'')'' || chr(10) ||',
'					''VALUES (:folder_name, :parent_id)'' || chr(10) ||',
'					''RETURNING '' || dbms_assert.enquote_name(v_Folder_ID_Col) || '' INTO :folder_id'';',
'$IF Unzip_Parallel.c_debug $THEN',
'					dbms_output.put_line(''----------'');',
'					dbms_output.put_line(v_statment);',
'$END',
'					execute immediate ''begin '' || v_statment || ''; end;''',
'						using v_folder_name, v_root_id, out v_folder_id;',
'				end if;',
'			end;',
'		end loop;',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''new folder_id: '' || v_folder_id);',
'$END',
'		return v_folder_id;',
'	end;',
'',
'	function Mime_Type_from_Extension(',
'		p_File_Name			VARCHAR2,',
'		p_Default_Mime_Type	VARCHAR2 := ''application/octet-stream''',
'	)',
'	return varchar2 deterministic',
'	is',
'		v_Extension VARCHAR(200) := case when INSTR(p_File_Name,''.'', -1) > 0',
'			then LOWER(SUBSTR(p_File_Name, LEAST(INSTR(p_File_Name, ''.'', -1) + 1, 200))) end;',
'	begin',
'		return case v_Extension',
'			when ''doc''  then ''application/msword''',
'			when ''docx'' then ''application/vnd.openxmlformats-officedocument.wordprocessingml.document''',
'			when ''dotx'' then ''application/vnd.openxmlformats-officedocument.wordprocessingml.template''',
'			when ''ico''  then ''image/x-icon''',
'			when ''potx'' then ''application/vnd.openxmlformats-officedocument.presentationml.template''',
'			when ''pptx'' then ''application/vnd.openxmlformats-officedocument.presentationml.presentation''',
'			when ''xlsx'' then ''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet''',
'			when ''abc''  then ''text/vnd.abc''',
'			when ''acgi'' then ''text/html''',
'			when ''afm''  then ''application/x-font-type1''',
'			when ''ai''   then ''application/postscript''',
'			when ''aif''  then ''audio/x-aiff''',
'			when ''aifc'' then ''audio/x-aiff''',
'			when ''aiff'' then ''audio/x-aiff''',
'			when ''asf''  then ''video/x-ms-asf''',
'			when ''asx''  then ''video/x-ms-asf''',
'			when ''au''   then ''audio/basic''',
'			when ''avi''  then ''video/x-msvideo''',
'			when ''bdf''  then ''application/x-font-bdf''',
'			when ''bm''   then ''image/bmp''',
'			when ''bmp''  then ''image/bmp''',
'			when ''bz''   then ''application/x-bzip''',
'			when ''c''    then ''text/plain''',
'			when ''c++''  then ''text/plain''',
'			when ''cc''   then ''text/plain''',
'			when ''cgm''  then ''image/cgm''',
'			when ''com''  then ''text/plain''',
'			when ''conf'' then ''text/plain''',
'			when ''cpio'' then ''application/x-cpio''',
'			when ''css''  then ''text/css''',
'			when ''csv''  then ''text/csv''',
'			when ''cxx''  then ''text/plain''',
'			when ''def''  then ''text/plain''',
'			when ''eml''  then ''message/rfc822''',
'			when ''eps''  then ''application/postscript''',
'			when ''f''    then ''text/plain''',
'			when ''for''  then ''text/plain''',
'			when ''f90''  then ''text/plain''',
'			when ''g''    then ''text/plain''',
'			when ''gif''  then ''image/gif''',
'			when ''gz''   then ''application/x-gzip''',
'			when ''gzip'' then ''application/x-gzip''',
'			when ''h''    then ''text/plain''',
'			when ''hh''   then ''text/plain''',
'			when ''hlb''  then ''text/x-script''',
'			when ''htm''  then ''text/html''',
'			when ''html'' then ''text/html''',
'			when ''htx''  then ''text/html''',
'			when ''ics''  then ''text/calendar''',
'			when ''idc''  then ''text/plain''',
'			when ''ifb''  then ''text/calendar''',
'			when ''in''   then ''text/plain''',
'			when ''jav''  then ''text/plain''',
'			when ''java'' then ''text/plain''',
'			when ''jfif'' then ''image/jpeg''',
'			when ''jpe''  then ''image/jpeg''',
'			when ''jpeg'' then ''image/jpeg''',
'			when ''jpg''  then ''image/jpeg''',
'			when ''js''   then ''application/x-javascript''',
'			when ''kar''  then ''audio/midi''',
'			when ''lha''  then ''application/x-lha''',
'			when ''list'' then ''text/plain''',
'			when ''log''  then ''text/plain''',
'			when ''lst''  then ''text/plain''',
'			when ''m''    then ''text/plain''',
'			when ''man''  then ''text/troff''',
'			when ''mar''  then ''text/plain''',
'			when ''me''   then ''text/troff''',
'			when ''mht''  then ''message/rfc822''',
'			when ''mid''  then ''audio/midi''',
'			when ''midi'' then ''audio/midi''',
'			when ''mime'' then ''message/rfc822''',
'			when ''mod''  then ''audio/x-mod''',
'			when ''moov'' then ''video/quicktime''',
'			when ''mov''  then ''video/quicktime''',
'			when ''mpa''  then ''audio/mpeg''',
'			when ''mpe''  then ''video/mpeg''',
'			when ''mpeg'' then ''video/mpeg''',
'			when ''mpg''  then ''audio/mpeg''',
'			when ''mpga'' then ''audio/mpeg''',
'			when ''mpg4'' then ''video/mp4''',
'			when ''mp2''  then ''audio/mpeg''',
'			when ''mp2a'' then ''audio/mpeg''',
'			when ''mp3''  then ''audio/mpeg''',
'			when ''mp4''  then ''video/mp4''',
'			when ''mp4a'' then ''audio/mp4''',
'			when ''mp4v'' then ''video/mp4''',
'			when ''ms''   then ''text/troff''',
'			when ''m1v''  then ''video/mpeg''',
'			when ''m2a''  then ''audio/mpeg''',
'			when ''m2v''  then ''video/mpeg''',
'			when ''m3a''  then ''audio/mpeg''',
'			when ''m3u''  then ''audio/x-mpegurl''',
'			when ''m4v''  then ''video/mp4''',
'			when ''odb''  then ''application/vnd.oasis.opendocument.database''',
'			when ''odc''  then ''application/vnd.oasis.opendocument.chart''',
'			when ''odf''  then ''application/vnd.oasis.opendocument.formula''',
'			when ''odg''  then ''application/vnd.oasis.opendocument.graphics''',
'			when ''odi''  then ''application/vnd.oasis.opendocument.image''',
'			when ''odp''  then ''application/vnd.oasis.opendocument.presentation''',
'			when ''ods''  then ''application/vnd.oasis.opendocument.spreadsheet''',
'			when ''odt''  then ''application/vnd.oasis.opendocument.text''',
'			when ''otf''  then ''application/x-font-otf''',
'			when ''otp''  then ''application/vnd.oasis.opendocument.presentation-template''',
'			when ''ots''  then ''application/vnd.oasis.opendocument.spreadsheet-template''',
'			when ''p''    then ''text/x-pascal''',
'			when ''pas''  then ''text/x-pascal''',
'			when ''pbm''  then ''image/x-portable-bitmap''',
'			when ''pcf''  then ''application/x-font-pcf''',
'			when ''pcx''  then ''image/x-pcx''',
'			when ''pdf''  then ''application/pdf''',
'			when ''pfa''  then ''application/x-font-type1''',
'			when ''pfb''  then ''application/x-font-type1''',
'			when ''pfm''  then ''application/x-font-type1''',
'			when ''pgm''  then ''image/x-portable-graymap''',
'			when ''pgp''  then ''application/pgp-encrypted''',
'			when ''pl''   then ''text/plain''',
'			when ''pm''   then ''image/x-xpixmap''',
'			when ''png''  then ''image/png''',
'			when ''pot''  then ''application/vnd.ms-powerpoint''',
'			when ''ppa''  then ''application/vnd.ms-powerpoint''',
'			when ''ppm''  then ''image/x-portable-pixmap''',
'			when ''pps''  then ''application/vnd.ms-powerpoint''',
'			when ''ppt''  then ''application/vnd.ms-powerpoint''',
'			when ''ps''   then ''application/postscript''',
'			when ''pwz''  then ''application/vnd.ms-powerpoint''',
'			when ''p7c''  then ''application/pkcs7-mime''',
'			when ''p7m''  then ''application/pkcs7-mime''',
'			when ''qt''   then ''video/quicktime''',
'			when ''ra''   then ''audio/x-pn-realaudio-plugin''',
'			when ''rgb''  then ''image/x-rgb''',
'			when ''rm''   then ''application/vnd.rn-realmedia''',
'			when ''rmi''  then ''audio/midi''',
'			when ''rmp''  then ''audio/x-pn-realaudio-plugin''',
'			when ''roff'' then ''text/troff''',
'			when ''rpm''  then ''audio/x-pn-realaudio-plugin''',
'			when ''rtf''  then ''application/rtf''',
'			when ''rtx''  then ''application/rtf''',
'			when ''sda''  then ''application/vnd.stardivision.draw''',
'			when ''sdc''  then ''application/vnd.stardivision.calc''',
'			when ''sdml'' then ''text/plain''',
'			when ''sgm''  then ''text/sgml''',
'			when ''sgml'' then ''text/sgml''',
'			when ''snd''  then ''audio/basic''',
'			when ''snf''  then ''application/x-font-snf''',
'			when ''sql''  then ''text/plain''',
'			when ''stc''  then ''application/vnd.sun.xml.calc.template''',
'			when ''std''  then ''application/vnd.sun.xml.draw.template''',
'			when ''svg''  then ''image/svg+xml''',
'			when ''svgz'' then ''image/svg+xml''',
'			when ''sxc''  then ''application/vnd.sun.xml.calc''',
'			when ''sxd''  then ''application/vnd.sun.xml.draw''',
'			when ''t''    then ''text/troff''',
'			when ''tar''  then ''application/x-tar''',
'			when ''text'' then ''text/plain''',
'			when ''tif''  then ''image/tiff''',
'			when ''tiff'' then ''image/tiff''',
'			when ''tr''   then ''text/troff''',
'			when ''ttc''  then ''application/x-font-ttf''',
'			when ''ttf''  then ''application/x-font-ttf''',
'			when ''txt''  then ''text/plain''',
'			when ''vcf''  then ''text/x-vcard''',
'			when ''wav''  then ''audio/x-wav''',
'			when ''wma''  then ''audio/x-ms-wma''',
'			when ''wml''  then ''text/vnd.wap.wml''',
'			when ''wmv''  then ''video/x-ms-wmv''',
'			when ''wri''  then ''application/x-mswrite''',
'			when ''xbm''  then ''image/x-xbitmap''',
'			when ''xht''  then ''application/xhtml+xml''',
'			when ''xla''  then ''application/vnd.ms-excel''',
'			when ''xlb''  then ''application/vnd.ms-excel''',
'			when ''xlc''  then ''application/vnd.ms-excel''',
'			when ''xll''  then ''application/vnd.ms-excel''',
'			when ''xlm''  then ''application/vnd.ms-excel''',
'			when ''xls''  then ''application/vnd.ms-excel''',
'			when ''xlt''  then ''application/vnd.ms-excel''',
'			when ''xlw''  then ''application/vnd.ms-excel''',
'			when ''xml''  then ''text/xml''',
'			when ''xpm''  then ''image/x-xpixmap''',
'			when ''xsl''  then ''application/xml''',
'			when ''xslt'' then ''application/xslt+xml''',
'			when ''z''    then ''application/x-compress''',
'			when ''zip''  then ''application/zip''',
'			when ''7z''   then ''application/x-7z-compressed''',
'',
'			else lower(p_default_mime_type) end;',
'	end;',
'',
'	PROCEDURE Expand_Zip_Parallel (',
'		p_process_text 	VARCHAR2,',
'		p_total_count 	INTEGER,',
'		p_SQLCode 		OUT INTEGER,',
'		p_Message		OUT NOCOPY VARCHAR2',
'	)',
'	is',
'		v_job_name  	VARCHAR2(255);',
'		v_piece_size 	INTEGER;',
'		v_parallel 		INTEGER := c_parallel_jobs;	-- upper limit of parallel jobs.',
'		v_chunk_sql 	VARCHAR2(1000);',
'		v_try 			INTEGER;',
'		v_status 		INTEGER;',
'        v_Message		VARCHAR2(4000);',
'        v_SQLCode		INTEGER := 0;',
'	begin',
'		-- Create the TASK',
'		v_job_name := dbms_parallel_execute.generate_task_name(Unzip_Parallel.c_Process_Name);',
'		dbms_parallel_execute.create_task (v_job_name);',
'',
'		-- Chunk the task by piece_size',
'		if p_total_count / c_rows_lower_limit < v_parallel then',
'			v_parallel := CEIL(p_total_count / c_rows_lower_limit);',
'		end if;',
'		v_piece_size := p_total_count / v_parallel;',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''---------'' );',
'		dbms_output.put_line(''total_count : '' || p_total_count);',
'		dbms_output.put_line(''parallel    : '' || v_parallel);',
'		dbms_output.put_line(''piece_size  : '' || v_piece_size);',
'$END',
'		v_chunk_sql :=',
'			''WITH PA AS ( SELECT '' || p_total_count || '' CNT, '' || v_piece_size || '' LIMIT FROM DUAL) ''',
'			|| ''SELECT (LEVEL - 1) * LIMIT + 1 start_id, LEAST(LEVEL * LIMIT, PA.CNT)  end_id ''',
'			|| ''FROM DUAL, PA CONNECT BY LEVEL <= CEIL(PA.CNT / PA.LIMIT)'';',
'		dbms_parallel_execute.create_chunks_by_sql(v_job_name, v_chunk_sql, false);',
'',
'		-- Execute the p_process_text in parallel',
'		-- the parameter list contains range variables :start_id and :end_id',
'		dbms_parallel_execute.run_task(v_job_name, p_process_text, DBMS_SQL.NATIVE, parallel_level => NULL);',
'		-- If there is error, RESUME it for at most 3 times.',
'		v_try := 0;',
'		v_status := dbms_parallel_execute.task_status(v_job_name);',
'		while (v_try < 3 and v_status != DBMS_PARALLEL_EXECUTE.FINISHED)',
'		loop',
'			v_try := v_try + 1;',
'			if v_status = dbms_parallel_execute.finished_with_error then',
'				SELECT ERROR_CODE, ERROR_MESSAGE',
'				INTO v_SQLCode, v_Message',
'				FROM USER_PARALLEL_EXECUTE_CHUNKS',
'				WHERE TASK_NAME = v_job_name',
'				AND STATUS = ''PROCESSED_WITH_ERROR''',
'				AND ROWNUM < 2;',
'			end if;',
'			-- stop on raise_application_error and others like ORA-04031 unable to allocate string bytes of shared memory',
'			exit when v_SQLCode IN (-1, -103, -913, -4031, -1422) or v_SQLCode between -20999 and -20000 ;',
'			dbms_parallel_execute.resume_task(v_job_name);',
'			v_status := dbms_parallel_execute.task_status(v_job_name);',
'		end loop;',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''tries       : '' || v_try);',
'		dbms_output.put_line(''status      : '' || v_status);',
'		-- Done with processing; drop the task',
'$END',
'		dbms_parallel_execute.drop_task(v_job_name);',
'		if v_status = dbms_parallel_execute.finished then',
'			p_SQLCode := 0;',
'			p_Message := NULL;',
'		else',
'			p_SQLCode := v_SQLCode;',
'			p_Message := v_Message;',
'		end if;',
'	end Expan'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(81192547075153663)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'd_Zip_Parallel;',
'',
'	PROCEDURE Load_zip_file_query (',
'		p_Load_Zip_Query IN VARCHAR2,',
'		p_Search_Value IN VARCHAR2,',
'		p_zip_file	OUT NOCOPY BLOB,',
'		p_Archive_Name OUT NOCOPY VARCHAR2',
'	)',
'	is',
'		v_cur INTEGER;',
'		v_rows INTEGER;',
'		v_col_cnt INTEGER;',
'		v_rec_tab DBMS_SQL.DESC_TAB2;',
'	begin',
'		v_cur := dbms_sql.open_cursor;',
'		dbms_sql.parse(v_cur, p_Load_Zip_Query, DBMS_SQL.NATIVE);',
'		IF p_Search_Value IS NOT NULL then',
'			dbms_sql.bind_variable(v_cur, '':search_value'', p_Search_Value);',
'		end if;',
'		dbms_sql.describe_columns2(v_cur, v_col_cnt, v_rec_tab);',
'$IF Unzip_Parallel.c_debug $THEN',
'		for j in 1..v_col_cnt loop',
'			dbms_output.put_line(''col_name : '' || v_rec_tab(j).col_name || '', type: '' || v_rec_tab(j).col_type);',
'		end loop; ',
'$END',
'		dbms_sql.define_column(v_cur, 1, p_zip_file);',
'		if v_col_cnt >= 2 then',
'			dbms_sql.define_column(v_cur, 2, p_Archive_Name, 4000);',
'		end if;',
'		v_rows := dbms_sql.execute_and_fetch (v_cur);',
'		if v_rows > 0 then',
'			dbms_sql.column_value(v_cur, 1, p_zip_file);',
'			if v_col_cnt >= 2 then',
'				dbms_sql.column_value(v_cur, 2, p_Archive_Name);',
'			end if;',
'		end if;',
'		dbms_sql.close_cursor(v_cur);',
'	exception',
'	  when others then',
'		dbms_sql.close_cursor(v_cur);',
'		raise;',
'	end Load_zip_file_query;',
'',
'	PROCEDURE Delete_Zip_File_Query (',
'		p_Delete_Zip_Query IN VARCHAR2,',
'		p_Search_Value IN VARCHAR2',
'	)',
'	is',
'		v_cur INTEGER;',
'		v_rows INTEGER;',
'	begin',
'		v_cur := dbms_sql.open_cursor;',
'		dbms_sql.parse(v_cur, p_Delete_Zip_Query, DBMS_SQL.NATIVE);',
'		IF p_Search_Value IS NOT NULL then',
'			dbms_sql.bind_variable(v_cur, '':search_value'', p_Search_Value);',
'		end if;',
'		v_rows := dbms_sql.execute (v_cur);',
'		dbms_sql.close_cursor(v_cur);',
'	exception',
'	  when others then',
'		dbms_sql.close_cursor(v_cur);',
'		raise;',
'	end Delete_Zip_File_Query;',
'',
'	PROCEDURE Save_Unzipped_File (',
'		p_Save_File_Code VARCHAR2,',
'		p_Folder_Id	INTEGER,',
'		p_unzipped_file BLOB,',
'		p_File_Name	VARCHAR2,',
'		p_File_Date DATE,',
'		p_File_Size	INTEGER,',
'		p_Mime_Type	VARCHAR2',
'	)',
'	is',
'		v_cur INTEGER;',
'		v_rows INTEGER;',
'	begin',
'$IF Unzip_Parallel.c_debug $THEN',
'		dbms_output.put_line(''Save_Unzipped_File: ''||p_Folder_Id ||'' ,'' || p_File_Name || '', '' || p_File_Date);',
'$END',
'		-- :folder_id, :unzipped_file, :file_name, :file_date, :file_size, :mime_type',
'		v_cur := dbms_sql.open_cursor;',
'		dbms_sql.parse(v_cur, ''begin '' || p_Save_File_Code || '' end;'', DBMS_SQL.NATIVE);',
'		if instr(p_Save_File_Code, '':folder_id'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':folder_id'', p_Folder_Id);',
'		end if;',
'		if instr(p_Save_File_Code, '':unzipped_file'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':unzipped_file'', p_unzipped_file);',
'		end if;',
'		if instr(p_Save_File_Code, '':file_name'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':file_name'', p_File_Name);',
'		end if;',
'		if instr(p_Save_File_Code, '':file_date'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':file_date'', p_File_Date);',
'		end if;',
'		if instr(p_Save_File_Code, '':file_size'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':file_size'', p_File_Size);',
'		end if;',
'		if instr(p_Save_File_Code, '':mime_type'') > 0 then',
'			dbms_sql.bind_variable(v_cur, '':mime_type'', p_Mime_Type);',
'		end if;',
'		v_rows := dbms_sql.execute(v_cur);',
'		dbms_sql.close_cursor(v_cur);',
'	exception',
'	when others then',
'		dbms_sql.close_cursor(v_cur);',
'		raise;',
'	end;',
'',
'',
'	FUNCTION Root_Path (',
'		p_Path_Name		VARCHAR2',
'	) return VARCHAR2',
'	is -- no leading dash, one trailing dash',
'	begin',
'		return LTRIM(RTRIM(p_Path_Name, ''/''), ''/'') || ''/'';',
'	end;',
'',
'	function Archive_Name (',
'		p_Path_Name	VARCHAR2',
'	)',
'	return VARCHAR2',
'	is',
'		v_File_Name as_zip.t_path_name;',
'	begin',
'		v_File_Name := SUBSTR(p_Path_Name, INSTR(p_Path_Name, ''/'', -1) + 1);',
'		if INSTR(v_File_Name,''.'', -1) > 0 then',
'			v_File_Name := SUBSTR(v_File_Name, 1, INSTR(v_File_Name, ''.'', -1) - 1);',
'		end if;',
'		return v_File_Name;',
'	end;',
'',
'	function Prefix_File_Path(',
'		p_Archive_Name VARCHAR2,',
'		p_File_Path VARCHAR2',
'	)',
'	return VARCHAR2',
'	is',
'		v_File_Path as_zip.t_path_name;',
'	begin',
'		v_File_Path := p_File_Path;',
'		if INSTR(v_File_Path, p_Archive_Name || ''/'') = 1 then',
'			return p_File_Path;',
'		elsif p_Archive_Name IS NULL then',
'			return p_File_Path;',
'		else',
'			return p_Archive_Name || ''/'' || p_File_Path;',
'		end if;',
'	end;',
'',
'	PROCEDURE Expand_Zip_Range (',
'		p_Start_ID INTEGER DEFAULT NULL,',
'		p_End_ID INTEGER DEFAULT NULL,',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,',
'		p_Load_Zip_Code 	VARCHAR2 DEFAULT NULL,',
'		p_Load_Zip_Query	VARCHAR2 DEFAULT NULL,',
'		p_Search_Value		VARCHAR2 DEFAULT NULL,',
'		p_Create_Path_Code 	VARCHAR2 DEFAULT NULL,',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',',
'		p_Save_File_Code 	VARCHAR2,',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Only_Files 		BOOLEAN DEFAULT TRUE,',
'		p_Skip_Empty 		BOOLEAN DEFAULT TRUE,',
'		p_Skip_Dot 			BOOLEAN DEFAULT TRUE,',
'		p_Encoding			VARCHAR2 DEFAULT NULL',
'	)',
'	is',
'        v_zipped_blob 	blob;',
'		v_unzipped_file blob;',
'		v_file_list		as_zip.file_list;',
'		v_date_list		as_zip.date_list;',
'	    v_offset_list 	as_zip.foffset_list;',
'	    v_filter_result	BINARY_INTEGER;',
'		v_File_Name 	as_zip.t_path_name;',
'		v_File_Date		DATE;',
'		v_Archive_Name 	as_zip.t_path_name;',
'		v_Parent_Folder	as_zip.t_path_name;',
'		v_Full_Path 	as_zip.t_path_name;',
'		v_File_Path 	as_zip.t_path_name;',
'		v_Last_Path 	as_zip.t_path_name := '' '';',
'		v_Mime_Type		VARCHAR2(4000);',
'		v_File_Size		INTEGER;',
'		v_Folder_Id 	INTEGER;',
'    	v_root_id 		INTEGER;',
'        v_rindex 		BINARY_INTEGER := dbms_application_info.set_session_longops_nohint;',
'        v_slno   		BINARY_INTEGER;',
'        v_Start_ID		BINARY_INTEGER;',
'        v_End_ID		BINARY_INTEGER;',
'	begin',
'		if p_Init_Session_Code IS NOT NULL then',
'			execute immediate ''begin '' || p_Init_Session_Code || '' end;'';',
'		end if;',
'		-- Load_zip_file (:zip_file, :target_desc, :root_id)',
'		if p_Load_Zip_Code IS NOT NULL then',
'			execute immediate ''begin '' || p_Load_Zip_Code || '' end;''',
'			using out v_zipped_blob, v_Archive_Name;',
'		else',
'			Unzip_Parallel.Load_zip_file_query (p_Load_Zip_Query, p_Search_Value, v_zipped_blob, v_Archive_Name);',
'		end if;',
'		commit; -- release lock on zipped file.',
'		if v_zipped_blob IS NULL then',
'			raise_application_error (Unzip_Parallel.c_App_Error_Code, c_msg_file_bad_type);',
'		end if;',
'		v_Archive_Name := Archive_Name(v_Archive_Name);',
'		if p_Create_Path_Code IS NOT NULL and p_Parent_Folder IS NOT NULL then -- get Root_id',
'			v_Parent_Folder := Root_Path(p_Parent_Folder);',
'			v_Folder_Id := NULL;',
'			execute immediate ''begin :folder_id := '' || p_Create_Path_Code || ''; end;''',
'				using out v_root_id, v_Parent_Folder, v_Folder_Id;',
'			v_Folder_Id := v_root_id;',
'$IF Unzip_Parallel.c_debug $THEN',
'			dbms_output.put_line(''Parent_Folder B: '' || v_Parent_Folder || '', id : '' || v_root_id);',
'$END',
'		end if;',
'',
'		as_zip.get_file_date_list ( v_zipped_blob, p_Encoding, v_file_list, v_date_list, v_offset_list);',
'		v_Start_ID 	:= NVL(p_Start_ID, 1);',
'		v_End_ID	:= LEAST(NVL(p_End_ID, v_file_list.count), v_file_list.count);',
'		for i in v_Start_ID .. v_End_ID loop',
'			dbms_application_info.set_session_longops(',
'			  rindex       => v_rindex,',
'			  slno         => v_slno,',
'			  op_name      => Unzip_Parallel.c_Process_Name,',
'			  target       => 0,',
'			  context      => p_Context,',
'			  sofar        => i - v_Start_ID + 1,',
'			  totalwork    => v_End_ID - v_Start_ID + 1,',
'			  target_desc  => SUBSTR(p_Search_Value, 1, 32),',
'			  units        => ''files''',
'			);',
'			v_Full_Path := v_file_list(i);',
'			v_File_Date := v_date_list(i);',
'			-- :filter_result := INSTR(:path_name, ''__MACOSX/'') != 1;',
'			execute immediate ''begin :filter_result := case when '' || p_Filter_Path_Cond || '' then 1 else 0 end; end;''',
'				using out v_filter_result, v_Full_Path;',
'			if v_filter_result = 1 then',
'				v_unzipped_file := as_zip.get_file (',
'					p_zipped_blob => v_zipped_blob, ',
'					p_file_name => v_Full_Path, ',
'					p_offset => v_offset_list(i)',
'				);',
'				if p_Create_Path_Code IS NOT NULL then',
'					v_File_Path := NVL(SUBSTR(v_Full_Path, 1, INSTR(v_Full_Path, ''/'', -1)), '' '');',
'					v_File_Path := Prefix_File_Path(v_Archive_Name, v_File_Path);',
'					v_File_Name := SUBSTR(v_Full_Path, INSTR(v_Full_Path, ''/'', -1) + 1);',
'$IF Unzip_Parallel.c_debug $THEN',
'					dbms_output.put_line(''Current Path '' || v_File_Path || '' - Full: '' || v_Full_Path );',
'$END',
'					if v_File_Path != v_Last_Path',
'					and (NOT p_Only_Files or v_File_Name IS NOT NULL) then',
'						-- :folder_id := Unzip_Parallel.Create_Path (:path_name, :root_id);',
'						execute immediate ''begin :folder_id := '' || p_Create_Path_Code || ''; end;''',
'							using out v_Folder_Id, v_File_Path, v_root_id;',
'$IF Unzip_Parallel.c_debug $THEN',
'						dbms_output.put_line(''----------'');',
'						dbms_output.put_line(''Create_Path '' || v_Folder_Id || '' '' || v_File_Path );',
'$END',
'						v_Last_Path := v_File_Path;',
'					end if;',
'				else -- when no path is stored, then the file name includes the file path',
'					v_File_Name := v_Parent_Folder || v_Full_Path;',
'					v_Folder_Id := NULL;',
'				end if;',
'				if v_File_Name IS NOT NULL',
'				and (NOT p_Skip_Empty or v_unzipped_file IS NOT NULL)',
'				and (NOT p_Skip_Dot or SUBSTR(v_File_Name, 1, 1) != ''.'') then',
'					v_Mime_Type := unzip_parallel.Mime_Type_from_Extension(v_File_Name);',
'					v_File_Size := NVL(dbms_lob.getlength(v_unzipped_file), 0);',
'					-- Save_File (:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id));',
'					Save_Unzipped_File( p_Save_File_Code,',
'						v_Folder_Id, v_unzipped_file, v_File_Name, v_File_Date, v_File_Size, v_Mime_Type);',
'					if p_Start_ID IS NOT NULL then 	-- when not empty this procedure is called by dbms_parallel_execute.',
'						commit;						-- release locks in parallel mode to avoid contention',
'					end if;',
'				end if;',
'			end if;',
'		end loop;',
'	end Expand_Zip_Range;',
'',
'	PROCEDURE  Create_Folders (',
'		p_Load_Zip_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code for loading the zipped blob and filename. The bind variable :search_value can be used to pass the p_Search_Value attribute.',
'		p_Load_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.',
'		p_Search_Value		VARCHAR2 DEFAULT NULL,	-- Search value for the bind variable in the Load Zip Query code.',
'		p_Create_Path_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code to save the path of the saved files.',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',-- Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,	-- Pathname of the Directory where the unzipped files are saved.',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Only_Files 		BOOLEAN DEFAULT TRUE,	-- If set to Yes, empty directory entries are not created. Otherwise, set to No to include empty directory entries..',
'		p_Encoding			IN OUT NOCOPY VARCHAR2, -- This is the encoding used to zip the file. (AL32UTF8 or US8PC437)',
'		p_File_Size			OUT INTEGER,',
'		p_total_count		OUT INTEGER,',
'		p_SQLCode 			OUT INTEGER,',
'		p_Message 			OUT NOCOPY VARCHAR2',
'	)',
'	is',
'    	v_root_id 		INTEGER;',
'        v_zipped_blob 	BLOB;',
'		v_total_count 	INTEGER;',
'		v_Archive_Name 	as_zip.t_path_name;',
'		v_Parent_Folder	as_zip.t_path_name;',
'		v_status 		INTEGER;',
'		v_folders_limit CONSTANT INTEGER := 1000;',
'		v_folder_list	as_zip.file_list;',
'		v_Full_Path 	as_zip.t_path_name;',
'	    v_filter_result	BINARY_INTEGER;',
'        v_Folder_Id		INTEGER;',
'        v_rindex 		BINARY_INTEGER := dbms_application_info.set_session_longops_nohint;',
'        v_slno   		BINARY_INTEGER;',
'	begin',
'		p_File_Size := 0;',
'		p_total_count := 0;',
'		if p_Load_Zip_Code IS NOT NULL then',
'			execute immediate ''begin '' || p_Load_Zip_Code || '' end;''',
'			using out v_zipped_blob, v_Archive_Name;',
'		else',
'			Unzip_Parallel.Load_zip_file_query (p_Load_Zip_Query, p_Search_Value, v_zipped_blob, v_Archive_Name);',
'		end if;',
'		if v_zipped_blob IS NULL then',
'			p_Message	:= Unzip_Parallel.c_msg_file_bad_type;',
'			return;',
'		end if;',
'		v_Archive_Name := Archive_Name(v_Archive_Name);',
'		Unzip_Parallel.get_folder_list( v_zipped_blob, p_only_files, p_Encoding, v_folders_limit, v_folder_list, v_total_count);',
'		p_File_Size := dbms_lob.getlength(v_zipped_blob);',
'		p_total_count := v_total_count;',
'		v_zipped_blob := NULL;',
'		commit;	-- release lock on zipped file.',
'		if v_total_count = 0 then',
'			p_Message	:= Unzip_Parallel.c_msg_file_empty;',
'			return;',
'		end if;',
'		if p_Parent_Folder IS NOT NULL then	-- get v_root_id',
'			v_Parent_Folder := Root_Path(p_Parent_Folder);',
'			v_Folder_Id := NULL;',
'			execute immediate ''begin :folder_id := '' || p_Create_Path_Code || ''; end;''',
'				using out v_root_id, v_Parent_Folder, v_Folder_Id;',
'		end if;',
'		-- create up to v_folders_limit folders from the v_folder_list to avoid contention locks on the folder rows.',
'		for i in 1 .. v_folder_list.count loop',
'			if mod(i, 30) = 0 or i = v_folder_list.count then',
'				dbms_application_info.set_session_longops(',
'				  rindex       => v_rindex,',
'				  slno         => v_slno,',
'				  op_name      => Unzip_Parallel.c_Process_Name,',
'				  target       => 0,',
'				  context      => p_Context,',
'				  sofar        => i,',
'				  totalwork    => v_folder_list.count,',
'				  target_desc  => SUBSTR(p_Search_Value, 1, 64),',
'				  units        => ''folders''',
'				);',
'			end if;',
'			v_Full_Path := v_folder_list(i);',
'			-- :filter_result := INSTR(:path_name, ''__MACOSX/'') != 1;',
'			execute immediate ''begin :filter_result := case when '' || p_Filter_Path_Cond || '' then 1 else 0 end; end;''',
'				using out v_filter_result, v_Full_Path;',
'			if v_filter_result = 1 then',
'				-- :folder_id := Unzip_Parallel.Create_Path (:path_name, :root_id);',
'				v_Full_Path := Prefix_File_Path(v_Archive_Name, v_Full_Path);',
'				execute immediate ''begin :folder_id := '' || p_Create_Path_Code || ''; end;''',
'					using out v_Folder_Id, v_Full_Path, v_root_id;',
'			end if;',
'		end loop;',
'	end;',
'',
'	-- create and run a DBMS_PARALLEL_EXECUTE task to execute Expand_Zip_Range in chunks',
'	PROCEDURE Expand_Zip_Archive (',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,	-- PL/SQL code for initialization of session context.',
'		p_Load_Zip_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code for loading the zipped blob and filename. The bind variable :search_value can be used to pass the p_Search_Value attribute.',
'		p_Load_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.',
'		p_Delete_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for deleting the source of the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind.',
'		p_Search_Value		VARCHAR2 DEFAULT NULL,	-- Search value for the bind variable in the Load Zip Query code.',
'		p_Folder_query 		VARCHAR2 DEFAULT NULL,	-- SQL Query for parameters to store the folders in a recursive tree table. When this field is empty, the :file_name will be prefixed with the path in the Save file code.',
'		p_Create_Path_Code 	VARCHAR2 DEFAULT NULL,	-- PL/SQL code to save the path of the saved files.',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',-- Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.',
'		p_Save_File_Code 	VARCHAR2,				-- PL/SQL code to save an unzipped file from the zip archive. The bind variables :unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id deliver values to be saved.',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,	-- Pathname of the Directory where the unzipped files are saved.',
'		p_Container_ID		NUMBER  DEFAULT NULL,   -- folder table foreign key reference value to container table',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Only_Files 		BOOLEAN DEFAULT TRUE,	-- If set to Yes, empty directory entries are not created. Otherwise, set to No to include empty directory entries..',
'		p_Skip_Empty 		BOOLEAN DEFAULT TRUE,	-- If set to Yes, then empty files are skipped and not saved.',
'		p_Skip_Dot 			BOOLEAN DEFAULT TRUE,	-- If set to Yes, then files with a file name that start with ''.'' are skipped and not saved.',
'		p_Execute_Parallel	BOOLEAN DEFAULT TRUE,	-- If set to Yes, then files are processed in parallel jobs.',
'		p_Encoding			VARCHAR2 DEFAULT NULL, -- This is the encoding used to zip the file. (AL32UTF8 or US8PC437)',
'		p_SQLCode 			OUT INTEGER,',
'		p_Message 			OUT NOCOPY VARCHAR2',
'	)',
'	is',
'		v_Create_Path_Code 	VARCHAR2(4000);',
'		v_process_text 	VARCHAR2(4000);',
'		v_encoding		VARCHAR2(100) := p_Encoding;',
'        v_file_size		INTEGER;',
'		v_total_count 	INTEGER;',
'        v_Execute_Parallel BOOLEAN;',
'	begin',
'		if p_Init_Session_Code IS NOT NULL then',
'			execute immediate ''begin '' || p_Init_Session_Code || '' end;'';',
'		end if;',
'		if p_Folder_query IS NOT NULL then',
'			v_Create_Path_Code := ''Unzip_Parallel.Create_Path(:path_name, :root_id, '' ',
'			|| ''q''''['' || p_Folder_query|| '']'''', '' ',
'			|| dbms_assert.enquote_literal(p_Container_ID) ',
'			|| '')'';',
'		else',
'			v_Create_Path_Code := p_Create_Path_Code;',
'		end if;',
'		v_Execute_Parallel := p_Execute_Parallel;',
'		if v_Execute_Parallel then',
'			if v_Create_Path_Code IS NOT NULL then',
'				Unzip_Parallel.Create_Folders (',
'						p_Load_Zip_Code 	=> p_Load_Zip_Code,',
'						p_Load_Zip_Query	=> p_Load_Zip_Query,',
'						p_Search_Value		=> p_Search_Value,',
'						p_Create_Path_Code 	=> v_Create_Path_Code,',
'						p_Filter_Path_Cond 	=> p_Filter_Path_Cond,',
'						p_Parent_Folder		=> p_Parent_Folder,',
'						p_Context			=> p_Context,',
'						p_Only_Files		=> p_Only_Files,',
'						p_Encoding			=> v_encoding,',
'						p_File_Size			=> v_file_size,',
'						p_total_count		=> v_total_count,',
'						p_SQLCode 			=> p_SQLCode,',
'						p_Message 			=> p_Message',
'				);',
'				if v_file_size < c_size_lower_limit then',
'					v_Execute_Parallel := false;',
'				end if;',
'			end if;',
'		end if;',
'		if v_Execute_Parallel then',
'			v_process_text :=',
'				''begin Unzip_Parallel.Expand_Zip_Range('' || chr(10)',
'				|| ''p_Start_ID => :start_id, '' || chr(10)',
'				|| ''p_End_ID => :end_id, '' || chr(10)',
'				|| case when p_Init_Session_Code IS NOT NULL then ''p_Init_Session_Code => q''''{'' || p_Init_Session_Code || ''}'''','' || chr(10) end',
'				|| case when p_Load_Zip_Code IS NOT NULL then ''p_Load_Zip_Code => q''''{'' || p_Load_Zip_Code || ''}'''','' || chr(10) end',
'				|| case when p_Load_Zip_Query IS NOT NULL then ''p_Load_Zip_Query => q''''{'' || p_Load_Zip_Query || ''}'''','' || chr(10) end',
'				|| case when p_Search_Value IS NOT NULL then ''p_Search_Value => q''''{'' || p_Search_Value || ''}'''','' || chr(10) end',
'				|| case when v_Create_Path_Code IS NOT NULL then ''p_Create_Path_Code => q''''{'' || v_Create_Path_Code || ''}'''','' || chr(10) end',
'				|| case when p_Filter_Path_Cond IS NOT NULL then ''p_Filter_Path_Cond => q''''{'' || p_Filter_Path_Cond || ''}'''','' || chr(10) end',
'				|| ''p_Save_File_Code => q''''{'' || p_Save_File_Code || ''}'''','' || chr(10)',
'				|| case when p_Parent_Folder IS NOT NULL then ''p_Parent_Folder => q''''{'' || p_Parent_Folder || ''}'''','' || chr(10) end',
'				|| ''p_Context => '' || p_Context || '','' || chr(10)',
'				|| ''p_Only_Files => '' || case when p_Only_Files then ''true'' else ''false'' end || '','' || chr(10)',
'				|| ''p_Skip_Empty => '' || case when p_Skip_Empty then ''true'' else ''false'' end || '','' || chr(10)',
'				|| ''p_Skip_Dot => '' || case when p_Skip_Dot then ''true'' else ''false'' end || '','' || chr(10)',
'				|| ''p_Encoding => q''''{'' || v_encoding || ''}'''''' || chr(10)',
'				|| '');'' || chr(10)',
'				|| ''end;'';',
'$IF Unzip_Parallel.c_debug $THEN',
'			dbms_output.put_line(''----'');',
'			dbms_output.put_line(v_process_text);',
'$END',
'			commit; -- create folders finished',
'			Unzip_Parallel.Expand_Zip_Parallel (v_process_text, v_total_count, p_SQLCode, p_Message);',
'		else',
'			Unzip_Parallel.Expand_Zip_Range(',
'					p_Init_Session_Code => p_Init_Session_Code,',
'					p_Load_Zip_Code => p_Load_Zip_Code,',
'					p_Load_Zip_Query => p_Load_Zip_Query,',
'					p_Search_Value => p_Search_Value,',
'					p_Create_Path_Code => v_Create_Path_Code,',
'					p_Filter_Path_Cond => p_Filter_Path_Cond,',
'					p_Save_File_Code => p_Save_File_Code,',
'					p_Parent_Folder => p_Parent_Folder,',
'					p_Context => p_Context,',
'					p_Only_Files => p_Only_Files,',
'					p_Skip_Empty => p_Skip_Empty,',
'					p_Skip_Dot => p_Skip_Dot,',
'					p_Encoding => v_encoding',
'			);',
'			commit; -- create files and folders finished',
'			p_SQLCode := 0;',
'		end if;',
'		if p_Delete_Zip_Query IS NOT NULL then ',
'			Unzip_Parallel.Delete_Zip_File_Query (p_Delete_Zip_Query, p_Search_Value);',
'		end if;',
'	exception',
'	  when others then',
'	  	p_SQLCode := SQLCODE;',
'	  	p_Message := SQLERRM;',
'		if p_Delete_Zip_Query IS NOT NULL then ',
'			Unzip_Parallel.Delete_Zip_File_Query (p_Delete_Zip_Query, p_Search_Value);',
'		end if;	  	',
'	end Expand_Zip_Archive;',
'',
'	PROCEDURE Default_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2)',
'	is',
'	begin',
'		dbms_output.put_line(''Expand_Zip_Archive_Job for file '' || p_Filename || '', Result : '' || p_SQLCode || ''  '' || p_Message );',
'	end;',
'',
'	PROCEDURE PLSQL_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2)',
'	is',
'		v_message		VARCHAR2(4000);',
'	begin',
'		if p_Message IS NOT NULL then',
'			v_message := APEX_LANG.LANG (',
'				p_primary_text_string => p_Message,',
'				p_primary_language => ''en''',
'			);',
'			raise_application_error (Unzip_Parallel.c_App_Error_Code, v_message);',
'		end if;',
'	end;',
'',
'	PROCEDURE AJAX_Completion (p_SQLCode NUMBER, p_Message VARCHAR2, p_Filename VARCHAR2)',
'	is',
'	begin',
'		htp.init();',
'		if p_SQLCode = 0 then',
'			htp.p(''OK'');',
'		else',
'			htp.p(p_Message);',
'		end if;',
'	exception when value_error then',
'		dbms_output.put_line(p_Message);',
'	end;',
'',
'	PROCEDURE Expand_Zip_Archive_Job (',
'		p_Init_Session_Code VARCHAR2 DEFAULT NULL,	-- PL/SQL code for initialization of session context.',
'		p_Load_Zip_Query	VARCHAR2,	-- SQL Query for loading the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind to the Page Item provided by the Search Item Attribute.',
'		p_Delete_Zip_Query	VARCHAR2 DEFAULT NULL,	-- SQL Query for deleting the source of the zipped blob and filename. The bind variable :search_value or an page item name can be used to bind.',
'		p_File_Names		VARCHAR2,	-- file names for the bind variable in the Load Zip Query code.',
'		p_Folder_query 		VARCHAR2,	-- SQL Query for parameters to store the folders in a recursive tree table. When this field is empty, the :file_name will be prefixed with the path in the Save file code.',
'		p_Filter_Path_Cond 	VARCHAR2 DEFAULT ''true'',-- Condition to filter the folders that are extracted from the zip archive. The bind variable :path_name delivers path names like /root/sub1/sub2/ to the expression.',
'		p_Save_File_Code 	VARCHAR2,				-- PL/SQL code to save an unzipped file from the zip archive. The bind variables :unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id deliver values to be saved.',
'		p_Parent_Folder 	VARCHAR2 DEFAULT NULL,	-- Pathname of the Directory where the unzipped files are saved.',
'		p_Container_ID		NUMBER  DEFAULT NULL,   -- folder table foreign key reference value to container table',
'		p_Context  			BINARY_INTEGER DEFAULT 0,',
'		p_Completion_Procedure VARCHAR2 DEFAULT ''unzip_parallel.Default_Completion'' -- Name of a procedure with a call profile like: unzip_Completion(p_SQLCode NUMBER, p_Message VARCHAR2)',
'	)',
'	is',
'		v_file_names 	apex_application_global.vc_arr2;',
'		v_message		VARCHAR2(4000);',
'		v_SQLCode 		INTEGER;',
'	begin',
'		v_file_names := apex_util.string_to_table( p_File_Names );',
'		for i in 1 .. v_file_names.count loop',
'			Unzip_Parallel.Expand_Zip_Archive (',
'				p_Init_Session_Code => p_Init_Session_Code,',
'				p_Load_Zip_Query => p_Load_Zip_Query,',
'				p_Delete_Zip_Query => p_Delete_Zip_Query,',
'				p_Search_Value => v_file_names(i),',
'				p_Folder_query => p_Folder_query,',
'				p_Filter_Path_Cond => p_Filter_Path_Cond,',
'				p_Save_File_Code => p_Save_File_Code,',
'				p_Parent_Folder => p_Parent_Folder,',
'				p_Container_ID => p_Container_ID,',
'				p_Context => p_Context,',
'				p_Execute_Parallel	=> true,',
'				p_SQLCode => v_SQLCode,',
'				p_Message => v_Message',
'			);',
'			if p_Completion_Procedure IS NOT NULL then ',
'				execute immediate ''begin '' || p_Completion_Procedure || ''(:a, :b, :c); end;''',
'				using in v_SQLCode, v_Message, v_file_names(i);',
'			end if;',
'		end loop;',
'	end Expand_Zip_Archive_Job;',
'',
'end unzip_parallel;',
'/',
'show errors',
'',
''))
);
null;
end;
/
prompt --application/deployment/install/install_unzip_parallel_plugin
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(81192723597157033)
,p_install_id=>wwv_flow_api.id(79688763819208918)
,p_name=>'unzip_parallel_plugin'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Copyright 2017-2019 Dirk Strack',
'',
'Licensed under the Apache License, Version 2.0 (the "License");',
'you may not use this file except in compliance with the License.',
'You may obtain a copy of the License at',
'',
'    http://www.apache.org/licenses/LICENSE-2.0',
'',
'Unless required by applicable law or agreed to in writing, software',
'distributed under the License is distributed on an "AS IS" BASIS,',
'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.',
'See the License for the specific language governing permissions and',
'limitations under the License.',
'*/',
'',
'CREATE OR REPLACE function Unzip_Parallel_Plugin (',
'	p_process in apex_plugin.t_process,',
'	p_plugin  in apex_plugin.t_plugin )',
'return apex_plugin.t_process_exec_result',
'is',
'/* Process plug-in for reading a zip file from a table, storing all expanded files in one table and the folders for the files in a second table.',
'	The table for the files has a least the two columns for file_name varchar2, file_content blob',
'	and optionally file_date date, file_size number, mime_type varchar2(300), folder_id number.',
'	The table for the folders has at least a folder_id number, parent_id number, folder_name varchar2.',
'	When no folder definition is provided in the Folder Query attribute, full pathnames are stored in the file_name field of the files table.',
'	Zip file larger than 5MB will be processed in parallel to reduce the processing time when parallel execution is enabled.',
'*/',
'	v_exec_result apex_plugin.t_process_exec_result;',
'	v_Load_Zip_Query 	VARCHAR2(4000);',
'	v_Search_Value		VARCHAR2(4000);',
'	v_Init_Session_Code VARCHAR2(4000);',
'	v_Execute_Parallel	BOOLEAN;',
'	v_message			VARCHAR2(2000);',
'	v_SQLCode 			INTEGER;',
'begin',
'	-- p_plugin.attribute_01:  Load Zip File Query',
'	-- p_plugin.attribute_03:  Search Item',
'	-- p_plugin.attribute_03:  Folder Query',
'	-- p_plugin.attribute_04:  Filter Path Condition',
'	-- p_plugin.attribute_05:  Save File Code',
'	-- p_plugin.attribute_06:  Parent Folder',
'	-- p_plugin.attribute_07:  Parallel Execution',
'',
'	-- p_process.attribute_01: Init Session Code',
'	-- p_process.attribute_02: Skip Empty Files',
'	-- p_process.attribute_03: Skip Dot Files',
'	-- p_process.attribute_04: Only Files',
'	-- p_process.attribute_05: Encoding',
'	if apex_application.g_debug then',
'		apex_plugin_util.debug_process (',
'			p_plugin => p_plugin,',
'			p_process => p_process',
'		);',
'	end if;',
'	v_Load_Zip_Query:= replace(p_process.attribute_01, p_process.attribute_02, ''search_value'' );',
'	v_Search_Value 	:= apex_util.get_session_state(p_process.attribute_02);',
'	v_Execute_Parallel := case when p_process.attribute_07 = ''Y'' then true else false end;',
'	if instr(upper(v_Load_Zip_Query), ''APEX_APPLICATION_TEMP_FILES'') > 0',
'	or instr(upper(v_Load_Zip_Query), ''WWV_FLOW_FILES'') > 0 then',
'		v_Execute_Parallel := false;	-- this views are not accessable by background jobs',
'	end if;',
'	v_Init_Session_Code :=',
'			''apex_session.attach ('' || ',
'			''p_app_id=>'' || V(''APP_ID'') || '', '' || ',
'			''p_page_id=>'' || V(''APP_PAGE_ID'') || '', '' || ',
'			''p_session_id=>'' || V(''APP_SESSION'') || ',
'			'');'' || chr(10) || p_plugin.attribute_01 ;',
'',
'	Unzip_Parallel.Expand_Zip_Archive (',
'			p_Init_Session_Code => v_Init_Session_Code,',
'			p_Load_Zip_Query 	=> v_Load_Zip_Query,',
'			p_Search_Value 		=> v_Search_Value,',
'			p_Folder_query 		=> p_process.attribute_03,',
'			p_Filter_Path_Cond 	=> p_process.attribute_04,',
'			p_Save_File_Code 	=> p_process.attribute_05,',
'			p_Parent_Folder 	=> p_process.attribute_06,',
'			p_Context			=> NVL(MOD(NV(''APP_SESSION''), POWER(2,31)), 0),',
'			p_Skip_Empty 		=> case when p_plugin.attribute_02 = ''Y'' then true else false end,',
'			p_Skip_Dot 			=> case when p_plugin.attribute_03 = ''Y'' then true else false end,',
'			p_Only_Files		=> case when p_plugin.attribute_04 = ''Y'' then true else false end,',
'			p_Execute_Parallel	=> v_Execute_Parallel,',
'			p_Encoding			=> p_plugin.attribute_05,',
'			p_SQLCode 			=> v_SQLCode,',
'			p_Message 			=> v_Message',
'	);',
'	if v_message IS NOT NULL then',
'		v_message := APEX_LANG.LANG (',
'			p_primary_text_string => v_Message,',
'			p_primary_language => ''en''',
'		);',
'		raise_application_error (Unzip_Parallel.c_App_Error_Code, v_message);',
'	end if;',
'	return v_exec_result;',
'end Unzip_Parallel_Plugin;',
'/',
'',
'',
''))
);
end;
/
prompt --application/deployment/install/install_unzip_parallel_example
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(81192895791160413)
,p_install_id=>wwv_flow_api.id(79688763819208918)
,p_name=>'unzip_parallel_example'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Copyright 2017-2019 Dirk Strack',
'',
'Licensed under the Apache License, Version 2.0 (the "License");',
'you may not use this file except in compliance with the License.',
'You may obtain a copy of the License at',
'',
'    http://www.apache.org/licenses/LICENSE-2.0',
'',
'Unless required by applicable law or agreed to in writing, software',
'distributed under the License is distributed on an "AS IS" BASIS,',
'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.',
'See the License for the specific language governing permissions and',
'limitations under the License.',
'*/',
'',
'CREATE OR REPLACE VIEW VUNZIP_PARALLEL_PROGRESS (',
'	MESSAGE, TIME_REMAINING, TIME_ELAPSED, PERCENT, TARGET_DESC',
')',
'AS -- Support for monitoring',
'SELECT REPLACE(MESSAGE, OPNAME ||'': ''|| TARGET_DESC, OPNAME) MESSAGE,',
'    TRUNC(TIME_REMAINING / 3600)',
'    || '':'' || LPAD(MOD(TRUNC(TIME_REMAINING / 60), 60), 2, ''0'')',
'    || '':'' || LPAD(MOD(TIME_REMAINING, 60), 2, ''0'') TIME_REMAINING,',
'    TRUNC(ELAPSED_SECONDS / 3600)',
'    || '':'' || LPAD(MOD(TRUNC(ELAPSED_SECONDS / 60), 60), 2, ''0'')',
'    || '':'' || LPAD(MOD(ELAPSED_SECONDS, 60), 2, ''0'') ELAPSED_SECONDS,',
'    ROUND(NVL(SOFAR / NULLIF(TOTALWORK, 0), 1) * 100) AS PERCENT,',
'    TARGET_DESC',
'FROM V$SESSION_LONGOPS',
'WHERE USERNAME = SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'')',
'AND CONTEXT IN (NVL(MOD(NV(''APP_SESSION''), POWER(2,31)), 0), 0)		-- context is of type BINARY_INTEGER',
'AND OPNAME = ''Expand_Zip_Archive''',
'AND START_TIME >= SYSDATE - (1 / 24)',
'AND SOFAR < TOTALWORK',
'ORDER BY LAST_UPDATE_TIME DESC, PERCENT',
';',
'',
'',
'',
'-- Demo Schema',
'CREATE SEQUENCE DEMO_FOLDERS_SEQ;',
'',
'CREATE TABLE DEMO_FOLDERS (',
'	ID NUMBER DEFAULT ON NULL DEMO_FOLDERS_SEQ.NEXTVAL NOT NULL ENABLE,',
'	PARENT_ID NUMBER,',
'	FOLDER_NAME VARCHAR2(200) NOT NULL ENABLE,',
'	CONSTRAINT DEMO_FOLDERS_PK PRIMARY KEY (ID),',
'	CONSTRAINT DEMO_FOLDERS_FK FOREIGN KEY (PARENT_ID) REFERENCES DEMO_FOLDERS(ID) ON DELETE CASCADE,',
'	CONSTRAINT DEMO_FOLDERS_UK UNIQUE (PARENT_ID, FOLDER_NAME)',
');',
'',
'CREATE SEQUENCE DEMO_FILES_SEQ;',
'',
'CREATE TABLE DEMO_FILES (',
'	ID NUMBER(11,0) DEFAULT ON NULL DEMO_FILES_SEQ.NEXTVAL NOT NULL ENABLE,',
'	FILE_CONTENT BLOB,',
'	FILE_NAME VARCHAR2(300),',
'	FILE_DATE DATE,',
'	FILE_SIZE NUMBER,',
'	MIME_TYPE VARCHAR2(300),',
'	FOLDER_ID NUMBER,',
'	CONSTRAINT DEMO_FILES_PK PRIMARY KEY (ID),',
'	CONSTRAINT DEMO_FILES_FK FOREIGN KEY (FOLDER_ID) REFERENCES DEMO_FOLDERS(ID) ON DELETE CASCADE,',
'	CONSTRAINT DEMO_FILES_UK UNIQUE (FOLDER_ID, FILE_NAME)',
');',
'',
'insert into demo_folders (folder_name) values(''Home'');',
'commit;',
'--',
'CREATE OR REPLACE PROCEDURE Expand_Demo_Files_Job (',
'	p_File_ID 			INTEGER,',
'	p_Parent_Folder 	VARCHAR2 DEFAULT ''/Home'',',
'	p_Execute_Parallel 	BOOLEAN DEFAULT true',
') -- this procedure is called on demand by an ajax request',
'AUTHID DEFINER',
'is',
'	v_message			VARCHAR2(4000);',
'	v_SQLCode 			INTEGER;',
'begin',
'	if apex_application.g_debug then',
'        apex_debug.info(''Expand_Demo_Files_Job : %s %s'', p_File_ID, p_Parent_Folder);',
'    end if;',
'	Unzip_Parallel.Expand_Zip_Archive (',
'			p_Load_Zip_Query => ''SELECT FILE_CONTENT, FILE_NAME '' || chr(10) ||',
'								''FROM DEMO_FILES '' || chr(10) ||',
'								''WHERE  LOWER(MIME_TYPE) = ''''application/zip'''' '' || chr(10) ||',
'								''AND ID = :search_value'',',
'			p_Search_Value => p_File_ID,',
'			p_Folder_query => ''SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS'',',
'			p_Filter_Path_Cond => ''instr(:path_name, ''''__MACOSX/'''') != 1'',',
'			p_Save_File_Code => ''INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID)'' || chr(10) ||',
'								''VALUES	(:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);'',',
'			p_Parent_Folder => p_Parent_Folder,',
'			p_Execute_Parallel	=> p_Execute_Parallel,',
'			p_SQLCode => v_SQLCode,',
'			p_Message => v_Message',
'	);',
'	begin',
'		if v_SQLCode = 0 then',
'			v_message := ''OK'';',
'		end if;',
'		htp.init();',
'		htp.p(v_message);',
'	exception when value_error then',
'		dbms_output.put_line(v_message);',
'	end;',
'end;',
'/',
'',
'CREATE OR REPLACE PROCEDURE Expand_Files_Job (',
'	p_File_Name			VARCHAR2,',
'	p_Parent_Folder 	VARCHAR2 DEFAULT ''/Home'',',
'	p_Execute_Parallel 	BOOLEAN DEFAULT true',
') -- this procedure is called on demand by an ajax request',
'AUTHID DEFINER',
'is',
'	v_message			VARCHAR2(4000);',
'	v_SQLCode 			INTEGER;',
'	v_Init_Session_Code VARCHAR2(4000);',
'	v_Load_Zip_File_Query VARCHAR2(4000);',
'	v_Save_File_Code 	VARCHAR2(4000);',
'begin',
'	if apex_application.g_debug then',
'        apex_debug.info(''Expand_Files_Job : %s %s'', p_File_Name, p_Parent_Folder);',
'    end if;',
'	v_Init_Session_Code :=',
'			''apex_session.attach ('' || ',
'			''p_app_id=>'' || V(''APP_ID'') || '', '' || ',
'			''p_page_id=>'' || V(''APP_PAGE_ID'') || '', '' || ',
'			''p_session_id=>'' || V(''APP_SESSION'') || ',
'			'');'';',
'	',
'	v_Load_Zip_File_Query :=',
'			''select BLOB_CONTENT, FILENAME'' || chr(10) ||',
'			''from APEX_APPLICATION_TEMP_FILES'' || chr(10) ||',
'			''where LOWER(MIME_TYPE) = ''''application/zip'''' '' || chr(10) ||',
'			''and FILENAME = :search_value'';',
'	v_Save_File_Code := ''INSERT INTO DEMO_FILES (FILE_CONTENT, FILE_NAME, FILE_DATE, FILE_SIZE, MIME_TYPE, FOLDER_ID)'' || chr(10) ||',
'						''VALUES	(:unzipped_file, :file_name, :file_date, :file_size, :mime_type, :folder_id);'';',
'	Unzip_Parallel.Expand_Zip_Archive (',
'			p_Init_Session_Code => v_Init_Session_Code,',
'			p_Load_Zip_Query => v_Load_Zip_File_Query,',
'			p_Search_Value => p_File_Name,',
'			p_Folder_query => ''SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS'',',
'			p_Filter_Path_Cond => ''instr(:path_name, ''''__MACOSX/'''') != 1'',',
'			p_Save_File_Code => v_Save_File_Code,',
'			p_Parent_Folder => p_Parent_Folder,',
'			p_Execute_Parallel	=> p_Execute_Parallel,',
'			p_SQLCode => v_SQLCode,',
'			p_Message => v_Message',
'	);',
'	begin',
'		if v_SQLCode = 0 then',
'			v_message := ''OK'';',
'		end if;',
'		htp.init();',
'		htp.p(v_message);',
'	exception when value_error then',
'		dbms_output.put_line(v_message);',
'	end;',
'end Expand_Files_Job;',
'/',
'',
'',
'CREATE OR REPLACE PROCEDURE Expand_Apex_Zip_Job (',
'	p_File_ID 			INTEGER,',
'	p_Parent_Folder 	VARCHAR2 DEFAULT ''/Home''',
')',
'AUTHID DEFINER',
'is -- for performance comparison with the provided library APEX_ZIP from Oracle',
'	v_zip_file blob;',
'	v_unzipped_file blob;',
'	v_files apex_zip.t_files;',
'	v_Full_Path 	VARCHAR2(4000);',
'	v_File_Name 	VARCHAR2(4000);',
'	v_Folder_query  VARCHAR2(4000);',
'	v_Save_File_Code VARCHAR2(4000);',
'	v_root_id 		INTEGER;',
'	v_Folder_Id		INTEGER;',
'begin',
'	v_Folder_query   := ''SELECT ID, PARENT_ID, FOLDER_NAME FROM DEMO_FOLDERS'';',
'	v_Save_File_Code := ''INSERT INTO DEMO_FILES ( FILE_CONTENT, FILE_NAME, FOLDER_ID ) '' ||',
'						''VALUES ( :unzipped_file, :File_Name, :Folder_Id );'';',
'	select FILE_CONTENT',
'	into v_zip_file',
'	from DEMO_FILES',
'	where LOWER(MIME_TYPE) = ''application/zip''',
'	and ID = p_File_ID;',
'',
'	v_root_id := Unzip_Parallel.Create_Path(',
'		p_Path_Name => p_Parent_Folder,',
'		p_Root_Id => null,',
'		p_Folder_query => v_Folder_query',
'	);',
'',
'	v_files := APEX_ZIP.GET_FILES ( p_zipped_blob => v_zip_file );',
'	for i in 1 .. v_files.count loop',
'		v_Full_Path := v_files(i);',
'		v_File_Name := SUBSTR(v_Full_Path, INSTR(v_Full_Path, ''/'', -1) + 1);',
'		if instr(v_Full_Path, ''__MACOSX/'') != 1 then',
'			v_unzipped_file := APEX_ZIP.GET_FILE_CONTENT (',
'				p_zipped_blob => v_zip_file,',
'				p_file_name => v_Full_Path',
'			);',
'			v_Folder_Id := Unzip_Parallel.Create_Path(',
'				p_Path_Name => v_Full_Path,',
'				p_Root_Id => v_root_id,',
'				p_Folder_query => v_Folder_query',
'			);',
'',
'			execute immediate ''begin '' || v_Save_File_Code || '' end;''',
'			using v_File_Name, v_unzipped_file, v_Folder_Id;',
'		end if;',
'	end loop;',
'	commit;',
'end;',
'/',
'',
'',
'/*',
'',
'exec Expand_Demo_Files_Job(1, ''/Home'', true);',
'--',
'delete from DEMO_FILES where ID not in ( 1 ) or FOLDER_ID IS NULL;',
'delete from DEMO_FOLDERS t where NOT EXISTS (select 1 from DEMO_FILES s where s.folder_id = t.id) ;',
'commit;',
'',
'exec Expand_Zip_Apex_Job(1, ''/Home'');',
'',
'',
'--',
'DROP TABLE DEMO_FILES;',
'DROP TABLE DEMO_FOLDERS;',
'DROP SEQUENCE DEMO_FOLDERS_SEQ;',
'DROP SEQUENCE DEMO_FILES_SEQ;',
'*/',
'',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
