<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title></title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
</head>
<body>
	<h2>Hello World!</h2>
	<input type="button" id="btnAjax" value="Ajax getJSON Request" />
	<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="js/json3.min.js" type="text/javascript"></script>
	<script src="js/remote.js" type="text/javascript"></script>
	
	<form action="<%=getWebRoot(request) %>/commonQuery" method="post">
		User ID : <input type="text" name="userId"/> <br/>
		User Name : <input type="text" name="userName" /> <br/>
		<input type="submit" value="Submit"/>
	</form>
	<script type="text/javascript">
		<%!
		public String getWebRoot(HttpServletRequest request)
		{
		  String strWebRoot = "";
		  if(strWebRoot==null||strWebRoot.length()==0)
		  {
		      strWebRoot = request.getScheme();
		      strWebRoot += "://";
		      strWebRoot += request.getServerName();

		      int port = request.getServerPort();
		      if (port != 80){
		          strWebRoot += ":" + port;
		      }

		      strWebRoot +=  request.getContextPath();
		  }
		  return strWebRoot;
		}
		%>
		var g_WebRoot = '<%=getWebRoot(request) %>';
		
		$(function() {
			$("#btnAjax").click(function() {
				var params = {userId : 1 , userName : "zhangsan", QQ: ["8888888", "666666"]};
				Z.remoteQuery("QryUser", function(json) {
					alert(json);
				}, params);
			});
		});
	</script>
</body>
</html>
