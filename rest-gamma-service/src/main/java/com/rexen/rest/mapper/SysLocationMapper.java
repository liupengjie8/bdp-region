package com.rexen.rest.mapper;

import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 位置管理
 Mapper 接口
 * </p>
 *
 * @author lpj
 * @since 2020-03-18
 */
public interface SysLocationMapper extends BaseMapper<SysLocation> {

    RestPage<SysLocation> selectSysLocationListByPage(RestPage<SysLocation> sysLocationRestPage);
}
