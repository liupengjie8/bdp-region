package com.rexen.rest.model.vo;

/**
 *  字典类型VO
 * @author Jaco
 * @since 2020-03-06
 */
public class SysDictTypeVO {

    /**
     * 字典描述
     */
    private String description;
    /**
     * 字典编码
     */
    private String code;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "SysDictTypeVO{" +
                "description='" + description + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
