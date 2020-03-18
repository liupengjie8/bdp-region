package com.rexen.rest.service.impl;

import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.mapper.SysLocationMapper;
import com.rexen.rest.service.SysLocationService;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 位置管理
 服务实现类
 * </p>
 *
 * @author lpj
 * @since 2020-03-18
 */
@Service
public class SysLocationServiceImpl extends ServiceImpl<SysLocationMapper, SysLocation> implements SysLocationService {

    @Override
    public RestPage<SysLocation> selectSysLocationListByPage(RestPage<SysLocation> page) {
        return baseMapper.selectSysLocationListByPage(page);
    }
}
