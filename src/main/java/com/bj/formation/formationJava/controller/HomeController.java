package com.bj.formation.formationJava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping({"/","/dashboard","/home"})
    public String index (){
        return "dashboard";
    }


    @RequestMapping({"/categories"})
    public String categories (){
        return "categories";
    }

    @RequestMapping({"/article"})
    public String article (){
        return "article";
    }


}
