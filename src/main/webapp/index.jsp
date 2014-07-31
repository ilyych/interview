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
	
	<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
	
	
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

		      strWebRoot +=  request.getContextPath()+"/";
		  }
		  return strWebRoot;
		}
		%>
		var g_WebRoot = '<%=getWebRoot(request) %>';
	
		//http://api.flickr.com/services/feeds/photos_public.gne?tags=cat&tagmode=any&format=json&jsoncallback=?",
		var json = {
			serviceName : "QryUser",
			param : {
				userId : '1'
			},
			page_param : {
				
			}
		};		
				
		$.getJSON(g_WebRoot + "/commonQuery", json, function(json) {
			alert(json);
		});
	</script>
</body>
</html>
