package com.rexen.rest.app.controller;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.common.constant.DictPermissionConstant;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.vo.*;
import com.rexen.rest.service.SysDictTypeService;
import com.rexen.rest.service.SysDictValueService;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

/**
 * 字典管理Controller
 * @author Jaco
 * @since 2020-03-06
 */
@Controller
@RequestMapping({"/api/dictionary"})
public class SysDictTypeController extends AbstractController {

    @Autowired
    private SysDictTypeService sysDictTypeService;
    @Autowired
    private SysDictValueService sysDictValueService;


    /**
     * 字典管理列表
     * @param page
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_VIEW)
    @ApiOperation(value = "字典管理列表")
    @RestFunction(module = "字典管理模块", operation = "字典管理列表")
    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> page(RestPage page, SysDictTypeVO vo) throws RestBaseException {
        return renderSuccess(sysDictTypeService.findPage(page,vo));
    }

    /**
     * 新建字典
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_ADD)
    @ApiOperation(value = "新建字典")
    @RestFunction(module = "字典管理模块", operation = "新建字典")
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> add(@RequestBody @Valid SysDictTypeViewVO vo) throws RestBaseException {
        sysDictTypeService.add(vo);
        return renderSuccess();
    }

    /**
     * 修改字典
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_EDIT)
    @ApiOperation(value = "修改字典")
    @RestFunction(module = "字典管理模块", operation = "修改字典")
    @RequestMapping(value = "", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> edit(@RequestBody @Valid SysDictTypeEditVO vo) throws RestBaseException {
        sysDictTypeService.edit(vo);
        return renderSuccess();
    }

    /**
     * 查看字典
     * @param id
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_VIEW)
    @ApiOperation(value = "查看字典")
    @RestFunction(module = "字典管理模块", operation = "查看字典")
    @RequestMapping(value = "/{id}/view", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> edit(@PathVariable(value = "id") String id) throws RestBaseException {
        return renderSuccess(sysDictTypeService.view(id));
    }

    /**
     * 键值列表
     * @param typeId
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_VIEW)
    @ApiOperation(value = "键值列表")
    @RestFunction(module = "字典管理模块", operation = "键值列表")
    @RequestMapping(value = "/{typeId}/valuelist", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> valueList(@PathVariable(value = "typeId") String typeId) throws RestBaseException {
        return renderSuccess(sysDictValueService.findListByTypeId(typeId));
    }

    /**
     * 键值保存
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_ADD)
    @ApiOperation(value = "键值保存")
    @RestFunction(module = "字典管理模块", operation = "键值保存")
    @RequestMapping(value = "/value", method = RequestMethod.POST)
    public ResponseEntity<ServiceStatus> valueAdd(@RequestBody @Valid SysDictValueAddVO vo) throws RestBaseException {
        Map<String,String> map = new HashMap<String,String>(128);
        map.put("id",sysDictValueService.save(vo));
        return renderSuccess(map);
    }

    /**
     * 键值保存
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.DICT_EDIT)
    @ApiOperation(value = "键值修改")
    @RestFunction(module = "字典管理模块", operation = "键值修改")
    @RequestMapping(value = "/value", method = RequestMethod.PUT)
    public ResponseEntity<ServiceStatus> valueEdit(@RequestBody @Valid SysDictValueVO vo) throws RestBaseException {
        sysDictValueService.edit(vo);
        return renderSuccess();
    }


}
