<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>${board.board_num}번 상세 페이지</h1>
	글제목 : <input type = "text" value= "${board.title }" readonly>
	글쓴이 : <input type = "text" value= "${board.writer }" readonly>
	조회수 : ${board.hit }<br/>
	쓴날짜 : <input type = "text" value= "${board.bDate }" readonly>
	마지막 수정 날짜 : ${board.mDate }<br/>
	본문 : <textarea rows = "15" cols = "50" >${board.content }</textarea>
		
	

		<a href = "http://localhost:8181/MyFirstWeb/boardList">목록으로</a>"
		<form action="http://localhost:8181/MyFirstWeb/boarddelete" method = "post">
			<input type = "hidden" value = "${board.board_num}" name ="board_num"  >
			<input type = "submit" value = "삭제하기">
		</form>
		<form action="http://localhost:8181/MyFirstWeb/boardUpdateForm" method = "post">
			<input type = "hidden" value = "${board.board_num}" name ="board_num"  >
			<input type = "submit" value = "수정하기">
		</form>
	
	
	
	
</body>
</html>