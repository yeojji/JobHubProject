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
	<h1>jobPosting page</h1>

	<label>제목</label>
	<input type="text" name="jobPostingTitle" required>
	<br>


	<%-- 	<c:forEach var="jobItem" items="${jobList}">
    	<c:choose>
        	<c:when test="${jobItem.jobsLevel == 1}">
            	<p>${jobItem.jobsName}</p>
        	</c:when>
    	</c:choose>
	</c:forEach> --%>


	<label>직무</label>
	<select name="jobName" required>
		<c:forEach var="jobItem" items="${jobList}">
			<c:choose>
				<c:when test="${jobItem.jobsLevel == 1}">
					<option>${jobItem.jobsName}</option>
				</c:when>
			</c:choose>
		</c:forEach>
	</select>
	<br>
	
		<label>직무명</label>
	<select name="jobLevel" required>
		<c:forEach var="jobItem" items="${jobList}">
			<c:choose>
				<c:when test="${jobItem.jobsLevel == 2}">
					<option>${jobItem.jobsName}</option>
				</c:when>
			</c:choose>
		</c:forEach>
	</select>
	<br>

	<label>경력조건</label>
	<select name="carrerCondition" required>
		<option>common code에서 불러오기 career_condition인 애들</option>

	</select>

	<br>








</body>
</html>

