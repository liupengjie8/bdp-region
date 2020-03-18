package com.rexen.rest.common.constant;

import com.rexen.rest.annotation.FieldName;

/**
 * 权限控制
 * @author Jaco
 * @since 2020-03-06
 */
public class DictPermissionConstant {

    @FieldName("字典类型查看")
    public static final String DICT_VIEW = "sys:dict:view";
    @FieldName("字典类型添加")
    public static final String DICT_ADD = "sys:dict:add";
    @FieldName("字典类型编辑")
    public static final String DICT_EDIT = "sys:dict:edit";
    @FieldName("字典类型删除")
    public static final String DICT_DELETE = "sys:dict:delete";
    @FieldName("日志查看")
    public static final String LOG_VIEW = "sys:log:view";

    @FieldName("配置查看")
    public static final String CONFIG_VIEW = "sys:config:view";
    @FieldName("配置新增")
    public static final String CONFIG_ADD = "sys:config:add";
    @FieldName("配置编辑")
    public static final String CONFIG_EDIT = "sys:config:edit";

    @FieldName("菜单查看")
    public static final String MENU_VIEW = "sys:menu:view";
    @FieldName("菜单新增")
    public static final String MENU_ADD = "sys:menu:add";
    @FieldName("菜单编辑")
    public static final String MENU_EDIT = "sys:menu:edit";


}
