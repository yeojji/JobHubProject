<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="css/mypage.css">
</head>
<body>
	<!--헤더 -->
	<%@ include file="../header_footer/header.jsp" %>
    

 <!--마이페이지 메인-->
 <div class="container">
    <div class="member_info_box">
        <div class="member_info_header">
            <div class="member_name">
                <span class="member_name_text">${name}</span><span class="nim">님</span>
            </div>
            <div class="member_modify_btn_box">
                <div class="normal_info_modify">
                    <span class="member_modify_text1">
                        기본정보 변경 >
                    </span>
                </div>
                <div class="member_pw_modify">
                    <span class="member_modify_text2">
                        비밀번호 변경 >
                    </span>
                </div>
                <div class="delete_member_info">
                    <span class="member_modify_text3 gray_color">
                        지원자 등록 정보 삭제 >
                    </span>
                </div>
            </div>
        </div>
        <div class="member_info_box_footer">
            <div class="member_email_box">
                <span class="member_info_title">이메일</span>
                <p class="member_email">${email}</p>
            </div>
            <div class="member_birth_box">
                <span class="member_info_title">생년월일</span>
                <p class="member_birth">${birth}</p>
            </div>
            <div class="member_tel_box">
                <span class="member_info_title">휴대폰 번호</span>
                <p class="member_tel">${phone}</p>
            </div>
        </div>
    </div>
    <div class="member_support_main">
        <!--회원 임시저장된 지원서 리스트-->
        <div class="member_resume_status_box">
            <div class="member_resume_status_text">
                <span class="member_modify_resume_title">나의 임시저장 지원서</span>
                <span class="go_to_resume" onclick="location.href='/'">지원하기 ></span>
            </div>
            <!--회원이 임시저장한 지원서가 있을 때-->
            <div class="member_write_resume_box">
                <span class="temporary_storage_text">임시저장 <i class="fa-solid fa-circle-exclamation"></i></span>
                <div class="member_write_resume_content_modify">     
                    <div class="notice_title_box">
                        <div class="notice_title">[Tech] IT감사/내부통제 담당자</div>
                        <div class="write_resume_date">작성일 2024.01.30</div>
                    </div>
                    <div class="temporary_storage_resume">
                        <div class="write_resume_icon_box">
                            <div class="show_resume">
                                <i class="fa-regular fa-newspaper icon_size"></i>
                                <span class="resume_text">보기</span>
                            </div>
                            <div class="modify_resume">
                                <i class="fa-solid fa-pen-to-square icon_size"></i>
                                <span class="resume_text">수정</span>
                            </div>
                            <div class="delete_resume">
                                <i class="fa-regular fa-trash-can icon_size"></i>
                                <span class="resume_text">삭제</span>
                            </div>
                        </div>
                    </div>
                </div>     
            </div>
            <!--회원이 임시저장한 지원서가 없을 때-->
            <div class="not_temporary_storage_resume_box">
                <span class="none_content_text">임시저장한 지원서가 없습니다</span>
            </div>
        </div>
        <!--회원 지원공고 현황 (합/불/진행중)-->
        <div class="member_resume_status_box">
            <div class="member_resume_status_text">
                <span class="member_status_title">나의 지원 현황</span>
            </div>
            <!--회원이 지원한 공고가 있을 때-->
            <div class="member_write_resume_box">
                <span class="submitted_resume_text">제출완료</span>
                <div class="member_write_resume_content">
                    <div class="notice_title_box">
                        <div class="notice_title">[Tech] IT감사/내부통제 담당자</div>
                        <div class="submission_resume_date">작성일 2024.01.30</div>
                    </div>
                    <div class="show_acceptance_status">
                        <!--합격시-->
                        <span class="acceptance_box">
                            합격
                        </span>
                        <!--불합격시-->
                        <span class="failed_box">
                            불합격
                        </span>
                        <!--진행중-->
                        <span class="ongoing_box">
                            진행중
                        </span>
                    </div>
                </div>      
            </div>
            <!--회원이 지원한 공고가 없을 때-->
            <div class="not_resume_box">
                <span class="none_content_text">지원한 공고 내역이 없습니다</span>
            </div>
        </div>
        <!--1:1 문의글 리스트-->
        <div class="member_resume_status_box">
            <div class="member_resume_status_text">
                <span class="member_status_title">나의 문의 내역</span>
                <span class="go_to_resume">1:1문의 ></span>
            </div>
            <!-- 회원의 1:1 문의내역이 있을 때 -->
            <div class="member_write_faq_box">
                <div class="faq_title_box">
                    <div class="faq_title">문의 제목</div>
                    <div class="submission_resume_date">작성일 2024.01.30</div>
                </div>
                <div class="show_faq_answer_status">
                    <!--읽지않음-->
                    <span class="faq_not_read">
                        읽지 않음
                    </span>
                    <!--답변완료-->
                    <span class="answer_completed">
                        답변 완료
                    </span>
                </div>
            </div>
            <!--회원의 1:1 문의내역이 없을 때-->
            <div class="not_faq_box">
                <span class="none_content_text">작성한 문의내역이 없습니다</span>
            </div>    
        </div>
    </div>
</div>

<div class="user_info_modify_modal">
    <div class="user_info_modify_modal_body">
        <div class="modal_close_btn"><i class="fa-solid fa-xmark"></i></div>
        <span class="modify_modal_title"> ${name}님 기본정보 변경 </span>
        <div class="user_email_info">
            <span class="modify_main_title">이메일</span>
            <span class="user_email">${email}</span>
        </div>
        <form action="/mypage/modifyCustomerInfo" method="post" class="modify_form">
            <div class="modify_modal_main">
                <div class="modify_box">
                    <input type="hidden" name="userId" value="${userId}">
                    <span class="modify_main_title">이름</span>
                    <input type="text" placeholder="${name}" class="modify_info_name" name="name">
                </div>
                <div class="modify_box">
                    <span class="modify_main_title">생년월일</span>
                    <div class="two_modify_box">
                        <input type="text" placeholder="${birth}" class="modify_info_birth" name="birth">
                        <div class="gender_btn">
                            <select selected="${gender}" name ="gender">
                                <option>남자</option>
                                <option>여자</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modify_box">
                    <span class="modify_main_title">휴대폰 번호</span>
                    <input type="text" placeholder="회원 휴대폰 번호" class="modify_info_phone" name="phone">
                </div>
            </div>
            <span class="alert_text">입력한 정보가 정확하지 않을 경우 채용 시점에 불이익을 받을 수 있습니다.</span>
            <div class="complete_btn">
                <button class="close_btn" type="button">취소</button>
                <button class="submit_btn" type="button">완료</button>
            </div>
        </form>
    </div>
</div>

<div class="user_pw_modify_modal">
    <div class="user_pw_modify_modal_body">
        <div class="modal_close_btn2"><i class="fa-solid fa-xmark"></i></div>
        <span class="modify_modal_title"> 비밀번호 변경 </span>
        <div class="user_email_info">
            <span class="alert_text">최소 8자리 이상의 길이로 구성해야 합니다.</span>
        </div>
        <form action="/mypage/modifyPw" method="post" class="modify_pw_form">
            <div class="modify_modal_main">
                <div class="modify_box">
                	<input type="hidden" name="userId" value="${userId}">
                	<input type="hidden" value="${loginPw}" id="currentPw">
                    <span class="modify_main_title">현재 비밀번호</span>
                    <input type="text" placeholder="현재 비밀번호를 입력해주세요." 
                    class="modify_info" id="pw" oninput="checkPw()">
                    <span id="error_msg_pw" class="error_msg"></span>
                </div>
                <div class="modify_box">
                    <span class="modify_main_title">새 비밀번호</span>
                    <input type="text" placeholder="새로 사용하실 비밀번호를 입력해주세요" 
                    class="modify_info" id = "pw2">
                    
                </div>
                <div class="modify_box">
                    <span class="modify_main_title">새 비밀번호 확인</span>
                    <input type="text" placeholder="새 비밀번호를 한 번 더 입력해주세요" 
                    class="modify_info" id= "pw3" name="password" oninput="pwCheck()">
                       <span id="error_msg" class="error_msg"></span>
                </div>
            </div>
            <span class="alert_text">입력한 정보가 정확하지 않을 경우 채용 시점에 불이익을 받을 수 있습니다.</span>
            <div class="complete_btn">
                <button type="button" class="close_modal_pw">취소</button>
                <button type="button" class="submitBtn" id="subminBtn">완료</button>
                
            </div>
        </form>
    
    </div>
</div>

<div class="user_delete_modal">
    <div class="user_delete_modal_body">
        <div class="modal_close_btn3"><i class="fa-solid fa-xmark"></i></div>
        <span class="modify_modal_title"> 지원자 등록 정보를 정말 삭제하시겠습니까? </span>
        <div class="user_email_info">
            <span class="alert_text"> 계정을 삭제할 경우 작성중인 지원서는 모두 삭제되며, 현재 전형 진행중인 건이 있는 경우 지원포기로 간주하여 심사 대상에서 제외됩니다.</span>
        </div>
        <form action="/mypage/remove" method="post" class="delete_user_form">
            <div class="delete_user_main">
                <div class="delete_box">
                	<input type="hidden" name="userId" value="${userId}">
                    <input type="hidden" id="userPw" value="${loginPw}">
                    <span class="modify_main_title">비밀번호 입력</span>
                    <input type="text" placeholder="현재 비밀번호를 입력해주세요." 
                    class="modify_info" id="inputPw" oninput="removeUser()">
                    <span id="error_pw_msg" class="error_msg"></span>
                </div>
                
            </div>
            <div class="complete_btn">
                <button type="button" class="close_modal_delete">취소</button>
                <button type="button" id="submitBtn2">지원자 등록 정보 삭제</button>
            </div>
        </form>
    </div>
</div>



<script>
    const modal1 = document.querySelector('.user_info_modify_modal');
    const modalbody1 = document.querySelector('.user_info_modify_modal_body');
    const openModify_modal1 = document.querySelector('.member_modify_text1');
    
    const modal2 = document.querySelector('.user_pw_modify_modal');
    const modalbody2 = document.querySelector('.user_pw_modify_modal_body');
    const openModify_modal2 = document.querySelector('.member_modify_text2');
    
    const modal3 = document.querySelector('.user_delete_modal');
    const modalbody3 = document.querySelector('.user_delete_modal_body');
    const openModify_modal3 = document.querySelector('.member_modify_text3');
    
    const close1 = document.querySelector('.modal_close_btn');
    const close2 = document.querySelector('.modal_close_btn2');
    const close3 = document.querySelector('.modal_close_btn3');
    
   
    
    openModify_modal1.addEventListener("click",()=>{
        modal1.style.display = "flex";
        
    })

    openModify_modal2.addEventListener("click",()=>{
        modal2.style.display = "flex";
    })
    
     openModify_modal3.addEventListener("click",()=>{
        modal3.style.display = "flex";
    })
    

    close1.addEventListener("click",()=>{
        modal1.style.display ="none";
        window.location.reload();
    })
    
    close2.addEventListener("click",()=>{
        modal2.style.display = "none";
        window.location.reload();
    })
    
    close3.addEventListener("click",()=>{
        modal3.style.display = "none";
        window.location.reload();
    })
    
    
    document.querySelector('.close_btn').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal1.style.display ="none";
            window.location.reload();
        }
        
    })
    
     document.querySelector('.close_modal_pw').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal2.style.display ="none";
            window.location.reload();
        }
        
    })
    
    document.querySelector('.close_modal_delete').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal3.style.display ="none";
            window.location.reload();
        }
        
    })
    
    
    document.querySelector('.submit_btn').addEventListener('click',function(){
        if(confirm('회원정보를 수정하시겠습니까?')){
            document.querySelector('.modify_form').submit();
            alert('수정되었습니다');
        }
    });
    
    var currentPw = document.getElementById('currentPw').value;
	console.log(currentPw);
    
    function checkPw() {
    	var inputPw = document.getElementById('pw').value;
    	console.log(inputPw);
    	var error_pw = document.getElementById('error_msg_pw');
    	
    	if(inputPw.trim() === ""){
    		error_pw.innerHTML = '이거 에러다 ';
            return;
    	}	
	    	if(inputPw !== currentPw){
	    		
	    		error_pw.innerHTML = '불일치';
	    		error_pw.style.color = 'red';
	            
	    	}else{
	    		error_pw.innerHTML = '일치';
	    		error_pw.style.color = 'green';
	    	}
   
    	
    }
    
    function pwCheck() {
        let pass1 = document.getElementById('pw2').value;
        let pass2 = document.getElementById('pw3').value;
        let error_msg = document.getElementById('error_msg');

        if (pass1 !== "" || pass2 !== "") {
            if (pass1 === pass2) {
                error_msg.innerHTML = '일치';
                document.getElementById('pw3').style.borderColor = 'green';
                error_msg.style.color = 'green';
            } else {
                error_msg.innerHTML = '불일치';
                document.getElementById('pw3').style.borderColor = 'red';
                error_msg.style.color = 'red';
            }
        }
    }
    
    function removeUser(){
    	var currentPw = document.getElementById('userPw').value;
    	var inputPw = document.getElementById('inputPw').value;
    	
    	if(inputPw !== ""){
    		if(inputPw === currentPw){
	    		error_pw_msg.innerHTML = '일치';
		    	error_pw_msg.style.color = 'green';
            
	    	}else{
	    		error_pw_msg.innerHTML = '불일치';
    			error_pw_msg.style.color = 'red';
	    		
	    	}
    	}
    	
    	
    	
    	
    	
    }
    
    
    document.querySelector('.submitBtn').addEventListener('click',function(){
    	let inputPw = document.getElementById('pw').value;
    	let currentPw = document.getElementById('currentPw').value;
    	let pass1 = document.getElementById('pw2').value;
        let pass2 = document.getElementById('pw3').value;
        if(confirm('비밀번호를 수정하시겠습니까?')){
        	if(inputPw !== currentPw){
        		alert('현재 비밀번호가 다릅니다.');
        		return;
        	}
        	
        	if(pass1 !== pass2){
        		alert('새로운 비밀번호가 다릅니다. 다시 수정해주세요');
    			return;
        	}
        		document.querySelector('.modify_pw_form').submit();
        		alert('수정되었습니다');
        		
        	if(alert('다시 로그인 해 주세요')){
        		
        		return;
        	}
        	
        }
    });
   
     
    
	document.querySelector('#submitBtn2').addEventListener('click',function(){
		let test1 = document.getElementById('userPw').value;
    	let test2 = document.getElementById('inputPw').value;
		if(confirm('회원님의 정보를 삭제하시겠습니까?')){
			
			if(test2 === null || test2 === ""){
				alert('현재 비밀번호를 입력 해 주세요');
				return;
			}
			
			if(test1 !== test2){
				alert('비밀번호가 다릅니다.');
				return;
			}
			
			
			document.querySelector('.delete_user_form').submit();
			alert('삭제되었습니다.');
		}
	})
	
    
    
   
   
</script>


        <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
        
</body>
</html>