package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Ith;

import java.util.List;

public interface IthService {
    Ith selectById(Integer ithId);

    List<Ith> selectAll();

    int insert(Ith ith);

    int update(Ith ith);

    int delete(Integer ithId);
    Ith selectByPId(Integer pid);

    Ith selectByPIdAndStatus(int id);

    List<Ith> selectByStatus();
}
