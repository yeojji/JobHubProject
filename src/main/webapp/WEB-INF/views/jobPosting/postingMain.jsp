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

<h1>posting list Mainpage</h1>
<button onclick="location.href='/jobposting'">채용공고 등록하기</button>
	<c:forEach var="jobpostingItem" items="${jobpostingList}">
		<p>${jobpostingItem.postingId} ${jobpostingItem.title} </p>
		<button onclick="location.href='/modifyJobposting?postingId=${jobpostingItem.postingId}'">수정</button>
	</c:forEach> 
	


</body>
</html>