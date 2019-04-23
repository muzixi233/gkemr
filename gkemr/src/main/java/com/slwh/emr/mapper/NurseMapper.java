package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Nurse;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NurseMapper {
    int deleteById(Integer nId);

    int insert(Nurse record);

    int insertSelective(Nurse record);

    Nurse selectById(Integer nId);

    int updateByIdSelective(Nurse record);

    int updateById(Nurse record);

    List<Nurse> selectAll();

    Nurse selectByLevel(String level);
}