package com.rexen.rest.service.impl;

import com.rexen.rest.mapper.SysBuildingMapper;
import com.rexen.rest.model.entity.SysBuilding;
import com.rexen.rest.service.SysBuildingService;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.service.SysPermissionDependencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 楼宇楼层管理 服务实现类
 * </p>
 *
 * @author lpj
 * @since 2020-03-23
 */
@Service
public class SysBuildingServiceImpl extends ServiceImpl<SysBuildingMapper, SysBuilding> implements SysBuildingService {
    public SysBuildingServiceImpl() {

    }

    @Override
    public RestPage<SysBuilding> selectBuilding(RestPage<SysBuilding> page) {
        return this.baseMapper.selectBuilding(page);
    }

    @Override
    public RestPage<SysBuilding> selectStoreyByBuilding(RestPage<SysBuilding> page) {
        return this.baseMapper.selectStoreyByBuilding(page);
    }

    @Override
    public RestPage<SysBuilding> selectSysBuildingListByPage(RestPage<SysBuilding> page) {
        return baseMapper.selectSysBuildingListByPage(page);
    }
}
