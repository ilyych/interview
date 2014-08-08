package com.ztesoft.zsmart.common.dao;

import java.util.List;

import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;

public class BaseDao {
	
	private Dao dao ;
	
	public List query() {
		Sql sql = Sqls.fetchRecord("");
		sql.params().set("", "");
		sql.setPager(null);
		
		dao.execute(sql);
		return null;
	}

}
