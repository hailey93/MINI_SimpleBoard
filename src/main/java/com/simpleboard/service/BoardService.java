package com.simpleboard.service;

import com.simpleboard.domain.BoardVO;

import java.util.List;

public interface BoardService {

    public void register(BoardVO vo);
    public BoardVO get(Long num);
    public boolean modify(BoardVO vo);
    public boolean remove(Long num);
    public List<BoardVO> getList();

}
