package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Pation;
import com.slwh.emr.model.Treat;
import com.slwh.emr.model.User;
import com.slwh.emr.service.PationService;
import com.slwh.emr.service.TreatService;
import com.slwh.emr.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public Result addPatient(Pation pation){
        return Result.success(pationService.insert(pation));
    }
}
