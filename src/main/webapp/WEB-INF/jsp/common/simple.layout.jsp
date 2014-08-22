<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt.tld"%>
<%@ taglib prefix="fn" uri="/WEB-INF/tld/fn.tld"%>
<%@ taglib prefix="tiles" uri="/WEB-INF/tld/tiles-jsp.tld" %>
<tiles:importAttribute name="content" toName="content"/>
<%	
	String contentJspPath = (String)pageContext.getAttribute("content");
	if (contentJspPath != null && contentJspPath.length() > 0 && contentJspPath.endsWith(".jsp")) {
		String busiPath = contentJspPath.substring(13, contentJspPath.length() - 4);
		String jspath = request.getContextPath() + "/js/" + busiPath + ".js";
		String csspath = request.getContextPath() + "/css/" + busiPath + ".css";
		pageContext.setAttribute("jspath", jspath);
		pageContext.setAttribute("csspath", csspath);
	}
%>
<fmt:setBundle basename="msg/label" var="label" />
<fmt:setBundle basename="msg/message" var="message" />
<c:set var="ctx" value="${base}"/>
<%-- uncompressed : ".", "uncompressed" --%>
<%-- min : "", ".min" --%>
<c:set var="uncompressed" value="uncompressed"/>
<c:set var="min" value=""/>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title><tiles:importAttribute name="title" toName="title"/><fmt:message key="${title}" bundle="${label}" /></title>
<link href="${ctx}/vendor/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx}/vendor/css/font-awesome.min.css" rel="stylesheet" />
<link href="${ctx}/vendor/css/ace-fonts.css" rel="stylesheet" />
<link href="${ctx}/vendor/css/ace.min.css" rel="stylesheet" />
<!--[if lte IE 9]>
<link href="${ctx}/vendor/css/ace-part2.min.css" rel="stylesheet" />
<![endif]-->
<link rel="stylesheet" href="${ctx}/vendor/css/ace-rtl.min.css" />
<!--[if lte IE 9]>
<link rel="stylesheet" href="${ctx}/vendor/css/ace-ie.min.css" />
<![endif]-->
<link rel="stylesheet" href="${ctx}/vendor/css/ace.onpage-help.css" />
<script src="${ctx}/vendor/js/${uncompressed}/ace-extra${min}.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="${ctx}/vendor/js/${uncompressed}/html5shiv${min}.js" type="text/javascript"></script>
<script src="${ctx}/vendor/js/${uncompressed}/respond${min}.js" type="text/javascript"></script>
<![endif]-->
<script type="text/javascript">
var Z = Z || {};
Z.CTX = "${ctx}";
Z.WEBROOT = "<%=request.getScheme()%>://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>";
</script>
<link rel="stylesheet" href="${csspath}" type="text/css" />
</head>
<tiles:insertAttribute name="content" />
<!--[if !IE]> -->
<script src="${ctx}/vendor/js/${uncompressed}/jquery${min}.js" type="text/javascript"></script>
<!-- <![endif]-->
<!--[if lte IE 9]>
<script src="${ctx}/vendor/js/${uncompressed}/jquery1x${min}.js" type="text/javascript"></script>
<![endif]-->
<script src="${ctx}/vendor/js/${uncompressed}/bootstrap${min}.js" type="text/javascript"></script>
<!--[if lte IE 8]>
<script src="${ctx}/vendor/js/${uncompressed}/excanvas${min}.js" type="text/javascript"></script>
<![endif]-->

<script src="${ctx}/vendor/js/${uncompressed}/ace-elements${min}.js" type="text/javascript"></script>
<script src="${ctx}/vendor/js/${uncompressed}/ace${min}.js" type="text/javascript"></script>
<script src="${ctx}/vendor/js/${uncompressed}/jquery.cookie${min}.js" type="text/javascript"></script>

<script src="${jspath}" type="text/javascript"></script>
</html>