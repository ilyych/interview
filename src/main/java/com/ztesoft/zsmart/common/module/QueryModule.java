package com.ztesoft.zsmart.common.module;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.mvc.adaptor.JsonAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

public class QueryModule {
	
	@Ok("json:{quoteName:true, ignoreNull:true}")
	@Fail("")
	@At("/commonQuery")
	@AdaptBy(type=JsonAdaptor.class)
	public String commonQuery(@Param("serviceName") String serviceName, 
			@Param("param") String param, 
			HttpServletRequest request, HttpServletResponse response) {
		
//		JSONObject jObject = new JSONObject(param);
		
		Map<?, ?> pMap = request.getParameterMap();
		for (Iterator<?> it = pMap.entrySet().iterator(); it.hasNext(); ) {
			Entry pData = (Entry) it.next();
			System.out.println(pData.getKey() + " : " + pData.getValue());
		}
		return param;
	}

}
