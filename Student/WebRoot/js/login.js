function getCookie(name) {
	var strcookie = document.cookie;// 获取cookie字符串
	var arrcookie = strcookie.split("; ");// 分割
	// 遍历匹配
	for (var i = 0; i < arrcookie.length; i++) {
		var arr = arrcookie[i].split("=");
		if (arr[0] == name) {
			return arr[1];
		}
	}
	return "";
}

function login() {
	var num = getCookie("number");
	var num1 = $("#number").val();
	if (num == num1) {
		var radios = document.getElementsByName("ope_usertype");
		var usertype = 0;
		for (var i = 0; i < radios.length; i++) {
			if (radios[i].checked == true) {
				usertype = radios[i].value;
			}
		}
		if($("#ope_name").val()=="admin"&&usertype=="1"){
			var url = "/Student/LoginServlet?type=login&ope_name=";
			url += $("#ope_name").val() + "&ope_pwd=" + $("#ope_pwd").val();
			$.post(url, null, function(rs) {
				if (rs == "success")
					window.open("/Student/pages/index.jsp", "_self");
				else
					alert(rs);
			});
		}
		if($("#ope_name").val()!="admin"&&usertype=="3"){
			var url = "/Student/LoginServlet?type=login&ope_name=";
			url += $("#ope_name").val() + "&ope_pwd=" + $("#ope_pwd").val();
			$.post(url, null, function(rs) {
				if (rs == "success")
					window.open("/Student/pages/index.jsp", "_self");
				else
					alert(rs);
			});
		}
	} else {
		alert("验证码不正确");
	}
}

function logout() {
	$.post("/Student/LoginServlet?type=logout");
	alert("注销成功！");
	window.parent.location.reload();
}

document.onkeydown = function(event) {
	var e = event || window.event || arguments.callee.caller.arguments[0];
	if (e && e.keyCode == 13)
		login();
};