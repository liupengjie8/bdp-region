package com.rexen.rest.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.model.entity.SysMenu;
import com.rexen.rest.model.vo.SysMenuAddVO;
import com.rexen.rest.model.vo.SysMenuEditVO;

/**
 * 菜单管理Service
 * @author Jaco
 * @since 2020-03-12
 */
public interface SysMenuTagService  extends IService<SysMenu> {

    /**
     * 新增菜单
     * @param vo
     * @throws RestBaseException
     */
    void add(SysMenuAddVO vo) throws RestBaseException;

    /**
     * 修改菜单
     * @param vo
     * @throws RestBaseException
     */
    void edit(SysMenuEditVO vo) throws RestBaseException;
}
