package com.example.springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlayerService {

    @Autowired
    private PlayerMapper playerMapper;

    public Pageable<Player> search(PlayerSearchCondition condition, PagingAndSorting ps) {
        int count = playerMapper.count(condition);
        List<Player> resultList = playerMapper.search(condition, ps);
        return new Pageable<Player>(resultList, count, ps);
    }

    public Player findOne(Long id) {
        return playerMapper.findOne(id);
    }

    @Transactional
    public void save(Player player) {
        playerMapper.save(player);
    }

    @Transactional
    public void update(Player player) {
        playerMapper.update(player);
    }

    @Transactional
    public void delete(Long id) {
        playerMapper.delete(id);
    }
}