package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {
    int deleteById(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectById(Integer uId);

    int updateByIdSelective(User record);

    int updateById(User record);

    List<User> selectAll();

    User login(@Param("username") String username, @Param("password") String password);

    User selectByName(@Param("username") String username);

    User selectByuNum(@Param("uNum") String uNum);
}