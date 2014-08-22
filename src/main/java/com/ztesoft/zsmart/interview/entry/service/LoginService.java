package com.ztesoft.zsmart.interview.entry.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.loader.annotation.IocBean;

@IocBean
public class LoginService {
	
	public void login(String username, String password) {
		System.out.println("username:" + username + ", password:" + password);
	}

	public boolean isAlreayLogin(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			System.out.println(cookie.getName() + " : " + cookie.getValue());
		}
		return false;
	}
}
