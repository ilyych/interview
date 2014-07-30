package com.ztesoft.zsmart.interview;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.SetupBy;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

@IocBy(args = {	//配置Ioc容器
		"*org.nutz.ioc.loader.json.JsonLoader","ioc/", //扫描ioc文件夹中的js文件,作为JsonLoader的配置文件
		"*org.nutz.ioc.loader.annotation.AnnotationIocLoader","com.ztesoft.zsmart.interview"}, 
		type = ComboIocProvider.class)
@SetupBy(SystemSetup.class)
@Modules(scanPackage=true)
public class MainModule {

	@At("/hello")
	@Ok("jsp:jsp.hello")
	public String doHello() {
		return "Hello";
	}
}
