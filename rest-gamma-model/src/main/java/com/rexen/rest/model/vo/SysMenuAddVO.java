package com.rexen.rest.model.vo;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 菜单管理
 * @author Jaco
 * @since 2020-03-12
 */
public class SysMenuAddVO {

    /**
     * 上级菜单ID
     */
    private String parentId;
    /**
     * 菜单名称
     */
    @NotBlank(message = "菜单名称不能为空")
    private String name;
    /**
     * 菜单URL
     */
    @NotBlank(message = "菜单URL不能为空")
    private String url;
    /**
     * 类型 0:目录，1:菜单，2:操作
     */
    @NotNull(message = "类型不能为空")
    private Integer type;
    /**
     * 权限编码
     */
    @NotBlank(message = "权限编码不能为空")
    private String permissionCode;
    /**
     * 排序
     */
    private Integer sort;
    /**
     * 菜单状态
     */
    @NotNull(message = "菜单状态不能为空")
    private Integer enable;
    /**
     * 备注
     */
    private String extension;

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


    public String getPermissionCode() {
        return permissionCode;
    }

    public void setPermissionCode(String permissionCode) {
        this.permissionCode = permissionCode;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        if(sort == null) {
            this.sort = 30;
        } else {
            this.sort = sort;
        }
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }
}
