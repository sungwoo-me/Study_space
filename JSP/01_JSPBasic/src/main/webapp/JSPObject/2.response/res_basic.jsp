<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 체크 </title>
</head>
<body>
	<%-- form 태그를 하나 만든다. 
	목적지는 res_check.jsp method는 get방식
	input 태그로 나이를 입력받고, 제출 버튼에는 확인 이라고 적혀있다. 
	 --%>

	<form action ="res_check.jsp" method = "get">
		<input type = "text" name= "age" placeholder ="나이">
		<input type = "submit" value = "확인 " >
	</form>

</body>
</html>