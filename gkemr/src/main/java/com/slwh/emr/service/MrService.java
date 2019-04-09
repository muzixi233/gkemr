package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Mr;

import java.util.List;

public interface MrService {
    Mr selectById(Integer mId);

    List<Mr> selectAll();

    int insert(Mr mr);

    int update(Mr mr);

    int delete(Integer mId);
}
