package com.rexen.rest.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.model.entity.SysDictionaryType;
import com.rexen.rest.model.vo.SysDictTypeEditVO;
import com.rexen.rest.model.vo.SysDictTypeResponseVO;
import com.rexen.rest.model.vo.SysDictTypeVO;
import com.rexen.rest.model.vo.SysDictTypeViewVO;

/**
 * 字典类型Service
 * @author Jaco
 * @since 2020-03-06
 */
public interface SysDictTypeService extends IService<SysDictionaryType> {

    /**
     * 字典管理列表
     * @param page
     * @param vo
     * @return
     */
    IPage<SysDictTypeResponseVO> findPage(Page<SysDictTypeResponseVO> page, SysDictTypeVO vo);

    /**
     * 新建字典
     * @param vo
     * @throws RestBaseException
     */
    void add(SysDictTypeViewVO vo) throws RestBaseException;

    /**
     * 修改字典
     * @param vo
     * @throws RestBaseException
     */
    void edit(SysDictTypeEditVO vo) throws RestBaseException;

    /**
     * 字典查询
     * @param id
     * @return
     * @throws RestBaseException
     */
    SysDictTypeEditVO view(String id) throws RestBaseException;
}
