package com.rexen.rest.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.mapper.SysLogMapper;
import com.rexen.rest.model.entity.SysOperationLog;
import com.rexen.rest.model.vo.SysLogResponseVO;
import com.rexen.rest.model.vo.SysLogVO;
import com.rexen.rest.service.SysLogService;
import com.rexen.rest.util.ParameterFilter;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 日志管理Impl
 * @author Jaco
 * @since 2020-03-09
 */
@Service
public class SysLogServiceImpl extends ServiceImpl<SysLogMapper, SysOperationLog> implements SysLogService {

    /**
     * 日志管理列表
     * @param page
     * @param vo
     * @return
     */
    @Override
    public IPage<SysLogResponseVO> findPage(Page<SysLogVO> page, SysLogVO vo) {
      /*模糊查询时易出现问题*/
        if (StringUtils.isNotEmpty(vo.getUserName())) {
            String str = ParameterFilter.likeFilters(vo.getUserName(),"%","_");
            vo.setUserName(str);
        }
        if (StringUtils.isNotEmpty(vo.getClientIp())) {
            String str = ParameterFilter.likeFilters(vo.getClientIp(),"%","_");
            vo.setClientIp(str);
        }
        if (StringUtils.isNotEmpty(vo.getOperationType())) {
            String str = ParameterFilter.likeFilters(vo.getOperationType(),"%","_");
            vo.setOperationType(str);
        }
        if (StringUtils.isNotEmpty(vo.getModule())) {
            String str = ParameterFilter.likeFilters(vo.getModule(),"%","_");
            vo.setModule(str);
        }
        IPage<SysLogResponseVO> sysOperationLogPage = baseMapper.findPage(page,vo.getUserName(),vo.getUserId(),
                vo.getStartDate(),vo.getEndDate(),vo.getModule(),vo.getClientIp(),vo.getOperationType());
        return sysOperationLogPage;
    }
}
