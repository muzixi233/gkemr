package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Pation;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;
import java.util.List;

@Mapper
public interface PationMapper {
    int deleteById(Integer pId);

    int insert(Pation record);

    int insertSelective(Pation record);

    Pation selectById(Integer pId);

    int updateByIdSelective(Pation record);

    int updateById(Pation record);
    Pation selectByNameAndmzNum(String pName,int mzNum) ;

    List<Pation> selectAll();

    List<Pation> selectByStatic();

    List<Pation> selectByTime(Date d,int i);

    List<Pation> selectByNotTime(Date d,int i);

    List<Pation> selectByIthStatus(int ith);
}