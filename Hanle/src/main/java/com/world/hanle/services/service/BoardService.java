package com.world.hanle.services.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.world.hanle.services.model.Board;

@Service
@Transactional
public class BoardService extends GenericService<Board> {

}
