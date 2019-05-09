package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Pation;

import java.util.Date;
import java.util.List;

public interface PationService {
    Pation selectById(Integer pId);

    List<Pation> selectAll();

    int insert(Pation pation);

    int update(Pation pation);

    int delete(Integer pId);

    Pation selectByNameAndmzNum(String pName,int mzNum) ;

    List<Pation> selectByStatic();

    List<Pation> selectByTime(Date d,int i);

    List<Pation> selectByNotTime(Date d,int i);

    List<Pation> selectByIthStatus(int ith);

    List<Pation> selectkaiyao();

    Pation selectByNameAndmrNum(String pName, String mrNum);
}
