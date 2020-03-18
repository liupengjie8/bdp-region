package com.rexen.rest.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.model.entity.SysConfig;
import com.rexen.rest.model.vo.SysConfigTagVO;

/**
 * 配置管理Service
 * @author Jaco
 * @since 2020-03-12
 */
public interface SysConfigTagService extends IService<SysConfig> {

    /**
     * 配置管理列表
     * @param page
     * @param name
     * @return
     */
    IPage<SysConfig> findPage(Page<SysConfig> page, String name);

    /**
     * 新增配置
     * @param vo
     * @throws RestBaseException
     */
    void add(SysConfigTagVO vo) throws RestBaseException;

    /**
     * 编辑配置
     * @param sysConfig
     * @throws RestBaseException
     */
    void edit(SysConfig sysConfig) throws RestBaseException;
}
