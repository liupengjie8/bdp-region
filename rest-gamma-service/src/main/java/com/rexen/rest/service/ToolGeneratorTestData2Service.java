package com.rexen.rest.service;

import com.rexen.rest.model.entity.ToolGeneratorTestData2;
import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Gavin
 * @since 2019-12-18
 */
public interface ToolGeneratorTestData2Service extends IService<ToolGeneratorTestData2> {

    RestPage<ToolGeneratorTestData2> selectToolGeneratorTestData2ListByPage(RestPage<ToolGeneratorTestData2> page);
}
