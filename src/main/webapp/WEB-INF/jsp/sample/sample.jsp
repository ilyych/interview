<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh_CN">
	<head>
    	<%@include file="/WEB-INF/jsp/common/head.jsp" %>
    	<title><fmt:message key="sample.title" bundle="${label}" /></title>
    	<link rel="stylesheet" href="${ctx}/css/sample/sample.css" type="text/css" />
  	</head>
  	<body>
    	<h1>样例</h1>
    	<fmt:message key="sample.title" bundle="${label}" />
    	<fmt:message key="msg.success.add" bundle="${message}" />
    	
    	<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
    	<script type="text/javascript" src="${ctx}/js/sample/sample.js"></script>
	</body>
</html>