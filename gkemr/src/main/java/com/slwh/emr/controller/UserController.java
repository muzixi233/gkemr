package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.User;
import com.slwh.emr.service.UserService;
import org.apache.ibatis.annotations.Param;
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
 * @author muzixi 难受
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService UserService;


    @RequestMapping("/hello")
    public String index(){
        return "login";
    }
    @RequestMapping("/index")
    public String StringhelloJsp(){
        return "index";
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
