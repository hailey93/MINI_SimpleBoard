package com.simpleboard.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j
@RequestMapping("/sample/*")
@Controller
public class SampleController {

    @GetMapping("/all")
    public void doAll(){
        log.info("아무나 접근 가능");
    }

    @GetMapping("/member")
    public void doMember(){
        log.info("멤버만 접근 가능");
    }

    @GetMapping("/admin")
    public void doAdmin(){
        log.info("관리자만 접근 가능");
    }
}
