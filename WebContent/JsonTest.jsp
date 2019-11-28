<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function register(){
		var student = {"name":"zs", "age":23};
		alert(student.name+"--"+student.age);
		
		var students=[
			{"name":"zs", "age":23},
			{"name":"ls", "age":41},
			{"name":"ww", "age":51}
		];
		alert(students[1].name+"--"+students[1].age);
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="注册" onclick="register()" />
</body>
</html>