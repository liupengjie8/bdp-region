package com.rexen.rest.app.controller.sample;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.common.constant.GlobalConstant;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.entity.ToolGeneratorTestData;
import com.rexen.rest.service.ToolGeneratorTestDataService;
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
 * 代码生成器测试:控制器
 * </p>
 *
 * @author Gavin
 * @since 2020-01-10
 */
@Controller
@RequestMapping("/api/tool/generator/test1")
public class ToolGeneratorTestDataController extends AbstractController {

    @Autowired
    private ToolGeneratorTestDataService toolGeneratorTestDataService;

    @ApiOperation(value = "代码生成器测试列表")
    @RestFunction(module = "代码生成器测试模块", operation = "获取列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list() {
        return renderSuccess(toolGeneratorTestDataService.list());
    }

    @ApiOperation(value = "代码生成器测试分页查询列表")
    @RestFunction(module = "代码生成器测试模块", operation = "分页查询列表")
    @RequestMapping(value = "/listByPage", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> list(RestPage<ToolGeneratorTestData> page, ToolGeneratorTestData toolGeneratorTestData) {
        page.setParameter(toolGeneratorTestData);
        return renderSuccess(toolGeneratorTestDataService.selectToolGeneratorTestDataListByPage(page));
    }

    @ApiOperation(value = "代码生成器测试详情")
    @RestFunction(module = "代码生成器测试模块", operation = "获取详情")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> get(@PathVariable(value = "id") String id) {
        return renderSuccess(toolGeneratorTestDataService.getById(id));
    }

    @ApiOperation(value = "代码生成器测试编辑")
    @RestFunction(module = "代码生成器测试模块", operation = "编辑数据")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody ToolGeneratorTestData toolGeneratorTestData) {
        return renderSuccess(toolGeneratorTestDataService.updateById(toolGeneratorTestData));
    }

    @ApiOperation(value = "代码生成器测试删除")
    @RestFunction(module = "代码生成器测试模块", operation = "删除数据")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public ResponseEntity<ServiceStatus> delete(@PathVariable(value = "id") String id) {
        ToolGeneratorTestData toolGeneratorTestData = new ToolGeneratorTestData();
        toolGeneratorTestData.setId(id);
        toolGeneratorTestData.setEnable(GlobalConstant.STATUS_DISABLE);
        return renderSuccess(toolGeneratorTestDataService.updateById(toolGeneratorTestData));
    }

    @ApiOperation(value = "代码生成器测试添加")
    @RestFunction(module = "代码生成器测试模块", operation = "添加数据")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody ToolGeneratorTestData toolGeneratorTestData) {
        toolGeneratorTestData.setId(UUID.randomUUID().toString());
        return renderSuccess(toolGeneratorTestDataService.save(toolGeneratorTestData));
    }

}
