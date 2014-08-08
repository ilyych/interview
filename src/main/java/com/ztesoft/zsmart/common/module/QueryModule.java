package com.ztesoft.zsmart.common.module;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ztesoft.zsmart.common.service.QueryService;

public class QueryModule {
	
	private QueryService queryService = null;
	
	public QueryService getQueryService() {
		return queryService;
	}

	public void setQueryService(QueryService queryService) {
		this.queryService = queryService;
	}

	@Ok("json:{quoteName:true, ignoreNull:true}")
	@Fail("")
	@At("/commonQuery")
	public Object commonQuery(@Param("serviceName") String serviceName, 
			@Param("parameter") String parameter, @Param("pageInfo") String pageInfo) {
		
		JSONObject joParameter = JSON.parseObject(parameter);
		JSONObject joPageInfo = JSON.parseObject(pageInfo);
		
		return queryService.query(serviceName, joParameter, joPageInfo);
	}

}
