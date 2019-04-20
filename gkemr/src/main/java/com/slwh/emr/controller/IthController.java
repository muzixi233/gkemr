package com.slwh.emr.controller;

import com.slwh.emr.model.*;
import com.slwh.emr.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("ith")
public class IthController {
    @Resource
    private PationService pationService;
    @Resource
    private com.slwh.emr.service.UserService UserService;
    @Resource
    private MrService mrService;
    @Resource
    private IthService ithService;
    @Resource
    private NurseService nurseService;
    @Resource
    private BedService bedService;
    @RequestMapping("/medical")
    public String medical(HttpServletRequest request){

        List<Pation> lists = pationService.selectAll() ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/medical/createmedical";
    }
    @RequestMapping("/patientSelect")//根据病人姓名、门诊编号查询
    public String patientSelect(String pName,String Num,HttpServletRequest request)
    {
        int mzNum=Integer.parseInt(Num);
        Pation p=pationService.selectByNameAndmzNum(pName,mzNum);
        request.setAttribute("pation", p);
        return "/medical/createmedical";
    }
    @RequestMapping("/deal")//住院办理
    public String banLi(int id,HttpServletRequest request)
    {
        Pation p=pationService.selectById(id);//病人信息
        request.setAttribute("pation", p);
        List<Nurse> nurses=nurseService.selectAll();//护理信息
        request.setAttribute("nurses", nurses);
        List<User> users=UserService.selectAll();//医生信息
        request.setAttribute("users", users);
        List<Bed> beds=bedService.selectByStatus();//床位信息
        request.setAttribute("beds", beds);
       Mr mr=mrService.selectByPId(id);//病历信息
        request.setAttribute("mr", mr);
        return "/medical/baoxiao/app2";
    }
    @RequestMapping("/addIth")//住院办理
    public String addIth(Ith ith,String pName,String level,HttpServletRequest request)
    {

        System.out.println("%%%%%%%%%%%%%%"+ith.getIthPatient());
      ith.setIthStatus("已办理");
      if(level.endsWith("一级护理"))
          ith.setIthNurse(1);
      else if(level.endsWith("二级护理"))
          ith.setIthNurse(2);
      else if(level.endsWith("普通护理"))
          ith.setIthNurse(3);
       if(ithService.insert(ith)==1)
       {
           Pation p=pationService.selectById(ith.getIthPatient());
           p.setIthBanLi(1);
           pationService.update(p);//已办理成功
       }
      request.setAttribute("ith",ith);
      request.setAttribute("pName",pName);
        request.setAttribute("level",level);
        return "/medical/loan/app2";
    }

}
