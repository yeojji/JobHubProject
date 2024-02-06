<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>FAQs 수정하기</h1>
	
	<form method="post" action="/modifyFaqs">
	<input type="hidden" name="FAQsId" value="${faqs.FAQsId}">
	
	<label>카테고리</label> 
	<select name="category" id="category" required>
		<option value="채용일반" <c:if test="${faqs.category == '채용일반'}">selected</c:if>>채용 일반</option>	
		<option value="채용과정" <c:if test="${faqs.category == '채용과정'}">selected</c:if>>채용 과정</option>
		<option value="지원서작성" <c:if test="${faqs.category == '지원서작성'}">selected</c:if>>지원서 작성</option>
		<option value="시스템오류" <c:if test="${faqs.category == '시스템오류'}">selected</c:if>>시스템 오류</option>
	</select> <br>
	
	<label>제목</label> <input type="text" name="title" value="${faqs.title}" required> <br>
	<label>내용</label><br> <textarea name="content" value="${faqs.content}" required ></textarea><br>
	
	
	<button type="submit">수정하기</button>
	</form>
	
</body>
</html>