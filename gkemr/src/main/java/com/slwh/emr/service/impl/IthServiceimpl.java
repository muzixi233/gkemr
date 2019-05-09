package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.IthMapper;
import com.slwh.emr.model.Ith;
import com.slwh.emr.service.IthService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class IthServiceimpl implements IthService {
    @Resource
    private IthMapper ithMapper;

    @Override
    public Ith selectById(Integer ithId) {
        return ithMapper.selectById(ithId);
    }

    @Override
    public List<Ith> selectAll() {
        return ithMapper.selectAll();
    }

    @Override
    public int insert(Ith ith) {
        return ithMapper.insert(ith);
    }

    @Override
    public int update(Ith ith) {
        return ithMapper.updateById(ith);
    }

    @Override
    public int delete(Integer ithId) {
        return ithMapper.deleteById(ithId);
    }

    @Override
    public Ith selectByPId(Integer pid) {
        return ithMapper.selectByPId(pid);
    }

    @Override
    public Ith selectByPIdAndStatus(int id) {
        return ithMapper.selectByPIdAndStatus(id);
    }

    @Override
    public List<Ith> selectByStatus() {
        return ithMapper.selectByStatus();
    }
}
