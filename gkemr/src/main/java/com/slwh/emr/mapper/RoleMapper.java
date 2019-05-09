package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Role;
import org.apache.ibatis.annotations.Mapper;


import java.util.List;

@Mapper
public interface RoleMapper {
    int deleteById(Integer rId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectById(Integer rId);

    int updateByIdSelective(Role record);

    int updateById(Role record);

    List<Role> selectAll();

    List<Role> getRolesByUserId(Integer userid);
}