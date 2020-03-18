package com.rexen.rest.service;

import com.rexen.rest.common.page.RestPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.model.entity.ToolGeneratorTestData;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Gavin
 * @since 2020-01-10
 */
public interface ToolGeneratorTestDataService extends IService<ToolGeneratorTestData> {

    RestPage<ToolGeneratorTestData> selectToolGeneratorTestDataListByPage(RestPage<ToolGeneratorTestData> page);
}
