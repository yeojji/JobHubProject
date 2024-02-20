<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/login.css" rel="stylesheet"/>
</head>
<body>

	<%@ include file="../header_footer/header.jsp" %>
	
    <div class="container">
        <div class="content">
            <div class="login_form">
                <h2 class="login_title">로그인</h2>
                 
                <form method="post" id="loginForm">
                    <div class="login_id"><input type="text" class="login_input log_id" placeholder="아이디" autofocus name="userId" id="userId"></div>
                    <div class="login_pw"><input type="password" class="login_input log_pw" placeholder="비밀번호" autofocus name="password" id="userPw"></div>
                    <button type="submit" class="login_btn" onclick ="test()">로그인</button>
                </form>
            </div>
            <div class="login_option">
                <div class="login_option_1"><span class="text">· 잠깐! 혹시 지원이 처음이신가요?</span><a href="/sign-up" class="link">신규 지원자 등록</a></div>
                <div class="login_option_2"><span class="text">· 로그인 정보를 잊어버리셨나요?</span><a href="" class="link2">이메일/비밀번호 찾기</a></div>

            </div>
            
            <c:if test="${not empty msg}">
                <script type="text/javascript">
                    alert('${msg}');
                    
                </script>
            </c:if>
        </div>
    </div>
    
    <%@ include file="../header_footer/footer.jsp" %>
    
    
    <script type="text/javascript">
    	
    
    	const id = document.querySelector('.log_id');
    	const pw = document.querySelector('.log_pw');
    	
    	
    	function test(){
    		
    		if(!id.value && !pw.value){
    			alert('아이디와 비밀번호를 입력하세요');
    			event.preventDefault();
    		}else if(!id.value){
    			alert('아이디를 입력하세요');
    			event.preventDefault();
    			id.focus();
    		}else if(!pw.value){
    			alert('비밀번호를 입력하세요');
    			event.preventDefault();
    			pw.focus();
    		}
    		
    	}
    	
    	/*
    	function login(){
    		
    		var userId = $('#userId').val();
    		var userPw = $('#userPw').val();
    		
    		if(userId == ""){
    			alert('아이디를 입력하세요');
    			userId.focus();
    			return;
    		}else if(userPw == ""){
    			alert('비밀번호를 입력하세요');
    			userPw.focus();
    			return;
    		}
    		
    		$.ajax({
    			
    			url : "loginCheck.do",
    			type : "POST",
    			data : {
    				userId : userId,
    				userPw : userPw
    			},
    			success : function(data){
    				
    				if(data == "false")
    					
    					alert('잘못된 아이디이거나, 비밀번호가 틀렸습니다.');
    				else
    					location.href="${path}/.do";
    					
    			}
    			
    		})
    		
    		
    		
    		
    		
    	}
    	*/
    	
    	
    
    
    
    
    
    </script>
</body>
</html>