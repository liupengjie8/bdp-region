package com.rexen.rest.mapper;

import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.rexen.rest.model.entity.ToolGeneratorTestData;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Gavin
 * @since 2020-01-10
 */
public interface ToolGeneratorTestDataMapper extends BaseMapper<ToolGeneratorTestData> {

    RestPage<ToolGeneratorTestData> selectToolGeneratorTestDataListByPage(RestPage<ToolGeneratorTestData> toolGeneratorTestDataRestPage);
}
