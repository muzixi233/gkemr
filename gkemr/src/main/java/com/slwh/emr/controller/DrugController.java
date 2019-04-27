package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Drug;
import com.slwh.emr.model.Mr;
import com.slwh.emr.model.Pation;
import com.slwh.emr.service.DrugService;
import com.slwh.emr.service.MrService;
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
 * 药品控制页
 */
@Controller
@RequestMapping("drug")
public class DrugController {
    @Resource
    private DrugService drugService;
    @Resource
    private PationService pationService;
    @Resource
    private MrService mrService;
    @RequestMapping("/selectAll")
    @ResponseBody
    public Result select(HttpServletRequest request){
       return Result.success(drugService.selectAll());
    }

    @RequestMapping("/createapplication")
    public String createapplication(){
        return "drug/createapplication";
    }

    @RequestMapping("/adddrug")//新增药品跳转
    public String adddrug(HttpServletRequest request, Drug drug){
        return "drug/adddrug";
    }

    @RequestMapping("/delete")//删除药品
    public String delete(HttpServletRequest request,int dr_id){
        drugService.delete(dr_id);
        return "drug/deletedrug";
    }

    @RequestMapping("/insert")//新增药品、
    public String insert(Drug drug,HttpServletRequest request,String dr_name,String dr_num,String dr_price,String dr_account
            ,int dr_level){
        System.out.println(dr_name);
        Date date = new Date();
        drug.setDrName(dr_name);
        drug.setDrNum(dr_num);
        drug.setDrLevel(dr_level);
        drug.setDrPrice(dr_price);
        drug.setDrAccount(dr_account);
        drug.setDrDate(date);
        drugService.insert(drug);
        List<Drug> drugs = drugService.selectAll();
        request.setAttribute("drugs",drugs);
        return "drug/applicationlist_1";
    }

    @RequestMapping("/selectpatient")//待开药病人
    @ResponseBody
    public Result selectpatient(HttpServletRequest request){
        return Result.success(pationService.selectkaiyao());
    }

    @RequestMapping("/fayaoxq")//待开药病人详情
    public String fayaoxq(int pId,HttpServletRequest request){
        Pation p = pationService.selectById(pId);
        Mr m = mrService.selectByPId(pId);
        request.setAttribute("mr",m);
        request.setAttribute("p",p);
        return "medical/baoxiao/fayaoxq";
    }

    @RequestMapping("/deletedrug")//移除药品跳转
    public String deletedrug(){
        return "drug/deletedrug";
    }
    @RequestMapping("/addacount")//新增药品查询跳转
    public String addacount(){
        return "drug/addacount";
    }
    @RequestMapping("/deleteacount")//移除药品统计跳转
    public String deleteacount(){
        return "drug/deleteacount";
    }
    @RequestMapping("/applicationlist_1")
    public String createapplication_1(){
        return "drug/applicationlist_1";
    }

    @RequestMapping("/applicationlist_2")
    public String applicationlist_2(){
        return "drug/applicationlist_2";
    }

    @RequestMapping("/applicationlist_3")
    public String applicationlist_3(){
        return "drug/applicationlist_3";
    }
}
