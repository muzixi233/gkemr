package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Menu;

import java.util.List;

public interface MenuService {
    Menu selectById(Integer mId);

    List<Menu> selectAll();

    int insert(Menu menu);

    int update(Menu menu);

    int delete(Integer mId);
}
