<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="http://localhost:8181/MyFirstWeb/spring" method="post">
		<!--  /test servlet 에서 받을수 있도록 처리  -->
		<input type = "text" name = "jsp" palacholder = "jsp변수로 전달" / >
		<input type = "text" name = "boot" palacholder = "boot변수로 전달" / >
		<input type = "text" name = "jpa" palacholder = "jpa변수로 전달" / >
		<input type = "submit" value = "제출" / >
	</form>

</body>
</html>