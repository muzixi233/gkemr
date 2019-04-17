package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Ith;
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
    private MrService mrService;
    private IthService ithService;

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
    //查询所有挂号信息
    @RequestMapping("/info")
    public String infoSelect(HttpServletRequest request)
    {
        List<Pation> lists = pationService.selectAll()  ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/media/info";
    }

    //查询所有待诊断病人信息
    @RequestMapping("/zhenduan")
    public String zhenduanSelect(HttpServletRequest request)
    {
        List<Pation> lists = pationService.selectByStatic()  ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/media/zhenduan";
    }

    @RequestMapping("/treat")//病人诊断页
    public String treat(int id,HttpServletRequest request)
    {
        //int mzNum=Integer.parseInt(Num);
        Pation p=pationService.selectById(id);
        request.setAttribute("pation", p);
        return "/media/treat";
    }
    @RequestMapping("/treatp")//诊断
    public String treatp(int pId,HttpServletRequest request,String bl_style,String status1,String pName,String ith_no)
    {
        Pation p=pationService.selectById(pId);
        if (status1!=null){
            p.setStatus(1);
            pationService.update(p);//更改病人状态

            if(status1.equals("1")){ //判断住院
                Ith ith = new Ith();
                ith.setIthId(1);
                ith.setIthNo(ith_no);
                ith.setIthBed("1");
                ith.setIthMsg("1");
                ith.setIthNurse(1);
                ith.setIthStatus("1");
                ith.setIthUser("1");
                ith.setIthPatient(p.getpId());
                ithService.insert(ith);//空指针异常？？

            }
        }

        List<Pation> lists = pationService.selectByStatic()  ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/media/zhenduan";
    }
}
