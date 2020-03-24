package com.rexen.rest.mapper;

import com.rexen.rest.model.entity.SysBuilding;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 楼宇楼层管理 Mapper 接口
 * </p>
 *
 * @author lpj
 * @since 2020-03-23
 */
public interface SysBuildingMapper extends BaseMapper<SysBuilding> {

    RestPage<SysBuilding> selectSysBuildingListByPage(RestPage<SysBuilding> sysBuildingRestPage);

    RestPage<SysBuilding> selectBuilding(RestPage<SysBuilding> sysBuildingRestPage);

    RestPage<SysBuilding> selectStoreyByBuilding(RestPage<SysBuilding> sysBuildingRestPage);

}
