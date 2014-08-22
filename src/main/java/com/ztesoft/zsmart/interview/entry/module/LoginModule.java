package com.ztesoft.zsmart.interview.entry.module;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.ztesoft.zsmart.interview.entry.service.LoginService;

@At("/entry")
@IocBean
public class LoginModule {
	
	@At("/login")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public Object login(@Param("username") String username, @Param("password") String password, HttpServletRequest request) {
		getLoginService().login(username, password);
		return null;
	}
	
	@At("/init")
	@Ok("tiles:entry.login")
	public void init(HttpServletRequest request) {
		if(getLoginService().isAlreayLogin(request)) {
			
		}
	}
	
	@Inject
	private LoginService loginService;

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
}
