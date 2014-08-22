$(function() {
	$("#btnLogin").click(function() {
		var username = $("#txtUsername").val();
		var password = $("#txtPassword").val();
		$.getJSON(Z.WEBROOT + "/entry/login", {username:username, password:password}, loginCallback);
	});
	
	function loginCallback(rtJson) {
		var remember = $("#cbRemeber:checked");
		if (remember.length > 0) {
			
		}
	}
});