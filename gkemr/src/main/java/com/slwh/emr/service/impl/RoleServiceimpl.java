package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.RoleMapper;
import com.slwh.emr.model.Role;
import com.slwh.emr.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class RoleServiceimpl implements RoleService {
    @Resource
    private RoleMapper roleMapper;
    @Override
    public Role selectById(Integer rId) {
        return roleMapper.selectById(rId);
    }

    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }

    @Override
    public int insert(Role role) {
        return roleMapper.insert(role);
    }

    @Override
    public int update(Role role) {
        return roleMapper.updateById(role);
    }

    @Override
    public int delete(Integer rId) {
        return roleMapper.deleteById(rId);
    }

    @Override
    public List<Role> getRolesByUserId(Integer userid) {
        return roleMapper.getRolesByUserId(userid);
    }
}
