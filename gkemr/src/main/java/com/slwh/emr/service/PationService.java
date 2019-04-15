package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Pation;

import java.util.List;

public interface PationService {
    Pation selectById(Integer pId);

    List<Pation> selectAll();

    int insert(Pation pation);

    int update(Pation pation);

    int delete(Integer pId);

    Pation selectByNameAndmzNum(String pName,int mzNum) ;
}
