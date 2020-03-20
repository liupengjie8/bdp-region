package com.rexen.rest.app.controller;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.common.constant.GlobalConstant;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.service.SysLocationService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.UUID;

/**
 * <p>
 * 位置管理
 * :控制器
 * </p>
 *
 * @author lpj
 * @since 2020-03-18
 */
@Controller
@RequestMapping("/api/sysLocation")
public class SysLocationController extends AbstractController {

    @Autowired
    private SysLocationService sysLocationService;

    @ApiOperation(value = "位置管理列表")
    @RestFunction(module = "位置管理模块", operation = "获取列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list() {
        return renderSuccess(sysLocationService.list());
    }

    @ApiOperation(value = "位置管理分页查询列表")
    @RestFunction(module = "位置管理模块", operation = "分页查询列表")
    @RequestMapping(value = "/listByPage", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list(RestPage<SysLocation> page, SysLocation sysLocation) {
        sysLocation.setEnable(1);
        page.setParameter(sysLocation);
        return renderSuccess(sysLocationService.selectSysLocationListByPage(page));
    }

    @ApiOperation(value = "位置管理详情")
    @RestFunction(module = "位置管理模块", operation = "获取详情")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> get(@PathVariable(value = "id") String id) {
        return renderSuccess(sysLocationService.getById(id));
    }

    @ApiOperation(value = "位置管理编辑")
    @RestFunction(module = "位置管理模块", operation = "编辑数据")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody SysLocation sysLocation) {
        return renderSuccess(sysLocationService.updateById(sysLocation));
    }

    @ApiOperation(value = "位置管理删除")
    @RestFunction(module = "位置管理模块", operation = "删除数据")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public ResponseEntity<ServiceStatus> delete(@PathVariable(value = "id") String id) {
        SysLocation sysLocation = new SysLocation();
        sysLocation.setId(id);
        sysLocation.setEnable(GlobalConstant.STATUS_DISABLE);
        return renderSuccess(sysLocationService.updateById(sysLocation));
    }

    @ApiOperation(value = "位置管理添加")
    @RestFunction(module = "位置管理模块", operation = "添加数据")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody SysLocation sysLocation) {
        sysLocation.setId(UUID.randomUUID().toString());
        return renderSuccess(sysLocationService.save(sysLocation));
    }

}
