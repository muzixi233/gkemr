package com.slwh.emr.mapper;

import com.slwh.emr.model.Role_UserKey;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Role_UserMapper {
    int deleteById(Role_UserKey key);

    int insert(Role_UserKey record);

    int insertSelective(Role_UserKey record);

    List<Role_UserKey> getRoleByUserId(Integer getuId);

    List<Role_UserKey> selectAll();
}