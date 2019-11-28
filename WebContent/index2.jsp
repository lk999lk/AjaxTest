<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function register(){
		
		//var $mobile = $("#mobile").val();
		var $mobile = $("#mobile").val();
		/*
		$.ajax({
			url:"MobileServlet",
			请求方式:"post",
			data:"mobile="+$mobile,
			success:function(result,testStatus){
				if(result == "true"){
					alert("此号码已存在！注册失败！");
				}else{
					alert("注册成功！");
				}
			},
			error:function(xhr,errorMessage,e){
				alert("系统异常！");
			}
			});
		*/
		/*
		$.post(
				"MobileServlet",
				"mobile="+$mobile,
				function(result){
					if(result == "true"){
						alert("此号码已存在！注册失败！");
					}else{
						alert("注册成功！");
					}
				},
				"text"
				);
		*/
		/*
		$.get(
				"MobileServlet",
				"mobile="+$mobile,
				function(result){
					if(result == "true"){
						alert("此号码已存在！注册失败！");
					}else{
						alert("注册成功！");
					}
				},
				"text"//可以省略
				);
		*/
		/*
		$("#tip").load(
				"MobileServlet",
				"mobile="+$mobile
				);
		*/
//		JSON中只有一个对象的情况
		/*
		$.getJSON(
				"MobileServlet",
				function(result){
					if(result.msg == "true"){
						alert("此号码已存在！注册失败！");
					}else{
						alert("注册成功！");
					}
				}
			
				);
		*/
	}	
	

	//JSON有一个对象
	/*
	function testJson(){
		$.getJSON(
				"JsonServlet",
				//{"name":"zs","age":24},
				function(result){
					//js需要通过eval()函数将返回值转为一个js能够识别的json对象
					var jsonStudent = eval(result.stu1);
					alert(jsonStudent.name + "--" + jsonStudent.age);
				}
				);
	}
	*/
//	JSON中有多个对象的情况
	function testJson(){
		$.getJSON(
				"JsonServlet",
				{"name":"hujiao","age":45},
				function(result){//包含多个Student
					var json = eval(result);
					$.each(json,function(i,element){
						alert(this.name + "--" + this.age);
					})
				}	
		);
	}
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile"/><br/>
	<input type="button" value="注册" onclick="register()" />
	<span id="tip">load结果</span>
	<br/>
	<input type="button" value="测试json" onclick="testJson()">
	
</body>
</html>