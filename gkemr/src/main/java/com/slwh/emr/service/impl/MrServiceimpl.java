package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.MrMapper;
import com.slwh.emr.model.Mr;
import com.slwh.emr.service.MrService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class MrServiceimpl implements MrService {
    @Resource
    private MrMapper mrMapper;
    @Override
    public Mr selectById(Integer mId) {
        return mrMapper.selectById(mId);
    }

    @Override
    public List<Mr> selectAll() {
        return mrMapper.selectAll();
    }

    @Override
    public int insert(Mr mr) {
        return mrMapper.insert(mr);
    }

    @Override
    public int update(Mr mr) {
        return mrMapper.updateById(mr);
    }

    @Override
    public int delete(Integer mId) {
        return mrMapper.deleteById(mId);
    }
}
