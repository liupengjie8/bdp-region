package com.rexen.rest.model.vo;

/**
 * 字典类型返回
 * @author Jaco
 * @since 2020-03-06
 */
public class SysDictTypeResponseVO {

    /**
     * 字典类型ID
     */
    private String id;
    /**
     * 字典名称
     */
    private String description;
    /**
     * 字典编码
     */
    private String code;
    /**
     * 创建时间
     */
    private String createTime;
    /**
     * 备注
     */
    private String extension;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }
}
