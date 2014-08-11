$(function() {
	$("#cbRemeber").val();
	
	$("#btnLogin").click(function() {
		var username = $("#txtUsername").val();
		var password = $("#txtPassword").val();
		var remember = $("#cbRemeber:checked");
		
		alert(username + ":" + password + ":" + remember);
	});
	
});