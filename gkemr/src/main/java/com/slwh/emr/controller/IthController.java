package com.slwh.emr.controller;

import com.slwh.emr.model.*;
import com.slwh.emr.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
/**
 * @author slwh 谌伟 刘清平 王祖玲 何蓉芳
 * 住院控制页
 */
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
        return "/medical/baoxiao/app2";
    }
    @RequestMapping("/addIth")//住院办理
    public String addIth(Ith ith,String pName,String blNum,String level,HttpServletRequest request)
    {

        System.out.println("%%%%%%%%%%%%%%"+ith.getIthPatient());
      ith.setIthStatus("已入院");
      //护理信息
        Nurse nurse=nurseService.selectByLevel(level);

        ith.setIthNurse(nurse.getnId());
        //医生信息
        User user=UserService.selectByName(ith.getIthUser());
        System.out.println(user.getuId()+"dsdasdasdasdssdasdasd");
       if(ithService.insert(ith)==1)//住院信息
       {
           System.out.println("%%%%%%%%%%%%%%"+ith.getIthPatient());
           Pation p=pationService.selectById(ith.getIthPatient());
           p.setIthBanLi(1);
           pationService.update(p);//已办理成功
           //修改病历信息
           Mr m = mrService.selectByPIdAndHistory(p.getpId());//查询非历史病历对应的病人
           m.setBlNum(blNum);
           m.setBlMsg(ith.getIthMsg());
           m.setBlHuli(ith.getIthNurse());
           m.setDate(new Date());
           //m.setBlHuli(nurse.getnId());
           m.setBlUser(user.getuId());//医生
           m.setBlBed(ith.getIthBed());//床
           System.out.println("%%%%%%%%%%%%%%"+ith.getIthPatient());
           mrService.update(m);//修改病历

           //修改病床状态
           Bed bed=bedService.selectById(Integer.parseInt(ith.getIthBed()));
           System.out.println("%%%%%%%%%%%%%%"+bed.getStatus());
           bed.setStatus(1);
           bedService.update(bed);
          // System.out.println("%%%%%%%%%%%%%%修改成功");
       }

      request.setAttribute("ith",ith);
      request.setAttribute("pName",pName);
        request.setAttribute("level",level);
        return "/medical/loan/app2";
    }

    @RequestMapping("/chufang")
    public String chufang(HttpServletRequest request){

        List<Pation> lists = pationService.selectAll() ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/medical/baoxiao/applist_1-1";
    }
    @RequestMapping("/cfxq")//处方详情没写
    public String chuFXQ(HttpServletRequest request){

        return "/medical/baoxiao/moreapplist_1-4";
    }
    @RequestMapping("/chuYuan")//出院申请
    public String chuYuan(HttpServletRequest request){

        List<Pation> lists = pationService.selectAll() ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/medical/loan/applist_2";
    }

    @RequestMapping("/cyxq")//出院详情
    public String chuYXQ(int id,HttpServletRequest request){
       Pation pation=pationService.selectById(id);//病人信息
        Mr mr=mrService.selectByPIdAndHistory(id);//病历信息
        request.setAttribute("pation",pation);
        request.setAttribute("mr",mr);
        return "/medical/loan/chuYXQ";
    }
    @RequestMapping("/cyDeal")//出院办理
    public String cyDeal(int id,HttpServletRequest request){
        //住院信息
        Ith ith=ithService.selectByPIdAndStatus(id);
        ith.setIthStatus("已出院");
        ithService.update(ith );
        //病床信息
        Bed bed=bedService.selectById(Integer.parseInt(ith.getIthBed()));
        bed.setStatus(0);
        bedService.update(bed);
        Pation pation=pationService.selectById(id);//病人信息
        pation.setIthBanLi(2);//病人出院
        pationService.update(pation);
      //病历信息修改
        Mr mr=mrService.selectByPIdAndHistory(id);
        mr.setBlHistory("1");
        mrService.update(mr);
        List<Pation> lists = pationService.selectAll() ;
        System.out.println("********************"+lists.get(0).getpName());
        request.setAttribute("lists", lists);
        return "/medical/loan/yChuYuan";
    }

    @RequestMapping("/fayao")//住院发药
    public String fayao(HttpServletRequest request){


        return "/medical/baoxiao/fayao";
    }
}
