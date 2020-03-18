package com.rexen.rest.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.model.entity.SysDictionaryValue;
import com.rexen.rest.model.vo.SysDictValueAddVO;
import com.rexen.rest.model.vo.SysDictValueVO;

import java.util.List;

/**
 * 键值管理Service
 * @author Jaco
 * @since 2020-03-06
 */
public interface SysDictValueService extends IService<SysDictionaryValue> {

    /**
     * TypeId 查询键值
     * @param typeId
     * @return
     */
    List<SysDictValueVO> findListByTypeId(String typeId);

    /**
     * 保存键值
     * @param vo
     * @return
     * @throws RestBaseException
     */
    String save(SysDictValueAddVO vo)throws RestBaseException;
    /**
     * 修改键值
     * @param vo
     * @throws RestBaseException
     */
    void edit(SysDictValueVO vo)throws RestBaseException;
}
