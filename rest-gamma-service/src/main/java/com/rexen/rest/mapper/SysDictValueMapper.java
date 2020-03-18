package com.rexen.rest.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.rexen.rest.model.entity.SysDictionaryValue;
import com.rexen.rest.model.vo.SysDictValueVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 键值管理Mapper
 * @author Jaco
 * @since 2020-03-06
 */
public interface SysDictValueMapper extends BaseMapper<SysDictionaryValue> {

    /**
     * TypeId 查询键值
     * @param typeId
     * @return
     */
    List<SysDictValueVO> findListByTypeId(@Param("typeId")String typeId);
}
