package com.ztesoft.zsmart;

import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Localization;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.SetupBy;
import org.nutz.mvc.annotation.Views;
import org.nutz.mvc.ioc.provider.ComboIocProvider;


@IocBy(args = {	//配置Ioc容器
		"*org.nutz.ioc.loader.json.JsonLoader","ioc/", //扫描ioc文件夹中的js文件,作为JsonLoader的配置文件
		"*org.nutz.ioc.loader.annotation.AnnotationIocLoader","com.ztesoft.zsmart.interview"}, 
		type = ComboIocProvider.class)
@SetupBy(SystemSetup.class)
@Modules(scanPackage=true)
@Localization(value="msg", defaultLocalizationKey="zh_CN")
@Views({})
@Encoding(input = "UTF-8", output = "UTF-8")
public class MainModule {
	
}
