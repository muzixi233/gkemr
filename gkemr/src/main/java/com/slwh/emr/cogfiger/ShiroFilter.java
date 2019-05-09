package com.slwh.emr.cogfiger;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * @author: tianyong
 * @Time: 2018/8/15 11:36
 * @description:shiro过滤器类
 */
public class ShiroFilter extends FormAuthenticationFilter {

    /**
     * @author: tianyong
     * @time: 2019-01--8
     * @description:重写原认证成功后链接跳转方法
     */
    @Override
    protected void issueSuccessRedirect(ServletRequest request, ServletResponse response) throws Exception {
        WebUtils.issueRedirect(request, response,getSuccessUrl(), null, true);
    }
}