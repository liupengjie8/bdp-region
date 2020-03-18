package com.rexen.rest.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rexen.rest.model.entity.SysOperationLog;
import com.rexen.rest.model.vo.SysLogResponseVO;
import com.rexen.rest.model.vo.SysLogVO;
import org.apache.ibatis.annotations.Param;


/**
 * 日志管理Mapper
 * @author Jaco
 * @since 2020-03-09
 */
public interface SysLogMapper  extends BaseMapper<SysOperationLog> {


    /**
     * 日志管理列表
     * @param page
     * @param userName
     * @param userId
     * @param startDate
     * @param endDate
     * @param module
     * @param clientIp
     * @param operationType
     * @return
     */
    IPage<SysLogResponseVO> findPage(Page<SysLogVO> page, @Param("userName")String userName, @Param("userId")String userId,
                                     @Param("startDate")String startDate, @Param("endDate")String endDate,
                                     @Param("module")String module, @Param("clientIp")String clientIp,
                                     @Param("operationType")String operationType);
}
