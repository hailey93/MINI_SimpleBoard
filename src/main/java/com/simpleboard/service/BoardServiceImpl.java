package com.simpleboard.service;

import com.simpleboard.domain.BoardVO;
import com.simpleboard.mapper.BoardMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Log4j
@Service
public class BoardServiceImpl  implements BoardService{

    @Setter(onMethod_=@Autowired)
    private BoardMapper mapper;

    @Override
    public void register(BoardVO vo) {
        log.info("register..."+vo);
        mapper.insertSelectKey(vo);
    }

    @Override
    public BoardVO get(Long num) {
        log.info("get..."+num);
        return mapper.read(num);
    }

    @Override
    public boolean modify(BoardVO vo) {
        log.info("modify..."+vo);
        return mapper.update(vo)==1;
    }

    @Override
    public boolean remove(Long num) {
        log.info("remove..."+num);
        return mapper.delete(num)==1;
    }

    @Override
    public List<BoardVO> getList() {

        log.info("getList....");
        return mapper.getList();
    }
}
