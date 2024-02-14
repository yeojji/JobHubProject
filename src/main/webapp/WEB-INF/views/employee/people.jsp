<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/people.css" rel="stylesheet">
</head>
<body>

<%@ include file="../header_footer/header.jsp" %>

<div class="p_header">
    <p class="p_header_title">Meet the Global LINERs</p>
    <div class="p_sub_tab">
        <div class="p_sub_tab_title">All</div>
        <div class="p_sub_tab_title">Engineering</div>
        <div class="p_sub_tab_title">Design</div>
        <div class="p_sub_tab_title">Planning</div>
        <div class="p_sub_tab_title">Business & Sales</div>
        <div class="p_sub_tab_title">Marketing & Comms</div>
        <div class="p_sub_tab_title">Corperate</div>
    </div>
    <hr>
</div>

<div class="container">
    <ul class="peopleList">
    <c:forEach var="empList" items="${empList}">
        <li class="itemList">
            <div class="img_area">
                <img src="image/employee.png">
            </div>
            <div class="text_area">
                <span class="name">${empList.name}</span>
                <span class="position">${empList.jobsName}</span>
                <span class="email">${empList.email}</span>
            </div>
        </li>
        </c:forEach>
        
    </ul>
    
    <%@ include file="../header_footer/footer.jsp" %>
</div>
</body>
</html>