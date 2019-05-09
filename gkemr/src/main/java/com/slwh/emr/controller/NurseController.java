package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.*;
import com.slwh.emr.service.IthService;
import com.slwh.emr.service.MrService;
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
 * 护理控制页
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
    @Resource
    private MrService mrService;


    @RequestMapping("/nurselist")
    public String nurselist(){
        return "nurse/nurselist";
    }
    @RequestMapping("/select")
    @ResponseBody
    public Result select(HttpServletRequest request){

        List<Ith> iths=ithService.selectByStatus();//所有住院信息
        return  Result.success(iths);
    }

    @RequestMapping("/update")//住院维护
    public String update(HttpServletRequest request,int ithId){
        Ith ith = ithService.selectById(ithId);//住院信息

        System.out.println("shdasdhjasfs"+ith.getPation().getpId());
        Mr mr = mrService.selectByPIdAndHistory(ith.getPation().getpId());//病历信息
        List<Nurse> nurses=nurseService.selectAll();//护理信息
        request.setAttribute("nurses", nurses);

        System.out.println(mr.getBlStyle()+"sdasdasdasd");
        request.setAttribute("mr",mr);
        request.setAttribute("ith",ith);
        return "nurse/updatenurse";
    }

    @RequestMapping("/updatenurse")//护理修改
    public String updatenurse(int ithId,String level,HttpServletRequest request)
    {
        Ith ith = ithService.selectById(ithId);
        if(level.endsWith("一级护理"))
            ith.setIthNurse(1);
        else if(level.endsWith("二级护理"))
            ith.setIthNurse(2);
        else if(level.endsWith("普通护理"))
            ith.setIthNurse(3);

        ithService.update(ith);//修改病历
         List<Ith> ith1 = ithService.selectAll();
         request.setAttribute("ith",ith1);
        return "nurse/nurselist";
    }
}
