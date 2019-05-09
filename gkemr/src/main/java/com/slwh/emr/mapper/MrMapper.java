package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Mr;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MrMapper {
    int deleteById(Integer blId);

    int insert(Mr record);

    int insertSelective(Mr record);

    Mr selectById(Integer blId);

    int updateByIdSelective(Mr record);

    int updateById(Mr record);

    List<Mr> selectAll();
    Mr selectByPId(Integer blPatient);


    List<Mr> selectByPIdAndMrNum(int id, String mrNum);

    Mr selectByPIdAndHistory(Integer getpId);
}