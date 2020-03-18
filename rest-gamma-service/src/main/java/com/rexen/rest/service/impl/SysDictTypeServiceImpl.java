package com.rexen.rest.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rexen.rest.common.exception.RestBaseException;
import com.rexen.rest.mapper.SysDictTypeMapper;
import com.rexen.rest.model.entity.SysDictionaryType;
import com.rexen.rest.model.vo.SysDictTypeEditVO;
import com.rexen.rest.model.vo.SysDictTypeResponseVO;
import com.rexen.rest.model.vo.SysDictTypeVO;
import com.rexen.rest.model.vo.SysDictTypeViewVO;
import com.rexen.rest.service.SysDictTypeService;
import com.rexen.rest.util.ParameterFilter;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
 * 字典类型IMPL
 * @author Jaco
 * @since 2020-03-06
 */
@Service
public class SysDictTypeServiceImpl extends ServiceImpl<SysDictTypeMapper, SysDictionaryType> implements SysDictTypeService {

    /**
     * 字典管理列表
     * @param page
     * @param vo
     * @return
     */
    @Override
    public IPage<SysDictTypeResponseVO> findPage(Page<SysDictTypeResponseVO> page, SysDictTypeVO vo) {
        /*模糊查询时易出现问题*/
        if (StringUtils.isNotEmpty(vo.getDescription())) {
            String str = ParameterFilter.likeFilters(vo.getDescription(),"%","_");
            vo.setDescription(str);
        }
        if (StringUtils.isNotEmpty(vo.getCode())) {
            String str = ParameterFilter.likeFilters(vo.getCode(),"%","_");
            vo.setCode(str);
        }
        /*列表查询*/
        IPage<SysDictTypeResponseVO> pageVo = baseMapper.findPage(page,vo.getDescription(),vo.getCode());
        return pageVo;
    }

    /**
     * 字典新增
     * @param vo
     */
    @Override
    public void add(SysDictTypeViewVO vo) throws RestBaseException {
        /*验证字典名称、字典编码*/
        verfi(vo,null);

        SysDictionaryType entity = new SysDictionaryType();
        entity.setId(UUID.randomUUID().toString());
        entity.setCode(vo.getCode());
        entity.setDescription(vo.getDescription());
        entity.setParentId("1000");
        entity.setExtension(vo.getExtension());
        baseMapper.insert(entity);
    }

    /**
     * 修改字典
     * @param vo
     * @throws RestBaseException
     */
    @Override
    public void edit(SysDictTypeEditVO vo) throws RestBaseException {
        /*验证字典名称、字典编码*/
        verfi(vo,vo.getId());
        QueryWrapper<SysDictionaryType> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(SysDictionaryType::getId,vo.getId());
        SysDictionaryType dict = baseMapper.selectOne(queryWrapper);
        if(dict != null) {
            dict.setDescription(vo.getDescription());
            dict.setExtension(vo.getExtension());
            baseMapper.updateById(dict);
        } else {
            throw new RestBaseException("修改字典失败");
        }
    }

    /**
     * 字典查看
     * @param id
     * @throws RestBaseException
     */
    @Override
    public SysDictTypeEditVO view(String id) throws RestBaseException {
        QueryWrapper<SysDictionaryType> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(SysDictionaryType::getId,id);
        SysDictionaryType dict = baseMapper.selectOne(queryWrapper);
        SysDictTypeEditVO vo = new SysDictTypeEditVO();
        if(dict != null) {
          vo.setId(dict.getId());
          vo.setCode(dict.getCode());
          vo.setDescription(dict.getDescription());
          vo.setExtension(dict.getExtension());
        }
        return vo;
    }

    /**
     * 验证字典名称、字典编码是否重复
     * @param vo
     * @throws RestBaseException
     */
    private void verfi(SysDictTypeViewVO vo,String id) throws RestBaseException{
        if(vo != null) {
            if(StringUtils.isEmpty(vo.getDescription())) {
                throw new RestBaseException("字典名称不能为空");
            }
            if(StringUtils.isEmpty(vo.getCode())) {
                throw new RestBaseException("字典编码不能为空");
            }
            QueryWrapper<SysDictionaryType> queryWrapperDescription = new QueryWrapper<>();
            queryWrapperDescription.lambda().eq(SysDictionaryType::getDescription,vo.getDescription());
            SysDictionaryType dictDescription = baseMapper.selectOne(queryWrapperDescription);
            if(dictDescription != null) {
                if(StringUtils.isEmpty(id) || !id.equals(dictDescription.getId())) {
                    throw new RestBaseException("字典名称重复");
                }
            }
            QueryWrapper<SysDictionaryType> queryWrapperCode = new QueryWrapper<>();
            queryWrapperCode.lambda().eq(SysDictionaryType::getCode,vo.getCode());
            SysDictionaryType dictCode = baseMapper.selectOne(queryWrapperCode);
            if(dictCode != null) {
                if(StringUtils.isEmpty(id) || !id.equals(dictCode.getId())) {
                    throw new RestBaseException("字典编码重复");
                }
            }
        } else {
            throw new RestBaseException("字典名称或字典编码不能为空");
        }
    }
}
