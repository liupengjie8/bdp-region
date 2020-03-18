package com.rexen.rest.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.mapper.SysMenuTagMapper;
import com.rexen.rest.model.entity.SysMenu;
import com.rexen.rest.model.vo.SysMenuAddVO;
import com.rexen.rest.model.vo.SysMenuEditVO;
import com.rexen.rest.service.SysMenuTagService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.function.Function;

/**
 * 菜单管理
 * @author Jaco
 * @since 2020-03-12
 */
@Service
public class SysMenuTagServiceImpl extends ServiceImpl<SysMenuTagMapper,SysMenu> implements SysMenuTagService {

    Function<String,SysMenu> queryById = (x) -> {
        QueryWrapper<SysMenu> queryWrapper = new QueryWrapper<SysMenu>();
        queryWrapper.eq("id",x);
        return this.getOne(queryWrapper);
    };

    Function<String,SysMenu> queryByUrl = (x) -> {
        QueryWrapper<SysMenu> queryWrapper = new QueryWrapper<SysMenu>();
        queryWrapper.eq("url",x);
        return this.getOne(queryWrapper);
    };

    private void vefi(String url,String id) throws RestBaseException {
        SysMenu sysMenu = (SysMenu)this.queryByUrl.apply(url);
        if(sysMenu != null) {
            if(StringUtils.isEmpty(id)||!sysMenu.getId().equals(id)) {
                throw new RestBaseException("菜单URL重复");
            }
        }
    }

    /**
     * 菜单新增
     * @param vo
     * @throws RestBaseException
     */
    @Override
    public void add(SysMenuAddVO vo) throws RestBaseException {
        vefi(vo.getUrl(),null);
        SysMenu sysMenu = new SysMenu();
        if(StringUtils.isEmpty(vo.getParentId())) {
            sysMenu.setParentId("-1");
        } else {
            sysMenu.setParentId(vo.getParentId());
        }
        sysMenu.setId(UUID.randomUUID().toString());
        sysMenu.setName(vo.getName());
        sysMenu.setUrl(vo.getUrl());
        sysMenu.setType(vo.getType());
        sysMenu.setPermissionCode(vo.getPermissionCode());
        sysMenu.setSort(vo.getSort());
        sysMenu.setEnable(vo.getEnable());
        sysMenu.setExtension(vo.getExtension());
        sysMenu.setSysId("1");
        baseMapper.insert(sysMenu);
    }

    /**
     * 菜单修改
     * @param vo
     * @throws RestBaseException
     */
    @Override
    public void edit(SysMenuEditVO vo) throws RestBaseException {
        vefi(vo.getUrl(),vo.getId());
        SysMenu sysMenu = (SysMenu)this.queryById.apply(vo.getId());
        if(sysMenu != null) {
            if(StringUtils.isEmpty(vo.getParentId())) {
                sysMenu.setParentId("-1");
            } else {
                sysMenu.setParentId(vo.getParentId());
            }
            sysMenu.setName(vo.getName());
            sysMenu.setUrl(vo.getUrl());
            sysMenu.setType(vo.getType());
            sysMenu.setPermissionCode(vo.getPermissionCode());
            sysMenu.setSort(vo.getSort());
            sysMenu.setEnable(vo.getEnable());
            sysMenu.setExtension(vo.getExtension());
            sysMenu.setSysId("1");
            baseMapper.updateById(sysMenu);
        } else {
            throw new RestBaseException("未获取对象");
        }
    }
}
