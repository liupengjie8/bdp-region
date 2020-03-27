package com.rexen.rest.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.rexen.rest.model.entity.SysUser;
import com.rexen.rest.model.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    RestPage<SysLocation> selectSysLocationList(Page<SysLocation> page,  @Param("deptId") List<String> deptId);

}
