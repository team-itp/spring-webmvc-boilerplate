package com.example.springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlayerService {

    @Autowired
    private PlayerMapper playerMapper;

    public List<Player> search(PlayerSearchCondition condition, PagingAndSorting ps) {
        return playerMapper.search(condition, ps);
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