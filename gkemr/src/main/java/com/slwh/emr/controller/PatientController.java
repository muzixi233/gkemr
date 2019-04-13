package com.slwh.emr.controller;

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
@RequestMapping("treat")
public class TreatController {
    @Resource
    private TreatService treatService;

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
}
