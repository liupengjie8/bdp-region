package com.rexen.rest.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rexen.rest.model.entity.SysConfig;
import org.apache.ibatis.annotations.Param;

/**
 * 配置管理
 * @author Jaco
 * @since 2020-03-12
 */
public interface SysConfigTagMapper extends BaseMapper<SysConfig> {
    /**
     * 配置管理列表
     * @param page
     * @param name
     * @return
     */
    IPage<SysConfig> findPage(Page<SysConfig> page, @Param("name")String name);
}
