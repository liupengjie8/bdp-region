package com.rexen.rest.service;

import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.model.vo.SysLocationVO;

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

    RestPage<SysLocationVO> selectSysLocationListByPage(RestPage<SysLocationVO> page, String deptId);
}
