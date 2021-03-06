package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper {
    int deleteById(Integer mId);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectById(Integer mId);

    int updateByIdSelective(Menu record);

    int updateById(Menu record);

    List<Menu> selectAll();

    List<Menu> getMenusByUserId(int id);
}