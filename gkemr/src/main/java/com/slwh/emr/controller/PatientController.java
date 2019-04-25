package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.*;

import javax.servlet.http.*;

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
    @Resource
    private UserService UserService;
    @Resource
    private MrService mrService;
    @Resource
    private IthService ithService;

    @RequestMapping("/media/lists")
    public String media(){
        return "/media/lists";
    }
    /*
    门诊挂号
     */
    @RequestMapping("/guahao")
    public String guahao(HttpServletRequest request){

        List<User> users=UserService.selectAll();//医生信息
        request.setAttribute("users", users);
        return "/media/guahao";
    }
    //新增病人
    @RequestMapping("/addPatient")
    public String addPatient(Pation pation,HttpServletRequest request)
    {
        Date d=new Date();
        pation.setDate(d);
        pation.setStatus(0);
        //int tel=Integer.parseInt();
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
        List<Pation> lists = pationService.selectAll() ;
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
    public String treatp(int pId,HttpServletRequest request,String bl_style,String status1,String pName,String mr_num)
    {
        Pation p=pationService.selectById(pId);
        if (status1!=null){
            p.setStatus(1);//已看诊
            pationService.update(p);//更改病人状态

            if(status1.equals("1")){ //判断住院
                p.setIthStatus(1);
                pationService.update(p);
             /*   Ith ith = new Ith();
                ith.setIthNo(ith_no);
                ith.setIthPatient(p.getpId());
                ithService.insert(ith);// 住院*/

            }

            Mr m = new Mr();  //新增病历
            m.setBlPatient(p.getpId());
            m.setBlNum(mr_num);
            m.setBlStyle(bl_style);
            mrService.insert(m);

        }

        List<Pation> lists = pationService.selectAll()  ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/media/zhenduan";
    }

    //查询所有当日门诊,住院病人信息
    @RequestMapping("/tpatient")
    public String tpatient(HttpServletRequest request,String statu)
    {
        int ith_status;
        if ("m".equals(statu)) {
            ith_status=0;
            Date d = new Date();
            List<Pation> lists = pationService.selectByTime(d,ith_status);
            request.setAttribute("lists", lists);
            return "/sys/patient/tpatient";
        }
        else {
            ith_status=1;
            Date d = new Date();
            List<Pation> lists = pationService.selectByTime(d,ith_status);
            request.setAttribute("lists", lists);
            return "/sys/patient/tipatient";
        }

    }
    //修改当日门诊，住院病人信息跳转页
    @RequestMapping("/updatepatient")
    public String updatepatient(HttpServletRequest request,int id)
    {
        Pation p=pationService.selectById(id);
        Mr m = mrService.selectByPId(id);
        request.setAttribute("mr",m);
        request.setAttribute("pation", p);
        return "/sys/patient/updatepatient";
    }

    @RequestMapping("/updatetreat")//修改诊断
    public String updatetreat(int pId,HttpServletRequest request,String bl_style,String status1,String pName,String ith_no)
    {
        Pation p=pationService.selectById(pId);
        Date d = new Date();
        int i;
            if("1".equals(status1)){ //判断住院
                i=1;
                p.setIthStatus(1);
                pationService.update(p);
                Mr m = mrService.selectByPId(pId); //修改病历
                m.setBlStyle(bl_style);
                mrService.update(m);
                List<Pation> lists = pationService.selectByTime(d,i) ;
                request.setAttribute("lists", lists);
                return "/sys/patient/tipatient";
            }
            else {
                i=0;
                Mr m = mrService.selectByPId(pId); //修改病历
                m.setBlStyle(bl_style);
                mrService.update(m);
                List<Pation> lists = pationService.selectByTime(d,i) ;
                request.setAttribute("lists", lists);
                return "/sys/patient/tpatient";
            }

    }

    //查询所有历史门诊,住院病人信息
    @RequestMapping("/hpatient")
    public String hpatient(HttpServletRequest request ,String statu,int i)
    {
        if ("m".equals(statu)) {
            Date d = new Date();
            List<Pation> lists = pationService.selectByNotTime(d,i);
            System.out.println("********************" + lists.get(0).getpName());
            request.setAttribute("lists", lists);
            return "/sys/patient/hpatient";
        }
        else {
            Date d = new Date();
            List<Pation> lists = pationService.selectByNotTime(d,i);
            System.out.println("********************" + lists.get(0).getpName());
            request.setAttribute("lists", lists);
            return "/sys/patient/hipatient";
        }
    }

    //查询历史门诊,住院病人信息跳转页
    @RequestMapping("/xiangqing")
    public String xiangqing(HttpServletRequest request,int id)
    {
        Pation p=pationService.selectById(id);
        Mr m = mrService.selectByPId(id);
        request.setAttribute("mr",m);
        request.setAttribute("pation", p);
        return "/sys/patient/xiangqing";
    }

}