var ioc = {
	dataSource : {
		type : "com.alibaba.druid.pool.DruidDataSource",
		events : {
			depose : 'close'
		},
		fields : {
			driverClassName : {java : '$conf.get("jdbc_driver")'},
			url : {java : '$conf.get("jdbc_url")'},
			username : {java : '$conf.get("jdbc_username")'},
			password : {java : '$conf.get("jdbc_password")'},
			maxActive : 20,
			validationQuery : "SELECT 'x'",
			testWhileIdle : true,
			testOnBorrow : false,
			testOnReturn : false,
			filters : "stat"
		}
	},

	dao : {
		type : 'org.nutz.dao.impl.NutDao',
		args : [ {refer : 'dataSource'} ]
	},

	conf : {
		type : "org.nutz.ioc.impl.PropertiesProxy",
		fields : {
			paths : [ "jdbc.properties" ]
		}
	}
};