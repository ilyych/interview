<%@ taglib  prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib  prefix="fmt" uri="/WEB-INF/tld/fmt.tld"%>
<%@ taglib  prefix="fn" uri="/WEB-INF/tld/fn.tld"%>
<%
	if (request.getRequestURI().endsWith(".jsp")) {
		int len = request.getContextPath().length();
		len += "/WEB-INF/jsp/".length();
		String uri = request.getRequestURI().substring(len);
		String title = "title." + uri.replace(".jsp", "").replace("/", ".");
		String jspath = request.getContextPath() + "/js/" + uri.replace(".jsp", ".js");
		String csspath = request.getContextPath() + "/css/" + uri.replace(".jsp", ".css");
		pageContext.setAttribute("title", title);
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
<title><fmt:message key="${title}" bundle="${label}" /></title>
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
var M = M || {};
M.CTX = "${ctx}";
</script>
<link rel="stylesheet" href="${csspath}" type="text/css" />
</head>