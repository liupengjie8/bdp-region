package com.rexen.rest.app.controller;

import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.common.constant.DictPermissionConstant;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.common.page.RestPage;
import com.rexen.rest.model.vo.SysLogVO;
import com.rexen.rest.service.SysLogService;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 日志管理Controller
 * @author Jaco
 * @since 2020-03-09
 */
@Controller
@RequestMapping({"/api/log"})
public class SysLogController  extends AbstractController {

    @Autowired
    private SysLogService sysLogService;

    /**
     * 字典管理列表
     * @param page
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @RequiresPermissions(DictPermissionConstant.LOG_VIEW)
    @ApiOperation(value = "日志管理列表")
    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> page(RestPage page, SysLogVO vo) throws RestBaseException {
        return renderSuccess(sysLogService.findPage(page,vo));
    }
}
