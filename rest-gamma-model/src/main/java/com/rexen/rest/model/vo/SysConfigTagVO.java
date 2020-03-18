package com.rexen.rest.model.vo;


import org.hibernate.validator.constraints.NotBlank;

/**
 * @author Jaco
 * @since 2020-03-12
 */
public class SysConfigTagVO {
    /**
     * 配置类型名
     */
    @NotBlank(message = "配置名不能为空")
    private String name;
    /**
     * 配置值
     */
    @NotBlank(message = "配置值不能为空")
    private String value;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
