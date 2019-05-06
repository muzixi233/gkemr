package com.slwh.emr.service;

import com.slwh.emr.model.Bed;
import com.slwh.emr.model.Role;
import com.slwh.emr.model.Role_UserKey;
import com.slwh.emr.model.User;

import java.util.List;

public interface RoleService {
    Role selectById(Integer rId);

    List<Role> selectAll();

    int insert(Role role);

    int update(Role role);

    int delete(Integer rId);

    List<Role> getRolesByUserId(Integer userid);

    List<Role_UserKey> getRoleByUserId(Integer getuId);
}
