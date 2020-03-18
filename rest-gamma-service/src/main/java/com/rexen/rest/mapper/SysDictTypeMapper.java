package com.rexen.rest.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rexen.rest.model.entity.SysDictionaryType;
import com.rexen.rest.model.vo.SysDictTypeResponseVO;
import org.apache.ibatis.annotations.Param;

/**
 * 字典类型Mapper
 * @author Jaco
 * @since 2020-03-06
 */
public interface SysDictTypeMapper extends BaseMapper<SysDictionaryType> {

    /**
     * 字典管理列表
     * @param page
     * @param description
     * @param code
     * @return
     */
    IPage<SysDictTypeResponseVO> findPage(Page<SysDictTypeResponseVO> page, @Param("description")String description,@Param("code")String code);


}
