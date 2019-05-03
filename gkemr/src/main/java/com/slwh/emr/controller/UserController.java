package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.User;
import com.slwh.emr.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import javax.servlet.http.*;
/**
 * @author slwh 谌伟 刘清平 王祖玲 何蓉芳
 * 用户控制页
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService UserService;


    @RequestMapping("/hello")
    public String login(HttpServletRequest request, Map<String, Object> map)throws Exception{
        System.out.println("登录测试");
        // 登录失败从request中获取shiro处理的异常信息。
        // shiroLoginFailure:就是shiro异常类的全类名.
        String exception = (String) request.getAttribute("shiroLoginFailure");
        System.out.println("exception=" + exception);
        String msg = "";
        if (exception != null) {
            if (UnknownAccountException.class.getName().equals(exception)) {
                System.out.println("UnknownAccountException -- > 账号不存在：");
                msg = "UnknownAccountException -- > 账号不存在：";
            } else if (IncorrectCredentialsException.class.getName().equals(exception)) {
                System.out.println("IncorrectCredentialsException -- > 密码不正确：");
                msg = "IncorrectCredentialsException -- > 密码不正确：";
            }
             else {
                msg = "else >> "+exception;
                System.out.println("else -- >" + exception);
            }
        }
        map.put("msg", msg);
        System.out.println(msg);
        return "login";
    }
    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping({"/","/index"})
    public String index(){
        return"/index";
    }
/*
门诊医师
 */
    @RequestMapping("/results/chooseresult")
    public String chooseresult(){
        return "/results/chooseresult";
    }
/*
医生详情
 */
    @RequestMapping("/results/moreleavelist_1")
    public String moreleavelist_1(HttpServletRequest request, HttpServletResponse response,String uId) throws IOException {
        request.setAttribute("uId",uId);
        return "/results/moreleavelist_1";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Result login(String username, String password,HttpServletRequest request){
       /* HttpSession session=request.getSession();
        User user=null;
         user.setuName(username);
         user.setuPassword(password);
         session.setAttribute("USER",user);
       List<User> lists= UserService.selectAll();
        session.setAttribute("doctors",lists);*/
        return Result.success(UserService.login(username,password));

    }
    @RequestMapping("/sign")
    public int sign(User user){
        return UserService.insert(user);
    }
    @RequestMapping("/selectAll")
    @ResponseBody
    public Result selectAll(){
        return Result.success(UserService.selectAll());
    }
//根据名称查询
    @RequestMapping("/selectByName")
    @ResponseBody
    public Result selectByName(String username){
        return Result.success(UserService.selectByName(username));
    }
    //根据名称查询
    @RequestMapping("/selectByuNum")
    @ResponseBody
    public Result selectByuNum(String uNum){
        return Result.success(UserService.selectByuNum(uNum));
    }
    //根据id查询
    @RequestMapping("/selectById")
    @ResponseBody
    public Result selectById(Integer uId){
        return Result.success(UserService.selectById(uId));
    }
    @RequestMapping("/update")
    public  int update(User user){
        return UserService.update(user);
    }
    @RequestMapping("/delete")
    public int delete(Integer uId){
        return UserService.delete(uId);
    }

    @RequestMapping("/left")
    public String left(){
        return "left";
    }

    @RequestMapping("/main")
    public String main(){
        return "main";
    }

    @RequestMapping("/top")
    public String top(){
        return "top";
    }

    @RequestMapping("/middle")
    public String middle(){
        return "middle";
    }

    @RequestMapping("/selectAllDoctor")
    @ResponseBody
    public Result selectAllDoctor(){
        return Result.success(UserService.selectAll());
    }
}
