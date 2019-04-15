package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Pation;
import javax.servlet.http.*;
import com.slwh.emr.model.Treat;
import com.slwh.emr.model.User;
import com.slwh.emr.service.PationService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;

/**
 * @author muzixi 难受
 */
@Controller
@RequestMapping("patient")
public class PatientController {
    @Resource
    private PationService pationService;

    @RequestMapping("/media/lists")
    public String media(){
        return "/media/lists";
    }
    /*
    门诊挂号
     */
    @RequestMapping("/guahao")
    public String guahao(){
        return "/media/guahao";
    }
    //新增病人
    @RequestMapping("/addPatient")
    public String addPatient(Pation pation,HttpServletRequest request)
    {
        //System.out.println(pation.getMrNum()+"****  ");
        pationService.insert(pation);
       // List<Pation> lists = adminService.queryAll();

       // request.setAttribute("ad", lists);
        return "/media/guahao";
    }
}
