package com.slwh.emr.controller;

import com.slwh.emr.service.DrugService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author slwh
 * 药品控制页
 */
@Controller
@RequestMapping("drug")
public class DrugController {
    @Resource
    private DrugService drugService;


    @RequestMapping("/createapplication")
    public String createapplication(){
        return "media/createapplication";
    }

    @RequestMapping("/applicationlist_1")
    public String createapplication_1(){
        return "media/applicationlist_1";
    }

    @RequestMapping("/applicationlist_2")
    public String applicationlist_2(){
        return "media/applicationlist_2";
    }

    @RequestMapping("/applicationlist_3")
    public String applicationlist_3(){
        return "media/applicationlist_3";
    }
}
