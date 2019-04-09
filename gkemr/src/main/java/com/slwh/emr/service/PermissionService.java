package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Permission;

import java.util.List;

public interface PermissionService {
    Permission selectById(Integer peId);

    List<Permission> selectAll();

    int insert(Permission permission);

    int update(Permission permission);

    int delete(Integer peId);
}
