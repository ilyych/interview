if (typeof Z === 'undefined') {
	Z = {};
}

Z.remoteQuery = function (serviceName, callback, params, pageInfo) {
	var url = g_WebRoot + "/commonQuery?" + Math.random();
	var parameter = JSON.stringify(params);
	var pageInfo = JSON.stringify(pageInfo);
	$.getJSON(url, {serviceName : serviceName, parameter : parameter, pageInfo : pageInfo}, function(json) {
		callback(json);
	});
};