package com.slwh.emr.service;

import com.slwh.emr.model.Drug;

import java.util.List;

public interface DrugService {
    Drug selectById(Integer drId);

    List<Drug> selectAll();

    int insert(Drug drug);

    int update(Drug drug);

    int delete(Integer drId);
}
