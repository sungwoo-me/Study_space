<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
	// name apple에 딸려온 데이터 조회 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String[] hobby = request.getParameterValues("hobby");	
	String[] major = request.getParameterValues("major");

%>

<!DOCTYPE httml>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	전송받은 아이디 : <%= id %>
	전송받은 비밀번호 : <%= pw %>
	선택한 취미 : <%= Arrays.toString(hobby) %> <br/>
	취미를 for문으로 출력하기 
	<hr/>
	<%
	for (String name : hobby){ %>
		<%= name %> &nbsp;
	
	<% }%>	
	<hr/>
	<%
	for (int i =0 ; i<hobby.length; i++){
		out.println(hobby[i]);
	}
	%>
	
	<hr/>
	<%
	for (String name : major){ %>
		<%= name %> &nbsp;
	
	<% }%>	
	
	<hr/>
</body>
</html>