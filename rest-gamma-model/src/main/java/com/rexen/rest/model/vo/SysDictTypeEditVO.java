package com.rexen.rest.model.vo;

import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 修改字典
 * @author Jaco
 * @since 2020-03-06
 */
public class SysDictTypeEditVO extends SysDictTypeViewVO {
    /**
     * 字典主键
     */
    @NotBlank(message = "字典主键不能为空")
    @ApiModelProperty(value = "字典主键")
    private String id;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
