<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<h1>수정 페이지 </h1>
	<form action ="http://localhost:8181/MyFirstWeb/boardUpdate" method = "post">
			<input type = "hidden" name = "board_num" value = "${board.board_num }">
			글제목 : <input type = "text" name = "title" value= "${board.title }" >
			글쓴이 : <input type = "text" value= "${board.writer }" >
			조회수 : ${board.hit }<br/>
			쓴날짜 : <input type = "text" value= "${board.bDate }" readonly>
			마지막 수정 날짜 : ${board.mDate }<br/>
			본문 :<br/> 
			<textarea name = "content" rows = "15" cols = "50" >${board.content }</textarea>

		<input type = "submit" value = "수정완료" > 
	</form>
</body>
</html>