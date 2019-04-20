package com.slwh.emr.service;

import com.slwh.emr.model.Bed;

import java.util.List;

public interface BedService {
    Bed selectById(Integer bedId);

    List<Bed> selectAll();

    int insert(Bed bed);

    int update(Bed bed);

    int delete(Integer bedId);
    List<Bed> selectByStatus();
}
