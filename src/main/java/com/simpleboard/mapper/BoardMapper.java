package com.simpleboard.mapper;

import com.simpleboard.domain.BoardVO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BoardMapper {
    //@Select("select * from board where num>0")
    public List<BoardVO> getList();

    public void insert(BoardVO vo);

    public void insertSelectKey(BoardVO vo);

    public BoardVO read(long num);

    public int delete(long num);

    public int update(BoardVO vo);
}
