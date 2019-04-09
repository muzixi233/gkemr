package com.slwh.emr.mapper;

import com.slwh.emr.model.Bed;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BedMapper {
    int deleteByID(Integer bedId);

    int insert(Bed record);

    int insertSelective(Bed record);

    Bed selectById(Integer bedId);

    int updateByIdSelective(Bed record);

    int updateById(Bed record);

    List<Bed> selectAll();
}