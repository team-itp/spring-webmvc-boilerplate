package com.example.springmvc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PlayerMapper {
    List<Player> findAll();

    Player findOne(Long id);

    void save(Player player);

    void update(Player player);

    void delete(Long id);
}