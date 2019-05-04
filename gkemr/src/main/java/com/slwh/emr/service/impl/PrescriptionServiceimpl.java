package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.PrescriptionMapper;
import com.slwh.emr.model.Prescription;
import com.slwh.emr.model.PrescriptionKey;
import com.slwh.emr.service.PrescriptionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PrescriptionServiceimpl implements PrescriptionService {
    @Resource
    private PrescriptionMapper prescriptionMapper;

    @Override
    public int deleteById(PrescriptionKey key) {
        return prescriptionMapper.deleteById(key);
    }

    @Override
    public int insert(Prescription record) {
        return prescriptionMapper.insert(record);
    }

    @Override
    public int insertSelective(Prescription record) {
        return prescriptionMapper.insertSelective(record);
    }

    @Override
    public Prescription selectById(PrescriptionKey key) {
        return prescriptionMapper.selectById(key);
    }

    @Override
    public int updateByIdSelective(Prescription record) {
        return prescriptionMapper.updateByIdSelective(record);
    }

    @Override
    public int updateById(Prescription record) {
        return prescriptionMapper.updateById(record);
    }

    @Override
    public List<Prescription> selectshenhe() {
        return prescriptionMapper.selectshenhe();
    }

    @Override
    public Prescription selectBypId(int id) {
        return prescriptionMapper.selectBypId(id);
    }
}
