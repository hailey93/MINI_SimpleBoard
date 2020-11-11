package com.simpleboard.mapper;

import com.simpleboard.domain.BoardVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/applicationContext.xml")
@Log4j
public class BoardMapperTest {

    @Setter(onMethod_=@Autowired)
    private BoardMapper boardMapper;
    @Test
    public void testGetList(){
        boardMapper.getList().forEach(board->log.info(board));
    }

    @Test
    public void testInsert(){
        BoardVO vo=new BoardVO();
        vo.setTitle("테스트");
        vo.setContent("호호호");
        vo.setId("kim1");

        boardMapper.insert(vo);
        log.info(vo);
    }

    @Test
    public void testInsertSelectKey(){
        BoardVO vo=new BoardVO();
        vo.setTitle("테스트2");
        vo.setContent("호호호2");
        vo.setId("kim1");

        boardMapper.insertSelectKey(vo);
        log.info(vo);
    }

    @Test
    public void testRead(){
        BoardVO vo= boardMapper.read(5L);
        log.info(vo);
    }

    @Test
    public void testDelete(){
        log.info("DELETE COUNT: "+boardMapper.delete(3L));
    }

    @Test
    public void testUpdate(){
        BoardVO vo=new BoardVO();
        vo.setNum(5L);
        vo.setTitle("수정");
        vo.setContent("수정하하하");

        int count=boardMapper.update(vo);
        log.info("UPDATE COUNT: "+count);
    }
}
