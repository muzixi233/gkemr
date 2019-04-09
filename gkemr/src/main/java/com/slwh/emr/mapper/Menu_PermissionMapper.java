package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu_PermissionKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface Menu_PermissionMapper {
    int deleteById(Menu_PermissionKey key);

    int insert(Menu_PermissionKey record);

    int insertSelective(Menu_PermissionKey record);
}