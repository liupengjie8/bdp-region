package com.rexen.rest.model.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 菜单编辑
 * @author Jaco
 * @since 2020-03-12
 */
public class SysMenuEditVO extends SysMenuAddVO {
    /**
     * 主键ID
     */
    @NotBlank(message = "主键ID不能为空")
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
