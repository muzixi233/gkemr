package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.PationMapper;
import com.slwh.emr.model.Pation;
import com.slwh.emr.service.PationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class PationServiceimpl implements PationService {
    @Resource
    private PationMapper pationMapper;
    @Override
    public Pation selectById(Integer pId) {
        return pationMapper.selectById(pId);
    }

    @Override
    public List<Pation> selectAll() {
        return pationMapper.selectAll();
    }

    @Override
    public int insert(Pation pation) {
        return pationMapper.insert(pation);
    }

    @Override
    public int update(Pation pation) {
        return pationMapper.updateById(pation);
    }

    @Override
    public int delete(Integer pId) {
        return pationMapper.deleteById(pId);
    }
}
