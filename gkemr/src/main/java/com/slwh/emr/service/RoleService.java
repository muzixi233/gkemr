package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Role;

import java.util.List;

public interface RoleService {
    Role selectById(Integer rId);

    List<Role> selectAll();

    int insert(Role role);

    int update(Role role);

    int delete(Integer rId);
}
