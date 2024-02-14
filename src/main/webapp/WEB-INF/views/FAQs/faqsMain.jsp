<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jobhub 채용공고 조회</title>
<link rel="stylesheet" href="css/admin/admin.css">
<link rel="shortcut icon" href="common/icon/jobhub_favicon.ico"
	type="image/x-icon">
<script src="common/js/jquery-1.8.3.min.js"></script>
<script src="common/js/jquery-ui-1.10.3.custom.js"></script>
<script src="common/js/common.js"></script>
<script src="common/js/categorylist.js"></script>
<script src="https://kit.fontawesome.com/b158a20f5c.js"
	crossorigin="anonymous"></script>
	
</head>
<body>

 <header id="hd">
        <div id="hd_wrap">
            <h1>Jobhub FAQ</h1>
            <div id="logo"><a href="/admin/adminMain"><img src="/img/admin/logo_wh_250x35.png"
                        alt="Jobhub logo"></a></div>
            <div id="tnb">
                <ul>
                    <li>${loginId}님</li>
                    <li><a href="#" target="_blank">Jobhub바로가기</a></li>
                    <li><a href="/admin/mypage">마이페이지</a></li>
                    <li id="tnb_logout"><a href="#">로그아웃</a></li>
                </ul>
            </div>
        </div>
    </header>
    
     <div id="snb">
        <dl>
            <dt class="g10"><i class="fa-solid fa-people-group"></i>회원관리</dt>
            <dd class="g10"><a href="#">회원정보 조회<em>2</em></a></dd>
            <dd class="g10"><a href="#">신규회원 등록</a></dd>
            <dd class="g10"><a href="#">탈퇴자 조회</a></dd>
            <dt class="g10"><i class="fa-solid fa-people-roof"></i>직원관리</dt>
            <dd class="g10"><a href="#">직원정보 조회<em>2</em></a></dd>
            <dd class="g10"><a href="#">신규직원 등록</a></dd>
            <dt class="g10"><i class="fa-solid fa-file-lines"></i>이력서관리</dt>
            <dd class="g10"><a href="#">이력서 조회</a></dd>
            <dd class="g10"><a href="#">면접지원자 관리</a></dd>
            <dt class="g10"><i class="fa-solid fa-pen-to-square"></i>채용공고 관리</dt>
            <dd class="g10 "><a href="../jobposting">신규공고 등록</a></dd>
            <dd class="g10 "><a href="../jobpostingMain">채용공고 조회</a></dd>
            <dt class="g10"><i class="fa-regular fa-circle-question"></i>FAQs 관리</dt>
            <dd class="g10 active "><a href="../faqs">FAQs 조회</a></dd>
            <dt class="g10"><i class="fa-solid fa-gears"></i>관리자설정</dt>
            <dd class="g10"><a href="#">관리자 조회</a></dd>
            <dd class="g10"><a href="#">신규계정 생성</a></dd>
            <dd class="g10"><a href="#">계정승인요청 조회</a></dd>
        </dl>
    </div>
   
    
    
    <div id="wrapper">
        <div id="content">
            <div class="s_wrap">
                <h1>FAQ 조회</h1>
                
                     <div class="local_ov mart30">
    총 faqs 수 : <b class="fc_red">${faqsCount}</b>개
   <!--  <select id="page_rows" onchange="" class="marl5">
        <option value="30" selected="selected">30줄 정렬</option>
        <option value="50">50줄 정렬</option>
        <option value="100">100줄 정렬</option>
        <option value="150">150줄 정렬</option>
    </select> -->
    <a href="../addFaqs" class="fr btn_lsmall green">FAQ 등록</a>
    
</div>
<div class="tbl_head01">
    <table>
        <colgroup>
            <col class="w100">
            <col class="w120">
            <col class="w10000">
            
            <col class="w110">

        </colgroup>
        <thead>
            <tr>
               
                <th scope="col"></th>
                <th scope="col">카테고리</th>
                <th scope="col">제목</th>
               
                <th scope="col">수정/삭제</th>
            </tr>
        </thead>
        <tbody class="list">
            <tr class="list0">

               <c:forEach var="faqsItem" items="${faqsList}">

					<tr class="list0">
						<td>${faqsItem.FAQsId}</td>
						<td>${faqsItem.category}</td>
						<td><a href="../modifyFaqs?FAQsId=${faqsItem.FAQsId}">${faqsItem.title} </a></td>
						
						<td> <a href="../removeFaqs?FAQsId=${faqsItem.FAQsId}" class="fr btn_lsmall red">삭제</a>
						<a href="../modifyFaqs?FAQsId=${faqsItem.FAQsId}" class="fr btn_lsmall green">수정</a>	 
						 </td>
					</tr>

	
	</c:forEach> 
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>