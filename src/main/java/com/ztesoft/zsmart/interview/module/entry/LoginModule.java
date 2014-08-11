package com.ztesoft.zsmart.interview.module.entry;

import javax.servlet.http.HttpServletRequest;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.ztesoft.zsmart.interview.entry.service.LoginService;

@At("/entry")
public class LoginModule {
	
	@At("/login")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public Object login(@Param("username") String username, @Param("password") String password, HttpServletRequest request) {
		
		
		return null;
	}
	
	@At("/init")
	@Ok("jsp:jsp.entry.login")
	public void init() {
		
	}
	
	
	private LoginService loginService;

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
}
