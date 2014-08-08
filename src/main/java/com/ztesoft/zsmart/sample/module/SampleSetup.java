package com.ztesoft.zsmart.sample.module;

import org.nutz.dao.Dao;
import org.nutz.ioc.Ioc;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

import com.ztesoft.zsmart.sample.entity.Sample;

public class SampleSetup implements Setup {

	@Override
	public void init(NutConfig nc) {
		Ioc ioc = nc.getIoc();
		Dao dao = ioc.get(Dao.class);
		dao.create(Sample.class, false);
	}

	@Override
	public void destroy(NutConfig nc) {

	}

}
