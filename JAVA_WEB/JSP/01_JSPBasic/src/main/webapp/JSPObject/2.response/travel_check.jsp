<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String travel = request.getParameter("travel");
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(travel.equals("jeju")){
		response.sendRedirect("https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EC%A0%9C%EC%A3%BC&oquery=%EB%8C%80%EA%B5%AC&tqi=hmVkmwp0YiRssFo%2BiV4ssssstCw-290403");
	}
	
	if(travel.equals("seoul")){
		response.sendRedirect("https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EC%84%9C%EC%9A%B8&oquery=%EC%A0%9C%EC%A3%BC&tqi=hmVkCwp0Yidssi46MRRssssssbs-183970");
	}
	
	if(travel.equals("busan")){
		response.sendRedirect("https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EB%B6%80%EC%82%B0&oquery=%EC%A0%9C%EC%A3%BC&tqi=hmVkNsp0YiRssFxEu0NssssstV8-133589");
	}
	
	if(travel.equals("daegu")){
		response.sendRedirect("https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EB%8C%80%EA%B5%AC&oquery=%EB%B6%80%EC%82%B0&tqi=hmVkPlp0J1ZssN6Q7vlssssssGN-505960");
	}
	
	%>
	
</body>
</html>