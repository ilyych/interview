package com.ztesoft.zsmart.interview;

import java.util.Random;
import java.util.Set;

import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.stat.DruidDataSourceStatManager;

@IocBean(create="init")
@InjectName
public class DruidModule {
	
	/**确保数据源已经被初始化*/
	@Inject
	Dao dao;

	@At("/druid2/stat")
	@Ok("jsp:jsp.druid.stat")
	public Object stat(){
		Set<DruidDataSource> set = DruidDataSourceStatManager.getDruidDataSourceInstances();
		return set;
	}
	
	/**跑几条SQL测试一下*/
	public void init() {
		dao.create(Pet.class, true);
		for (int i = 0; i < 100; i++) {
			Pet pet = new Pet();
			pet.setAge(i);
			pet.setName("XXX" + System.currentTimeMillis() + "_" + i);
			dao.insert(pet);
		}
		
		Random random = new Random();
		for (int i = 0; i < 100; i++) {
			dao.fetch(Pet.class, random.nextInt());
		}
	}
	
}