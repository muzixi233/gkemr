package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Treat;

import java.util.List;

public interface TreatService {
    Treat selectById(Integer tId);

    List<Treat> selectAll();

    int insert(Treat treat);

    int update(Treat treat);

    int delete(Integer tId);
}
