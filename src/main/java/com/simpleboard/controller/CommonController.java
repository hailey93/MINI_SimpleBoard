package com.simpleboard.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j
@Controller
public class CommonController {

    @GetMapping("/accessError")
    public void accessDenied(Authentication auth, Model model){
        log.info("접근 거부: "+auth);
        model.addAttribute("msg", "접근 거부");
    }

    @GetMapping("/member/login")
    public void loginInput(String error, String logout, Model model){
        log.info("error: "+error);
        log.info("logout: "+logout);

        if(error!=null){
            model.addAttribute("error", "로그인 오류입니다.");
        }
        if(logout!=null){
            model.addAttribute("logout","로그아웃되었습니다.");
        }
    }

    @GetMapping("/member/logout")
    public void logoutGET(){
        log.info("로그아웃");
    }
}
