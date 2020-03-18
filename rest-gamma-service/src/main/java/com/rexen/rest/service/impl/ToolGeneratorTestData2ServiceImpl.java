package com.rexen.rest.service.impl;

import com.rexen.rest.model.entity.ToolGeneratorTestData2;
import com.rexen.rest.mapper.ToolGeneratorTestData2Mapper;
import com.rexen.rest.service.ToolGeneratorTestData2Service;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Gavin
 * @since 2019-12-18
 */
@Service
public class ToolGeneratorTestData2ServiceImpl extends ServiceImpl<ToolGeneratorTestData2Mapper, ToolGeneratorTestData2> implements ToolGeneratorTestData2Service {

    @Override
    public RestPage<ToolGeneratorTestData2> selectToolGeneratorTestData2ListByPage(RestPage<ToolGeneratorTestData2> page) {
        return baseMapper.selectToolGeneratorTestData2ListByPage(page);
    }
}
