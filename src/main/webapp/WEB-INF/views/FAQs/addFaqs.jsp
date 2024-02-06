<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>FAQs 추가하기</h1>
	
	<form method="post" action="/addFAQs">
	<label>카테고리</label> 
	<select name="category" id="category" required>
		<option value="채용일반">채용 일반</option>	
		<option value="채용과정">채용 과정</option>
		<option value="지원서작성">지원서 작성</option>
		<option value="시스템오류">시스템 오류</option>
	</select> <br>
	
	<label>제목</label> <input type="text" name="title" required> <br>
	<label>내용</label><br> <textarea name="content" required ></textarea><br>
	
	
	<button type="submit">등록하기</button>
	</form>
	
</body>
</html>