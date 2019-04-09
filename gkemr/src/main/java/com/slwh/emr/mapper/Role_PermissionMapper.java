package com.slwh.emr.mapper;

import com.slwh.emr.model.Role_PermissionKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface Role_PermissionMapper {
    int deleteById(Role_PermissionKey key);

    int insert(Role_PermissionKey record);

    int insertSelective(Role_PermissionKey record);
}