package com.slwh.emr.service.impl;

import com.slwh.emr.mapper.BedMapper;
import com.slwh.emr.mapper.MenuMapper;
import com.slwh.emr.model.Menu;
import com.slwh.emr.service.MenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class MenuServiceimpl implements MenuService {

    @Resource
    private MenuMapper menuMapper;
    @Override
    public Menu selectById(Integer mId) {
        return menuMapper.selectById(mId );
    }

    @Override
    public List<Menu> selectAll() {
        return menuMapper.selectAll();
    }

    @Override
    public int insert(Menu menu) {
        return menuMapper.insert(menu);
    }

    @Override
    public int update(Menu menu) {
        return menuMapper.updateById(menu);
    }

    @Override
    public int delete(Integer mId) {
        return menuMapper.deleteById(mId);
    }

    @Override
    public List<Menu> getMenusByUserId(int Id) {
        return menuMapper.getMenusByUserId(Id);
    }
}
