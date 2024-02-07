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
	<h1>FAQs list Mainpage</h1>
<button onclick="location.href='/addFAQs'">FAQs 등록하기</button>
	<c:forEach var="faqsItem" items="${faqsList}">
		<p>${faqsItem.title} </p>
		<button onclick="location.href='/modifyFaqs?FAQsId=${faqsItem.FAQsId}'">수정</button>
		<button onclick="location.href='/removeFaqs?FAQsId=${faqsItem.FAQsId}'">삭제</button>
	</c:forEach> 
</body>
</html>