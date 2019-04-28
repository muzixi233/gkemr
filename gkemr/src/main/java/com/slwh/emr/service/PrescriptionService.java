package com.slwh.emr.service;

import com.slwh.emr.model.Prescription;
import com.slwh.emr.model.PrescriptionKey;

public interface PrescriptionService {
    int deleteById(PrescriptionKey key);

    int insert(Prescription record);

    int insertSelective(Prescription record);

    Prescription selectById(PrescriptionKey key);

    int updateByIdSelective(Prescription record);

    int updateById(Prescription record);
}