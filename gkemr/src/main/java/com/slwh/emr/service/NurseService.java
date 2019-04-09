package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Nurse;

import java.util.List;

public interface NurseService {
    Nurse selectById(Integer nId);

    List<Nurse> selectAll();

    int insert(Nurse nurse);

    int update(Nurse nurse);

    int delete(Integer nId);
}
