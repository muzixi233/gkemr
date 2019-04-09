package com.slwh.emr.mapper;

import com.slwh.emr.model.Ith;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IthMapper {
    int deleteById(Integer ithId);

    int insert(Ith record);

    int insertSelective(Ith record);

    Ith selectById(Integer ithId);

    int updateByIdSelective(Ith record);

    int updateById(Ith record);

    List<Ith> selectAll();
}