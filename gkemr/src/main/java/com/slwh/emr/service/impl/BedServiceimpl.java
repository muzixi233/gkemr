package com.slwh.emr.service.impl;


import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.model.Bed;
import com.slwh.emr.service.BedService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BedServiceimpl implements BedService {
@Resource
private BedMapper bedMapper;

    @Override
    public Bed selectById(Integer bedId) {
        return bedMapper.selectById(bedId);
    }

    @Override
    public List<Bed> selectAll() {
        return bedMapper.selectAll();
    }

    @Override
    public int insert(Bed bed) {
        return bedMapper.insert(bed);
    }

    @Override
    public int update(Bed bed) {
        return bedMapper.updateById(bed);
    }

    @Override
    public int delete(Integer bedId) {
        return bedMapper.deleteByID(bedId);
    }
}
