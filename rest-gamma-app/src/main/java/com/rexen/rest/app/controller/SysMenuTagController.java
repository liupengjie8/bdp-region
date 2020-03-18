package com.rexen.rest.app.controller;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.common.constant.DictPermissionConstant;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.model.vo.SysConfigTagVO;
import com.rexen.rest.model.vo.SysMenuAddVO;
import com.rexen.rest.model.vo.SysMenuEditVO;
import com.rexen.rest.service.SysMenuService;
import com.rexen.rest.service.SysMenuTagService;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * 菜单管理
 * @author Jaco
 * @since 2020-03-12
 */
@Controller
@RequestMapping({"/api/sysMenu"})
public class SysMenuTagController extends AbstractController {

    @Autowired
    private SysMenuTagService sysMenuTagService;
    @Autowired
    private SysMenuService sysMenuService;

    /**
     * 新增菜单
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.MENU_ADD)
    @ApiOperation(value = "新增菜单")
    @RestFunction(module = "菜单管理模块", operation = "新增菜单")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody @Valid SysMenuAddVO vo) throws RestBaseException {
        sysMenuTagService.add(vo);
        return renderSuccess();
    }

    /**
     * 修改菜单
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.MENU_EDIT)
    @ApiOperation(value = "修改菜单")
    @RestFunction(module = "菜单管理模块", operation = "修改菜单")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody @Valid SysMenuEditVO vo) throws RestBaseException {
        sysMenuTagService.edit(vo);
        return renderSuccess();

    }

    /**
     * 菜单列表
     * @return
     */
    @RequiresPermissions(DictPermissionConstant.MENU_VIEW)
    @ApiOperation(value = "菜单列表")
    @RestFunction(module = "菜单管理模块", operation = "菜单列表")
    @RequestMapping(value = "/nodelist", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list() {
        return this.renderSuccess(this.sysMenuService.getMenuTreeNodeList());
    }

}
