package com.rexen.rest.app.controller;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.common.constant.GlobalConstant;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.entity.SysBuilding;
import com.rexen.rest.service.SysBuildingService;
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
 * 楼宇楼层管理:控制器
 * </p>
 *
 * @author lpj
 * @since 2020-03-23
 */
@Controller
@RequestMapping("/api/sysBuilding")
public class SysBuildingController extends AbstractController {

    @Autowired
    private SysBuildingService sysBuildingService;

    @ApiOperation(value = "楼宇楼层管理列表")
    @RestFunction(module = "楼宇楼层管理模块", operation = "获取列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list() {
        return renderSuccess(sysBuildingService.list());
    }

    @ApiOperation(value = "楼宇楼层管理分页查询列表")
    @RestFunction(module = "楼宇楼层管理模块", operation = "分页查询列表")
    @RequestMapping(value = "/listByPage", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list(RestPage<SysBuilding> page, SysBuilding sysBuilding) {
        page.setParameter(sysBuilding);
        return renderSuccess(sysBuildingService.selectSysBuildingListByPage(page));
    }

    @ApiOperation(value = "获取不重复楼宇列表")
    @RestFunction(module = "楼宇楼层管理模块", operation = "获取列表")
    @RequestMapping(value = "/fetchBuilding", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> fetchBuilding(RestPage<SysBuilding> page, SysBuilding sysBuilding) {
        page.setParameter(sysBuilding);
        return renderSuccess(sysBuildingService.selectBuilding(page));
    }

    @ApiOperation(value = "根据楼宇获取楼层列表")
    @RestFunction(module = "楼宇楼层管理模块", operation = "获取列表")
    @RequestMapping(value = "/fetchStoreyByBuilding", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> fetchStoreyByBuilding(RestPage<SysBuilding> page, SysBuilding sysBuilding) {
        page.setParameter(sysBuilding);
        return renderSuccess(sysBuildingService.selectStoreyByBuilding(page));
    }

    @ApiOperation(value = "楼宇楼层管理详情")
    @RestFunction(module = "楼宇楼层管理模块", operation = "获取详情")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> get(@PathVariable(value = "id") String id) {
        return renderSuccess(sysBuildingService.getById(id));
    }

    @ApiOperation(value = "楼宇楼层管理编辑")
    @RestFunction(module = "楼宇楼层管理模块", operation = "编辑数据")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody SysBuilding sysBuilding) {
        return renderSuccess(sysBuildingService.updateById(sysBuilding));
    }

    @ApiOperation(value = "楼宇楼层管理删除")
    @RestFunction(module = "楼宇楼层管理模块", operation = "删除数据")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public ResponseEntity<ServiceStatus> delete(@PathVariable(value = "id") String id) {
        SysBuilding sysBuilding = new SysBuilding();
        sysBuilding.setId(id);
        sysBuilding.setEnable(GlobalConstant.STATUS_DISABLE);
        return renderSuccess(sysBuildingService.updateById(sysBuilding));
    }

    @ApiOperation(value = "楼宇楼层管理添加")
    @RestFunction(module = "楼宇楼层管理模块", operation = "添加数据")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody SysBuilding sysBuilding) {
        sysBuilding.setId(UUID.randomUUID().toString());
        return renderSuccess(sysBuildingService.save(sysBuilding));
    }

}
