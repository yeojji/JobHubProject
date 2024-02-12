<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>헤더</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="css/header.css">
</head>
<body>
    <header>
        <div class="header_menu">
            <div class="header_menu1">
                <div class="header_title">
                	<div class="company_title" onclick="location.href='/'">Job Hub</div>
                </div>
                <div class="header_menu1_list">
                    <div class="header_menu1_list_item">People</div>
                    <div class="header_menu1_list_item">Culture</div>
                    <div class="header_menu1_list_item" onclick="location.href='/customer/notice_by_career'">Jobs</div>
                    <div class="header_menu1_list_item" onclick="location.href='/cus/faqs'">FAQs</div>
                </div>
            </div>
            <div class="header_menu2">
                <i class="fa-solid fa-globe header_menu2_list1_item"></i>
                <select class="header_menu2_list1_item select_country">
                    <option>KR</option>
                    <option>EN</option>
                </select>
                <div class="line_bar header_menu2_list1_item"></div>
                <div class="search_text header_menu2_list1_item"><i class="fa-solid fa-magnifying-glass"></i></div>
                <div class="header_menu2_list2">
                    <div class="member_scrap header_menu2_list2_item">
	                    <c:if test="${sessionScope.loginId == null}">
	                		  <i class="fa-regular fa-heart" onclick="login()"></i>
	                	</c:if>
	                	<c:if test="${sessionScope.loginId != null}">
	                		  <i class="fa-regular fa-heart" onclick="location.href='/scrap_page'"></i>
	                	</c:if>
                    	
                    </div>
                    <c:if test="${sessionScope.loginId == null}">
                		  <i class="fa-solid fa-user header_menu2_list2_item" onclick="login()"></i>
                	</c:if>
                    <c:if test="${sessionScope.loginId != null}">
                		  <i class="fa-solid fa-user header_menu2_list2_item" onclick="location.href='/mypage'"></i>
                		  <i class="fa-solid fa-right-from-bracket header_menu2_list2_item" onclick="logout()"></i>
                		  <form id="user_logout" method="post" action="/logout">
                		  	<input type="hidden">
                		  </form>
                	</c:if>
                </div>
            </div>
        </div>
    </header>
    
    <script>
    
    	function login(){
    		if(confirm('로그인 하셔야 이용 가능합니다. 로그인 하시겠습니까?')){
    			location.href='/login';
    		}
    	}
    
    
    
    	function logout(){
    		if(confirm('로그아웃 하시겠습니까?')){
    			document.getElementById("user_logout").submit();
    		}
    	}
    	
    	const header = document.querySelector('.header_menu');
        const headerHeight = header.offsetHeight; // top 속성 사용
            console.log('헤더');
        window.addEventListener("scroll", () => {
            
            if (window.scrollY > headerHeight) {
                header.classList.add("scrolled"); // 스크롤이 내려갈 때 클래스 추가
                console.log('위');
            } else {
                header.classList.remove("scrolled"); // 스크롤이 위로 올라갈 때 클래스 제거
                console.log('아래');
            }
        });
	
    
    </script>
    
</body>
</html>