package com.rexen.rest.service.impl;

import com.rexen.rest.model.entity.SysLocation;
import com.rexen.rest.mapper.SysLocationMapper;
import com.rexen.rest.model.unit.DepartmentTreeNode;
import com.rexen.rest.model.vo.SysLocationVO;
import com.rexen.rest.service.SysDepartmentService;
import com.rexen.rest.service.SysLocationService;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 位置管理
 服务实现类
 * </p>
 *
 * @author lpj
 * @since 2020-03-18
 */
@Service
public class SysLocationServiceImpl extends ServiceImpl<SysLocationMapper, SysLocation> implements SysLocationService {
    @Autowired
    private SysDepartmentService sysDepartmentService;

    @Override
    public RestPage selectSysLocationListByPage(RestPage<SysLocationVO> page, String deptId) {
        if (!StringUtils.isEmpty(deptId)) {
            List<DepartmentTreeNode> departments = this.sysDepartmentService.getDepartmentTreeNodeList(deptId);
            List<String> ids = (List<String>)departments.stream().map(DepartmentTreeNode::getId).collect(Collectors.toList());
            return this.baseMapper.selectSysLocationList(page, ids);
        } else {
            return this.baseMapper.selectSysLocationList(page, (List<String>)null);
        }
    }
}
