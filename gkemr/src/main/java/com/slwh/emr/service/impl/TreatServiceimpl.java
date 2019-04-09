package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.TreatMapper;
import com.slwh.emr.model.Treat;
import com.slwh.emr.service.TreatService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class TreatServiceimpl implements TreatService {
    @Resource
    private TreatMapper  treatMapper;
    @Override
    public Treat selectById(Integer tId) {
        return treatMapper.selectById(tId);
    }

    @Override
    public List<Treat> selectAll() {
        return treatMapper.selectAll();
    }

    @Override
    public int insert(Treat treat) {
        return treatMapper.insert(treat);
    }

    @Override
    public int update(Treat treat) {
        return treatMapper.updateById(treat);
    }

    @Override
    public int delete(Integer tId) {
        return treatMapper.deleteById(tId);
    }
}
