<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action ="req_bmi_result.jsp"  method = "post">
		<input type = "text" name ="이름" placeholder = "이름" > <br/>
		<input type = "text" name = "키" placeholder = "키" ><br/>
		<input type = "text" name = "체중" placeholder = "체중" ><br/>
		<input type = "submit" value ="제출" />	<br/>
	</form>
</body>
</html>