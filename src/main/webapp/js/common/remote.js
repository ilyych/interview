if (typeof Z === 'undefined') {
	Z = {};
}

/**
 * @param serviceName
 * @param callback
 * @param params
 * @param pageInfo
 */
Z.remoteQuery = function (serviceName, callback, params, pageInfo) {
	var _url = Z.CTX + "/commonQuery?" + Math.random();
	var _params = JSON.stringify(params);
	var _pageInfo = JSON.stringify(pageInfo);
	/*
	$.getJSON(url, {serviceName : serviceName, parameter : parameter, pageInfo : pageInfo}, function(json) {
		callback(json);
	});
	*/
	
	$.ajax({
		url : _url,
		success : callback,
		failure : _failure,
		data : {serviceName : serviceName, parameter : _params, pageInfo : _pageInfo},
		cache : false,
		type : "POST",
		dataType : "json"
	});
	
	
	function _failure (content) {
		alert(content);
	}
};

Z.remoteCall = function(url, callback, params) {
	var _url = Z.CTX + url;
	var _params = JSON.stringify(params);
	$.ajax({
		url : _url,
		success : callback,
		cache :false,
		type : "POST",
		dataType : "json"
	});
};