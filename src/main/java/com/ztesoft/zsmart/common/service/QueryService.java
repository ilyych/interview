package com.ztesoft.zsmart.common.service;

import org.nutz.service.IdEntityService;

public class QueryService<T> extends IdEntityService<T> {
	public void query() {
		dao();
	}
}
