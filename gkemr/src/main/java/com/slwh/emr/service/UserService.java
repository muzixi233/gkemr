package com.slwh.emr.service;

import com.slwh.emr.model.User;

import java.util.List;

public interface UserService {
    User selectById(Integer uId);

    User selectByuNum(String uNum);

    List<User> selectAll();

    int insert(User user);

    int update(User user);

    int delete(Integer uId);

    User login(String username,String password);

    User selectByName(String username);
}
