package com.slwh.emr.controller;

import com.slwh.emr.service.MrService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("Mr")
public class MrServiceController {
    @Resource
    private MrService mrService;
    @RequestMapping("/addBl")
    public String Bl(){
        return "login";
    }
}
