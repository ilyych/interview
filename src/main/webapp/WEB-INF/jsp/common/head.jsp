<%@ taglib  prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib  prefix="fmt" uri="/WEB-INF/tld/fmt.tld"%>
<%@ taglib  prefix="fn" uri="/WEB-INF/tld/fn.tld"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:set var="ctx" value="${base}"/>

<!-- Bootstrap -->
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="${ctx}/js/common/html5shiv.min.js"></script>
 	<script src="${ctx}/js/common/respond.min.js"></script>
<![endif]-->

<fmt:setBundle basename="msg/label" var="label" />
<fmt:setBundle basename="msg/message" var="message" />
<script type="text/javascript">
var M = M || {};
M.CTX = "${ctx}";
</script>