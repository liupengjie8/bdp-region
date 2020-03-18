package com.rexen.rest.model.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 字典增加，查询，编辑
 * @author Jaco
 * @since 2020-03-06
 */
@ApiModel(description = "字典管理")
public class SysDictTypeViewVO {
    /**
     * 字典名称
     */
    @NotBlank(message = "字典名称不能为空")
    @ApiModelProperty(value = "字典名称")
    private String description;
    /**
     * 字典编码
     */
    @NotBlank(message = "字典编码不能为空")
    @ApiModelProperty(value = "字典编码")
    private String code;
    /**
     * 备注
     */
    private String extension;

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

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    @Override
    public String toString() {
        return "SysDictTypeViewVO{" +
                "description='" + description + '\'' +
                ", code='" + code + '\'' +
                ", extension='" + extension + '\'' +
                '}';
    }
}
