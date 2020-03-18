package com.rexen.rest.model.vo;

import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 键值管理
 * @author Jaco
 * @since 2020-03-06
 */
public class SysDictValueAddVO {
    /**
     * 字典标签
     */
    @NotBlank(message = "字典标签不能为空")
    @ApiModelProperty(value = "字典标签")
    private String name;
    /**
     * 字典键值
     */
    @NotBlank(message = "字典键值不能为空")
    @ApiModelProperty(value = "字典键值")
    private String value;
    /**
     * 键值状态
     */
    private int enable;
    /**
     * 备注
     */
    private String extension;
    /**
     * 字典ID
     */
    private String typeId;

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

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    @Override
    public String toString() {
        return "SysDictValueEditVO{" +
                "name='" + name + '\'' +
                ", value='" + value + '\'' +
                ", enable='" + enable + '\'' +
                ", extension='" + extension + '\'' +
                ", typeId='" + typeId + '\'' +
                '}';
    }
}
