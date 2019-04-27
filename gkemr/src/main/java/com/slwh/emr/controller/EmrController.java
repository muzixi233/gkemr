package com.slwh.emr.controller;


import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Ith;
import com.slwh.emr.service.IthService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("emr")
public class EmrController {
    @Resource
    private IthService ithService;

    @RequestMapping("/outpatientList")
    public String outpatientList(){
        return "emr/subject/outpatientList";
    }
    @RequestMapping("/selectAll")
    @ResponseBody
    public Result select(HttpServletRequest request){

        List<Ith> iths=ithService.selectAll();//所有住院信息
        return  Result.success(iths);
    }
}
