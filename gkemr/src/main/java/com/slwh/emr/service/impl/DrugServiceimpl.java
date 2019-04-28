package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.DrugMapper;
import com.slwh.emr.model.Drug;
import com.slwh.emr.service.DrugService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class DrugServiceimpl implements DrugService {
    @Resource
    private DrugMapper drugMapper;
    @Override
    public Drug selectById(Integer drId) {
        return drugMapper.selectById(drId);
    }

    @Override
    public List<Drug> selectAll() {
        return drugMapper.selectAll();
    }

    @Override
    public int insert(Drug drug) {
        return drugMapper.insert(drug);
    }

    @Override
    public int update(Drug drug) {
        return drugMapper.updateById(drug);
    }

    @Override
    public int delete(Integer drId) {
        return drugMapper.deleteById(drId);
    }

    @Override
    public List<Drug> selectBypId(int id) {
        return drugMapper.selectBypId(id);
    }
}
