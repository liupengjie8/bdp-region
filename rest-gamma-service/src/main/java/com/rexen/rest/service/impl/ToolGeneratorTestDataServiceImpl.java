package com.rexen.rest.service.impl;

import com.rexen.rest.mapper.ToolGeneratorTestDataMapper;
import com.rexen.rest.model.entity.ToolGeneratorTestData;
import com.rexen.rest.service.ToolGeneratorTestDataService;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Gavin
 * @since 2020-01-10
 */
@Service
public class ToolGeneratorTestDataServiceImpl extends ServiceImpl<ToolGeneratorTestDataMapper, ToolGeneratorTestData> implements ToolGeneratorTestDataService {

    @Override
    public RestPage<ToolGeneratorTestData> selectToolGeneratorTestDataListByPage(RestPage<ToolGeneratorTestData> page) {
        return baseMapper.selectToolGeneratorTestDataListByPage(page);
    }
}
