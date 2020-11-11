package com.simpleboard.service;

import static org.junit.Assert.assertNotNull;

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
public class BoardServiceTest {
    @Setter(onMethod_=@Autowired)
    private BoardService service;

    @Test
    public void testExist(){
        log.info(service);
        assertNotNull(service);
    }

    @Test
    public void testRegister(){
        BoardVO vo=new BoardVO();
        vo.setTitle("새로운글");
        vo.setContent("히");
        vo.setId("kimkim");

        service.register(vo);

        log.info("생성된 게시물 번호: "+vo.getNum());
    }

    @Test
    public void testGetList(){
        service.getList().forEach(vo -> log.info(vo));
    }

    @Test
    public void testDelete(){
        log.info("REMOVE RESULT: "+service.remove(2L));
    }

    @Test
    public void testUpdate(){
        BoardVO vo=service.get(1L);
        if(vo==null){
            return;
        }
        vo.setTitle("수정해영");
        log.info("MODIFY RESULT: "+service.modify(vo));
    }
}
