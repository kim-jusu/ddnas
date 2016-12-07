var webSocket = new WebSocket('ws://localhost/server');
var intervalState=0;
var interval;
webSocket.onerror = function(event) {
	onError(event)
};
webSocket.onopen = function(event) {
	onOpen(event)
};
webSocket.onmessage = function(event) {
	onMessage(event)
};

function onMessage(event) {
	console.log(event.data);
	if(event.data.substring(0,5)=='start'){
		$("#workingUl").empty();
		selectAjax();
	}else if(event.data.substring(0,4)=='stop'){
		$("#workingUl").empty();
		selectAjax();
	}else{
		var ary = event.data.split("/");
		if(parseInt(ary[1])>1000)
			return;
		$("#coDensity"+ary[0]).text(ary[1]+" ppm");
		if(intervalState==0&&parseInt(ary[1])>=500){
			intervalState=1;
			powerUpAll();
		}else if(parseInt(ary[1])>=500){
			$("#image"+ary[0]).css('-webkit-filter','drop-shadow( 5px 5px 5px red )').fadeOut('slow').fadeIn('slow');
		}
		else if(intervalState==1&&parseInt(ary[1])<500){
		
			intervalState=0;
			powerDownAll();
			$("#image"+ary[0]).css('-webkit-filter','none');
		}
	}
}
function powerUpAll(){
	$.ajax({
		type : "post",
		url : url+'vent/powerUp',
		data : {"ventilCode":3,"power":200,_method:'PUT'},
		dataType : "text",
		success : function(data){
			if(data>0)
				$("#power"+ventilCode).text(parseInt($("#power"+ventilCode).text())+50);
		},error : function(){
			console.log('powerUp실패')
		}
	});
}

function powerDownAll(){
	$.ajax({ 
		type : "post",
		url : url+'vent/powerDown',
		data : {"ventilCode":3,"power":100,_method:'PUT'},
		dataType : "text",
		success : function(data){
			if(data>0)
				$("#power"+ventilCode).text(parseInt($("#power"+ventilCode).text())-50);
		},error : function(){
			console.log('powerDown 실패')
		}
	});
}
function onOpen(event) {
	console.log("연결")
}
function onError(event) {
	console.log(event)
}