package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Ith;
import com.slwh.emr.model.Pation;
import com.slwh.emr.model.User;
import com.slwh.emr.service.IthService;
import com.slwh.emr.service.NurseService;
import com.slwh.emr.service.PationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author slwh
 */
@Controller
@RequestMapping("nurse")
public class NurseController {
    @Resource
    private NurseService nurseService;
    @Resource
    private IthService ithService;
    @Resource
    private PationService pationService;

    @RequestMapping("/nurselist")
    public String index(){
        return "nurse/nurselist";
    }
    @RequestMapping("/select")
    @ResponseBody
    public Result select(HttpServletRequest request){

        List<Ith> iths=ithService.selectAll();//住院信息
        return  Result.success(iths);
    }
}
