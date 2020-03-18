package com.rexen.rest.app.controller.sample;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.common.constant.GlobalConstant;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.entity.ToolGeneratorTestData2;
import com.rexen.rest.service.ToolGeneratorTestData2Service;
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
 * 测试代码生成器:控制器
 * </p>
 *
 * @author Gavin
 * @since 2020-01-08
 */
@Controller
@RequestMapping("/api/tool/generator/test2")
public class ToolGeneratorTestData2Controller extends AbstractController {

    @Autowired
    private ToolGeneratorTestData2Service toolGeneratorTestData2Service;

    @ApiOperation(value = "测试代码生成器列表")
    @RestFunction(module = "测试代码生成器模块", operation = "获取列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list() {
        return renderSuccess(toolGeneratorTestData2Service.list());
    }

    @ApiOperation(value = "测试代码生成器分页查询列表")
    @RestFunction(module = "测试代码生成器模块", operation = "分页查询列表")
    @RequestMapping(value = "/listByPage", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list(RestPage<ToolGeneratorTestData2> page, ToolGeneratorTestData2 toolGeneratorTestData2) {
        page.setParameter(toolGeneratorTestData2);
        return renderSuccess(toolGeneratorTestData2Service.selectToolGeneratorTestData2ListByPage(page));
    }

    @ApiOperation(value = "测试代码生成器详情")
    @RestFunction(module = "测试代码生成器模块", operation = "获取详情")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> get(@PathVariable(value = "id") String id) {
        return renderSuccess(toolGeneratorTestData2Service.getById(id));
    }

    @ApiOperation(value = "测试代码生成器编辑")
    @RestFunction(module = "测试代码生成器模块", operation = "编辑数据")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody ToolGeneratorTestData2 toolGeneratorTestData2) {
        return renderSuccess(toolGeneratorTestData2Service.updateById(toolGeneratorTestData2));
    }

    @ApiOperation(value = "测试代码生成器删除")
    @RestFunction(module = "测试代码生成器模块", operation = "删除数据")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public ResponseEntity<ServiceStatus> delete(@PathVariable(value = "id") String id) {
        ToolGeneratorTestData2 toolGeneratorTestData2 = new ToolGeneratorTestData2();
        toolGeneratorTestData2.setId(id);
        toolGeneratorTestData2.setEnable(GlobalConstant.STATUS_DISABLE);
        return renderSuccess(toolGeneratorTestData2Service.updateById(toolGeneratorTestData2));
    }

    @ApiOperation(value = "测试代码生成器添加")
    @RestFunction(module = "测试代码生成器模块", operation = "添加数据")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody ToolGeneratorTestData2 toolGeneratorTestData2) {
        toolGeneratorTestData2.setId(UUID.randomUUID().toString());
        return renderSuccess(toolGeneratorTestData2Service.save(toolGeneratorTestData2));
    }

}
