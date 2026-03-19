package com.gabi0403.gamestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;





@Controller
public class IndexController {
    //rotas de navegação do site

    @GetMapping("/")
    public String getIndex(){
        return "index";
    }

    @GetMapping("/home")
    public String getHome() {
        return "index";
    }
    
    @GetMapping("/game-add")
    public String getGameAdd() {
        return "/game/add";
    }
    
    
}