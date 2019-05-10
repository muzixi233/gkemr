package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.Role_UserMapper;
import com.slwh.emr.mapper.UserMapper;
import com.slwh.emr.model.Role_UserKey;
import com.slwh.emr.model.User;
import com.slwh.emr.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceimpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Resource
    private Role_UserMapper role_userMapper;

    @Override
    public User selectById(Integer uId) {
        return userMapper.selectById(uId);
    }

    @Override
    public User selectByuNum(String uNum) {
        return userMapper.selectByuNum(uNum);
    }

    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }

    @Override
    public int insert(User user) {
        return userMapper.insert(user);
    }

    @Override
    public int update(User user) {
        return userMapper.updateById(user);
    }

    @Override
    public int delete(Integer uId) {
        return userMapper.deleteById(uId);
    }

    @Override
    public User login(String username, String password) {
        return userMapper.login(username,password);
    }

    @Override
    public User selectByName(String username) {
        return userMapper.selectByName(username);
    }

    @Override
    public List<User> selectByrId(int id) {
        return userMapper.selectByrId(id);
    }

    @Override
    public List<Role_UserKey> selectAllUserRole() {
        return role_userMapper.selectAll();
    }
}
