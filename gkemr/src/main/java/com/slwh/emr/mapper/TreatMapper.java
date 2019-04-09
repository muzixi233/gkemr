package com.slwh.emr.mapper;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Treat;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TreatMapper {
    int deleteById(Integer tId);

    int insert(Treat record);

    int insertSelective(Treat record);

    Treat selectById(Integer tId);

    int updateByIdSelective(Treat record);

    int updateById(Treat record);

    List<Treat> selectAll();
}