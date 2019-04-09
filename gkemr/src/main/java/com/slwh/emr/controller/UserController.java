package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.User;
import com.slwh.emr.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author muzixi ceshiyiai
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService UserService;


    @RequestMapping("/hello")
    public String StringhelloJsp(){//主界面

        return "index";
    }


    @RequestMapping("/login")
    public Result login(String username, String password){//登录
        return Result.success(UserService.login(username,password));

    }
    @RequestMapping("/sign")
    public int sign(User user){//注册
        return UserService.insert(user);

    }
    @RequestMapping("/selectAll")
    @ResponseBody
    public Result selectAll(){
        return Result.success(UserService.selectAll());
    }

    @RequestMapping("/selectByName")
    public Result selectByName(String username){
        return Result.success(UserService.selectByName(username));
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

    @RequestMapping("/dept")
    public String department(){
        return "media/lists";
    }
}
