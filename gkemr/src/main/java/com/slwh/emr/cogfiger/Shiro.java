package com.slwh.emr.cogfiger;

import com.slwh.emr.model.Menu;
import com.slwh.emr.model.Permission;
import com.slwh.emr.model.Role;
import com.slwh.emr.model.User;
import com.slwh.emr.service.MenuService;
import com.slwh.emr.service.PermissionService;
import com.slwh.emr.service.RoleService;
import com.slwh.emr.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


/**
 * @author slwh，谌伟，王祖玲，何蓉芳，刘清平
 * shiroRealm
 */
public class Shiro extends AuthorizingRealm{

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;
    @Autowired
    private PermissionService permissionService;


    /**
     * 授权
     * @param principalCollection 身份集合
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        User user= (User) principalCollection.getPrimaryPrincipal();
        List<Role> roles=roleService.getRolesByUserId(user.getuId());
      //  List<Menu> menus=menuService.getMenusByUserId(user.getuId());
        List<Permission> permissions = permissionService.getPermissionsByUserId(user.getuId());
        simpleAuthorizationInfo.addRoles(roles.stream().map(Role::getrName).collect(Collectors.toSet()));
        simpleAuthorizationInfo.addStringPermissions(permissions.stream().map(Permission::getPeName).collect(Collectors.toSet()));
      //  simpleAuthorizationInfo.setStringPermissions(permissions);
       //simpleAuthorizationInfo.addStringPermissions(menus.stream().map(Menu::getmName).collect(Collectors.toSet()));
        return simpleAuthorizationInfo;
    }

    /**
     * 认证
     * @param authenticationToken token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username= (String) authenticationToken.getPrincipal();
        User user =userService.selectByName(username);
        if(user == null){
            throw new UnknownAccountException("用户名或密码错误");
        }
        SimpleAuthenticationInfo simpleAuthenticationInfo=new SimpleAuthenticationInfo(
                user,user.getuPassword(), ByteSource.Util.bytes(user.getStatus()),getName()
        );
        Session session=SecurityUtils.getSubject().getSession();
        session.setAttribute("user",user);
        return simpleAuthenticationInfo;
    }

    /**
     * 清理缓存权限
     */
    public void clearCachedAuthorizationInfo() {
        this.clearCachedAuthorizationInfo(SecurityUtils.getSubject().getPrincipals());
    }
}
