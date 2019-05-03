package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.PermissionMapper;
import com.slwh.emr.model.Permission;
import com.slwh.emr.service.PermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class PermissionServiceimpl implements PermissionService {
    @Resource
    private PermissionMapper permissionMapper;
    @Override
    public Permission selectById(Integer peId) {
        return permissionMapper.selectById(peId);
    }

    @Override
    public List<Permission> selectAll() {
        return permissionMapper.selectAll();
    }

    @Override
    public int insert(Permission permission) {
        return permissionMapper.insert(permission);
    }

    @Override
    public int update(Permission permission) {
        return permissionMapper.updateById(permission);
    }

    @Override
    public int delete(Integer peId) {
        return permissionMapper.deleteById(peId);
    }

    @Override
    public List<Permission> getPermissionsByUserId(int id) {
        return permissionMapper. getPermissionsByUserId(id);
    }
}
