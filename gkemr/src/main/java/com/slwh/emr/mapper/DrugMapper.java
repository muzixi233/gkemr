package com.slwh.emr.mapper;

import com.slwh.emr.model.Drug;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DrugMapper {
    int deleteById(Integer drId);

    int insert(Drug record);

    int insertSelective(Drug record);

    Drug selectById(Integer drId);

    int updateByIdSelective(Drug record);

    int updateById(Drug record);

    List<Drug> selectAll();
}