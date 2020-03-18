package com.rexen.rest.mapper;

import com.rexen.rest.model.entity.ToolGeneratorTestData2;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Gavin
 * @since 2019-12-18
 */
public interface ToolGeneratorTestData2Mapper extends BaseMapper<ToolGeneratorTestData2> {

    RestPage<ToolGeneratorTestData2> selectToolGeneratorTestData2ListByPage(RestPage<ToolGeneratorTestData2> toolGeneratorTestData2RestPage);
}
