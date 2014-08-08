package com.ztesoft.zsmart.common;

import java.util.Iterator;
import java.util.Map.Entry;

import org.junit.Test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class JsonTest {
	
	@Test
	public void testComboJson() {
		String json = "{\"name\":\"zhangsan\", " +
				       "\"age\":14, " +
				       "\"hobby\":[\"basketball\", \"football\"], " +
				       "\"workhis\":[{\"position\":\"engineer\", \"company\":\"zte\"}, " +
				       "             {\"position\":\"consultant\", \"company\":\"ncs\"}]}";
		
		JSONObject jo = JSON.parseObject(json);
		Iterator<Entry<String, Object>> it = jo.entrySet().iterator();
		while (it.hasNext()) {
			Entry<String, Object> entry = it.next();
			System.out.println(entry.getKey() + " : " + entry.getValue());
		}
		
		
		
		System.out.println(jo);
	}
	
}
