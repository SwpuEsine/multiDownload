package com.example.download.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class ArticleController {
 

 
    @RequestMapping("")
    public String getArticles(Model model, String title) {
        List<String> list=new ArrayList<String>();
        list.add("1.png");
        list.add("2.png");
        list.add("3.png");
        model.addAttribute("list", list);
        return "index";
    }
}