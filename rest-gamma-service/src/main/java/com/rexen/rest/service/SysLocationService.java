package com.rexen.rest.service;

import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 位置管理
 服务类
 * </p>
 *
 * @author lpj
 * @since 2020-03-18
 */
public interface SysLocationService extends IService<SysLocation> {

    RestPage<SysLocation> selectSysLocationListByPage(RestPage<SysLocation> page,String deptId);
}
