package com.slwh.emr.cogfiger;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

/**
 * @Description	MyFormAuthenticationFilter 自定义session失效跳转页面
 * @Date		2017年9月18日 下午4:48:03
 */
public class MyFormAuthenticationFilter extends FormAuthenticationFilter {

    // 制定session跳转url
    private final String successUrl = "/user/index";

    @Override
    protected void issueSuccessRedirect(ServletRequest request, ServletResponse response) throws Exception {
        WebUtils.issueRedirect(request, response, successUrl, null, true);
    }
}
