package com.slwh.emr.mapper;

import com.slwh.emr.model.Role_UserKey;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface Role_UserMapper {
    int deleteById(Role_UserKey key);

    int insert(Role_UserKey record);

    int insertSelective(Role_UserKey record);
}