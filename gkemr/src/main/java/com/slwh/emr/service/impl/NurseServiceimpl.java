package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.NurseMapper;
import com.slwh.emr.model.Nurse;
import com.slwh.emr.service.NurseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class NurseServiceimpl implements NurseService {
    @Resource
    private NurseMapper nurseMapper;
    @Override
    public Nurse selectById(Integer nId) {
        return nurseMapper.selectById(nId);
    }

    @Override
    public List<Nurse> selectAll() {
        return nurseMapper.selectAll();
    }

    @Override
    public int insert(Nurse nurse) {
        return nurseMapper.insert(nurse);
    }

    @Override
    public int update(Nurse nurse) {
        return nurseMapper.updateById(nurse);
    }

    @Override
    public int delete(Integer nId) {
        return nurseMapper.deleteById(nId);
    }
}
