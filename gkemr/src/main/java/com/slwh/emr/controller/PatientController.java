package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Pation;
import javax.servlet.http.*;
import com.slwh.emr.model.Treat;
import com.slwh.emr.model.User;
import com.slwh.emr.service.*;
import java.util.*;
import java.lang.Integer.*;
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
    private UserService UserService;
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
        Date d=new Date();
        pation.setDate(d);
        pation.setStatus(0);
        pationService.insert(pation);
        List<Pation> lists = pationService.selectAll()  ;
        request.setAttribute("lists", lists);
        return "/media/info";
    }
    @RequestMapping("/patientSelect")//根据病人姓名、门诊编号查询
    public String patientSelect(String pName,String Num,HttpServletRequest request)
    {
        int mzNum=Integer.parseInt(Num);
        Pation p=pationService.selectByNameAndmzNum(pName,mzNum);
        request.setAttribute("pation", p);
        return "/media/info";
    }

    @RequestMapping(params="xiangqing")//根据病人姓名、门诊编号查询
    public String xiangqing(int id,HttpServletRequest request)
    {
        //int mzNum=Integer.parseInt(Num);
        Pation p=pationService.selectById(id);
        request.setAttribute("pation", p);
        return "/media/moreapplicationlist_1";
    }
}
