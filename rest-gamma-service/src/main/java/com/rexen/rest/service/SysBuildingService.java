package com.rexen.rest.service;

import com.rexen.rest.model.entity.SysBuilding;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 楼宇楼层管理 服务类
 * </p>
 *
 * @author lpj
 * @since 2020-03-23
 */
public interface SysBuildingService extends IService<SysBuilding> {
    RestPage<SysBuilding> selectBuilding(RestPage<SysBuilding> page);

    RestPage<SysBuilding> selectStoreyByBuilding(RestPage<SysBuilding> page);

    RestPage<SysBuilding> selectSysBuildingListByPage(RestPage<SysBuilding> page);
}
