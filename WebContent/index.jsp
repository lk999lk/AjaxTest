<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function register(){
		
		var mobile = document.getElementById("mobile").value;
		//通过Ajax异步请求服务端
		XMLHttpRequest = new XMLHttpRequest();
		
		//设置XMLHttpRequest的回调函数
		XMLHttpRequest.onreadystatechange = callBack;
		
		XMLHttpRequest.open("post","MobileServlet",true);
		//设置post方式的头信息
		XMLHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		XMLHttpRequest.send("mobile="+mobile);
	}
	function registerGet(){
		
		var mobile = document.getElementById("mobile").value;
		//通过Ajax异步请求服务端
		XMLHttpRequest = new XMLHttpRequest();
		
		//设置XMLHttpRequest的回调函数
		XMLHttpRequest.onreadystatechange = callBack;
		
		XMLHttpRequest.open("get","MobileServlet?mobile="+mobile,true);
		XMLHttpRequest.send(null);//"mobile="+mobile
	}
	//定义回调函数（接收服务端的返回值）
	function callBack(){
		if(XMLHttpRequest.readyState ==4 && XMLHttpRequest.status == 200){
			//接收服务端返回的数据
			var data = XMLHttpRequest.responseText;//服务端返回值为String格式
			if(data == "true"){
				alert("此号码已存在，请更换！");
			}else{
				alert("注册成功！");
			}
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile"/><br/>
	<input type="button" value="注册" onclick="registerGet()" />
	
</body>
</html>