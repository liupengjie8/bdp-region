package com.rexen.rest.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.mapper.SysConfigTagMapper;
import com.rexen.rest.model.entity.SysConfig;
import com.rexen.rest.model.vo.SysConfigTagVO;
import com.rexen.rest.service.SysConfigTagService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.function.Function;

/**
 * 配置管理Impl
 * @author Jaco
 * @since 2020-03-12
 */
@Service
public class SysConfigTagServiceImpl extends ServiceImpl<SysConfigTagMapper,SysConfig> implements SysConfigTagService {

    /**
     * 配置管理列表
     * @param page
     * @param name
     * @return
     */
    @Override
    public IPage<SysConfig> findPage(Page<SysConfig> page, String name) {
        IPage<SysConfig> sysConfigIPage = baseMapper.findPage(page,name);
        return sysConfigIPage;
    }

    Function<String,SysConfig> querySysConfigById = (x) -> {
        QueryWrapper<SysConfig> queryWrapper = new QueryWrapper();
        queryWrapper.eq("id",x);
        return this.getOne(queryWrapper);
    };
    Function<String,SysConfig> querySysConfigByName = (x) -> {
        QueryWrapper<SysConfig> queryWrapper = new QueryWrapper();
        queryWrapper.eq("name",x);
        return this.getOne(queryWrapper);
    };

    /**
     * 验证重复
     * @param name
     * @throws RestBaseException
     */
    private void vief(String name,String id) throws RestBaseException {
        SysConfig sysConfig = (SysConfig)this.querySysConfigByName.apply(name);
        if(sysConfig != null) {
            if(StringUtils.isEmpty(id)||!sysConfig.getId().equals(id)) {
                throw new RestBaseException("配置名称重复");
            }

        }
    }

    /**
     * 新增配置
     * @param vo
     */
    @Override
    public void add(SysConfigTagVO vo) throws RestBaseException {
        vief(vo.getName(),null);
        SysConfig sysConfig = new SysConfig();
        sysConfig.setId(UUID.randomUUID().toString());
        sysConfig.setName(vo.getName());
        sysConfig.setValue(vo.getValue());
        baseMapper.insert(sysConfig);
    }

    /**
     * 编辑配置
     * @param sysConfig
     * @throws RestBaseException
     */
    @Override
    public void edit(SysConfig sysConfig) throws RestBaseException {
        vief(sysConfig.getName(),sysConfig.getId());
        SysConfig config =  (SysConfig)this.querySysConfigById.apply(sysConfig.getId());
        if(config != null) {
            config.setValue(sysConfig.getValue());
            config.setName(sysConfig.getName());
            baseMapper.updateById(config);
        } else {
            throw new RestBaseException("未查询到对象");
        }
    }

}
