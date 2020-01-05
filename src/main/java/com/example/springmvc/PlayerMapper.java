package com.example.springmvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface PlayerMapper {
    List<Player> search(@Param("condition") PlayerSearchCondition condition, @Param("ps") PagingAndSorting ps);

    int count(@Param("condition") PlayerSearchCondition condition);

    Player findOne(Long id);

    void save(Player player);

    void update(Player player);

    void delete(Long id);
}