package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Permission;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PermissionMapper {
    int deleteById(Integer peId);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectById(Integer peId);

    int updateByIdSelective(Permission record);

    int updateById(Permission record);

    List<Permission> selectAll();

    List<Permission> getPermissionsByUserId(Integer id);
}