package com.ztesoft.zsmart.sample.module;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.SetupBy;

@SetupBy(SampleSetup.class)
@At("/sample")
public class SampleModule {
	
	@At("/add")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public void addSample() {
		
	}
	
	@At("/edit")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public void editSample() {
		
	}
	
	@At("/delete")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public void deleteSample() {
		
	}
	
	@At("/query")
	@Ok("json:{quoteName:true, ignoreNull:true}")
	public void querySample() {
		
	}
	
	@At("/init")
	@Ok("jsp:jsp.sample.sample")
	public void initSample() {
		
	}
}
