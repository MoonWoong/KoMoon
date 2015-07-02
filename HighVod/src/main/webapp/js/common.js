function commonAjax( url , data, callback, async ) {
	if(async == undefined)	async = true;
	
	$.ajax({
		url : url,
		type : "post",
		data : data,
		dataType : "json",
		async : async,
	    success: function(returnData) {
	    	callback(returnData);
		}
	});
}