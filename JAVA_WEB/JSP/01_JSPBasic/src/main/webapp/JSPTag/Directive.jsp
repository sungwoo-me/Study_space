<%@ page import = "java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 자바에서 import 구문을 이용해 사용하던 클래스들은 JSP에서도 사용 가능
	// import 구문 써야 사용 가능
	// 지시자(Directive) 를 통해 사용해야 한다. 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Date date = new Date();

	List<String> names = new ArrayList<>();
	names.add("조성우");
	names.add("박병현");
	names.add("한규민");
	names.add("김유탄 ");
	
	
	out.println(names.toString()+ "<br/>");
	out.println(names.get(0)+ "<br/>");
	
	out.println(date.getDate() + "<br/>");
	
%>
</body>
</html>