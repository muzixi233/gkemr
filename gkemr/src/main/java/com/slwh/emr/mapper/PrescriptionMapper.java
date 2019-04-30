package com.slwh.emr.mapper;

import com.slwh.emr.model.Prescription;
import com.slwh.emr.model.PrescriptionKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PrescriptionMapper {
    int deleteById(PrescriptionKey key);

    int insert(Prescription record);

    int insertSelective(Prescription record);

    Prescription selectById(PrescriptionKey key);

    int updateByIdSelective(Prescription record);

    int updateById(Prescription record);
}