function getXMLHttp() {
	var xmlHttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlHttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlHttp = ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlHttp;
}

function replaceMain(url){
	var xmlhttp = getXMLHttp();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("main").innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", url, true);
	xmlhttp.send(null);
	return false;
}

function replaceContent(url) {
	var xmlhttp = getXMLHttp();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("content").innerHTML = xmlhttp.responseText;
		}
	};
	xmlhttp.open("GET", url, true);
	xmlhttp.send(null);
}