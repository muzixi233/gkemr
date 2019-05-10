package com.slwh.emr.controller;

import com.slwh.emr.cogfiger.Result;
import com.slwh.emr.model.Role;
import com.slwh.emr.model.Role_UserKey;
import com.slwh.emr.model.User;
import com.slwh.emr.service.RoleService;
import com.slwh.emr.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author slwh 谌伟 刘清平 王祖玲 何蓉芳
 * 角色控制页
 */
@Controller
@RequestMapping("role")
public class RoleController {
    @Resource
    private RoleService roleService;
    @Resource
    private UserService userService;


    @RequestMapping("/rolelist")//角色管理
    public String rolelist(){
        return "role/rolelist";
    }

    @RequestMapping("/selectRole")//角色管理
    @ResponseBody
    public Result selectRole(){

        return Result.success(roleService.selectAll());
    }

    @RequestMapping("/query")//用户管理
    public String query(HttpServletRequest request){
        //所有用户-角色信息
       /* List<User> users=userService.selectAll();
        request.setAttribute("users",users);*/
       List<Role_UserKey> userKeys=userService.selectAllUserRole();
        request.setAttribute("userKeys",userKeys);
        return "role/query";
    }

    @RequestMapping("/userlist")//角色用户列表
    public String userlist(HttpServletRequest request, HttpServletResponse response,int rId){
        List<User> user= userService.selectByrId(rId);
        Role role = roleService.selectById(rId);
        request.setAttribute("user",user);
        request.setAttribute("role",role);
        return "role/roleuserlist";
    }
    @RequestMapping("/assignRole")//角色列表
    public String assignRole(HttpServletRequest request,int uId){
        List<Role> roles=roleService.selectAll();
        request.setAttribute("roles",roles);
        User user=userService.selectById(uId);
        request.setAttribute("user",user);
        return "/user/assignRole";
    }
    @RequestMapping("/roleAssign")//角色用户列表
    public String roleAssign(HttpServletRequest request,int uid,String role){
        User user=userService.selectById(uid);
        user.setStatus(1);
       userService.update(user);
       Role role1=roleService.selectByName(role);
        Role_UserKey role_userKey=new Role_UserKey();
        role_userKey.setrId(role1.getrId());
        role_userKey.setuId(uid);
      if(role1!=null){
        roleService.insertRoleUser(role_userKey);

      }

        return "redirect:/role/query";
    }

}
