package com.simpleboard.controller;

import com.simpleboard.domain.BoardVO;
import com.simpleboard.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor //BoardController는 BoardService에 대해 의존적이므로 생성자를 만들고 자동으로 주입하도록 하는 것이다.
public class BoardController {

    private BoardService service;

    @GetMapping("/list")
    public void list(Model model){
        log.info("list");
        model.addAttribute("list", service.getList());
    }

    @GetMapping("/register")
    public void register(){

    }
    @PostMapping("/register")
    public String register(BoardVO vo, RedirectAttributes rttr){
        log.info("register: "+vo);
        service.register(vo);
        rttr.addFlashAttribute("result", vo.getNum());
        return "redirect:/board/list";
    }

    @GetMapping({"/get","/modify"})
    public void get(@RequestParam("num") Long num, Model model){
        log.info("/get or /modify");
        model.addAttribute("board", service.get(num));
    }

    @PostMapping("/modify")
    public String modify(BoardVO vo, RedirectAttributes rttr){
        log.info("***********************************************************");
        log.info("modify: "+vo);
        if(service.modify(vo)){
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/list";
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("num") Long num, RedirectAttributes rttr){
        log.info("remove..."+num);
        if(service.remove(num)){
            rttr.addFlashAttribute("result", "success");
        }
        return "redirect:/board/list";
    }

}
