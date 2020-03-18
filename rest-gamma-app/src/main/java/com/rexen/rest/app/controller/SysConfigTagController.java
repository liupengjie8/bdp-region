package com.rexen.rest.app.controller;


import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.common.constant.DictPermissionConstant;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.entity.SysConfig;
import com.rexen.rest.model.vo.SysConfigTagVO;
import com.rexen.rest.service.SysConfigTagService;
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
 * 配置管理
 * @author Jaco
 * @since 2020-03-12
 */
@Controller
@RequestMapping({"/api/sysConfig"})
public class SysConfigTagController  extends AbstractController{

    @Autowired
    private SysConfigTagService sysConfigTagService;

    /**
     * 配置管理
     * @param page
     * @param name
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.CONFIG_VIEW)
    @ApiOperation(value = "配置管理列表")
    @RestFunction(module = "配置管理模块", operation = "配置管理列表")
    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> page(RestPage page,String name) throws RestBaseException {
        return renderSuccess(sysConfigTagService.findPage(page,name));
    }

    /**
     * 新增配置
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.CONFIG_ADD)
    @ApiOperation(value = "新增配置")
    @RestFunction(module = "配置管理模块", operation = "新增配置")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody @Valid SysConfigTagVO vo) throws RestBaseException {
        sysConfigTagService.add(vo);
        return renderSuccess();
    }

    /**
     * 修改配置
     * @param sysConfig
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.CONFIG_EDIT)
    @ApiOperation(value = "修改配置")
    @RestFunction(module = "配置管理模块", operation = "修改配置")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody @Valid SysConfig sysConfig) throws RestBaseException {
        sysConfigTagService.edit(sysConfig);
        return renderSuccess();
    }
}
