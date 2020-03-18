package com.rexen.rest.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.model.entity.SysOperationLog;
import com.rexen.rest.model.vo.SysLogResponseVO;
import com.rexen.rest.model.vo.SysLogVO;


/**
 * 日志管理Service
 * @author Jaco
 * @since 2020-03-09
 */
public interface SysLogService extends IService<SysOperationLog> {

    /**
     * 日志管理列表
     * @param page
     * @param vo
     * @return
     */
    IPage<SysLogResponseVO> findPage(Page<SysLogVO> page, SysLogVO vo);
}
