<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가고 싶은 여행지 </title>
</head>
<body>
	<%--
		form 태그 만들고 목적지는 travel_check.jsp post ㅏㅇ식
		라디오 버튼을 최소 4개 만든다.
		각 라디오버튼에는 속성으로 value = 해서 뭘 선택한지 식별 가능하게 
		각 버튼별로 다른 value 값 지정 
		submit 도 만든다. 
		
	 --%>

	<form action ="travel_check.jsp" method = "post">
		<input type = "radio" name = "travel" value = "jeju"> 제주도
		<input type = "radio" name = "travel" value = "seoul"> 서울
		<input type = "radio" name = "travel" value = "busan"> 부산
		<input type = "radio" name = "travel" value = "dague"> 대구
		<input type = "submit" value ="제출">
	</form>

</body>
</html>