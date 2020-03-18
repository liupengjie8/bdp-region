package com.rexen.rest.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.mapper.SysDictValueMapper;
import com.rexen.rest.model.entity.SysDictionaryValue;
import com.rexen.rest.model.vo.SysDictValueAddVO;
import com.rexen.rest.model.vo.SysDictValueVO;
import com.rexen.rest.service.SysDictValueService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * 键值管理Impl
 * @author Jaco
 * @since 2020-03-06
 */
@Service
public class SysDictValueServiceImpl extends ServiceImpl<SysDictValueMapper, SysDictionaryValue> implements SysDictValueService {

    /**
     * TypeId 查询键值
     * @param typeId
     * @return
     */
    @Override
    public List<SysDictValueVO> findListByTypeId(String typeId) {
        return baseMapper.findListByTypeId(typeId);
    }

    /**
     * 修改键值
     * @param vo
     * @throws RestBaseException
     */
    @Override
    public void edit(SysDictValueVO vo)throws RestBaseException {
        verfi(vo.getId(),vo.getName(),vo.getValue(),vo.getTypeId());
        QueryWrapper<SysDictionaryValue> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(SysDictionaryValue::getId,vo.getId());
        SysDictionaryValue sysDictionaryValue = baseMapper.selectOne(queryWrapper);
        sysDictionaryValue.setEnable(vo.getEnable());
        sysDictionaryValue.setExtension(vo.getExtension());
        sysDictionaryValue.setName(vo.getName());
        sysDictionaryValue.setSort(99);
        sysDictionaryValue.setTypeId(vo.getTypeId());
        sysDictionaryValue.setValue(vo.getValue());
        baseMapper.updateById(sysDictionaryValue);
    }

    /**
     *  保存键值
     * @param vo
     * @return
     * @throws RestBaseException
     */
    @Override
    public String save(SysDictValueAddVO vo)throws RestBaseException {
        verfi(null,vo.getName(),vo.getValue(),vo.getTypeId());
        SysDictionaryValue sysDictionaryValue = new SysDictionaryValue();
        sysDictionaryValue.setId(UUID.randomUUID().toString());
        sysDictionaryValue.setEnable(vo.getEnable());
        sysDictionaryValue.setExtension(vo.getExtension());
        sysDictionaryValue.setName(vo.getName());
        sysDictionaryValue.setSort(99);
        sysDictionaryValue.setTypeId(vo.getTypeId());
        sysDictionaryValue.setValue(vo.getValue());
        baseMapper.insert(sysDictionaryValue);
        return sysDictionaryValue.getId();
    }

    /**
     * 验证字典标签、字典键值是否重复
     * @param id
     * @param name
     * @param value
     * @param typeId
     * @throws RestBaseException
     */
    private void verfi(String id,String name,String value,String typeId) throws RestBaseException{
        QueryWrapper<SysDictionaryValue> queryWrapperName = new QueryWrapper<>();
        queryWrapperName.lambda().eq(SysDictionaryValue::getName,name);
        queryWrapperName.lambda().eq(SysDictionaryValue::getTypeId,typeId);
        SysDictionaryValue dictName = baseMapper.selectOne(queryWrapperName);
        if(dictName != null) {
            if(StringUtils.isEmpty(id) || !id.equals(dictName.getId())) {
                throw new RestBaseException("字典标签重复");
            }
        }
        QueryWrapper<SysDictionaryValue> queryWrapperCode = new QueryWrapper<>();
        queryWrapperCode.lambda().eq(SysDictionaryValue::getValue,value);
        queryWrapperCode.lambda().eq(SysDictionaryValue::getTypeId,typeId);
        SysDictionaryValue dictValue = baseMapper.selectOne(queryWrapperCode);
        if(dictValue != null) {
            if(StringUtils.isEmpty(id) || !id.equals(dictValue.getId())) {
                throw new RestBaseException("字典键值重复");
            }
        }
    }
}
