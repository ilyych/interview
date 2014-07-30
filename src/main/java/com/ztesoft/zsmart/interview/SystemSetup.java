package com.ztesoft.zsmart.interview;

import java.util.List;

import org.nutz.dao.Dao;
import org.nutz.dao.impl.FileSqlManager;
import org.nutz.dao.sql.Sql;
import org.nutz.ioc.Ioc;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.User;

public class SystemSetup implements Setup {

	@Override
	public void init(NutConfig config) {
		Ioc ioc = config.getIoc();
		Dao dao = ioc.get(Dao.class);
		
		if (!dao.exists(User.class)) {
			FileSqlManager fsm = new FileSqlManager("setup/init_schema.sql", "setup/init_data.sql");
			List<Sql> sqlList = fsm.createCombo(fsm.keys());
			dao.execute(sqlList.toArray(new Sql[sqlList.size()]));
		}
	}

	@Override
	public void destroy(NutConfig config) {
		
	}

}
