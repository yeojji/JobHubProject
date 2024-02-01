<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/mypage.css">
</head>
<body>
	<!--헤더 -->
	<%@ include file="../header_footer/header.jsp" %>
    

        <!--마이페이지 메인-->
        <div class="container">
            <div class="member_info_box">
                <div class="member_info_header">
                    <div class="member_name">
                        <span class="member_name_text">000</span><span class="nim">님</span>
                    </div>
                    <div class="member_modify_btn_box">
                        <div class="normal_info_modify">
                            <span class="member_modify_text">
                                기본정보 변경 >
                            </span>
                        </div>
                        <div class="member_pw_modify">
                            <span class="member_modify_text">
                                비밀번호 변경 >
                            </span>
                        </div>
                        <div class="delete_member_info">
                            <span class="member_modify_text gray_color">
                                지원자 등록 정보 삭제 >
                            </span>
                        </div>
                    </div>
                </div>
                <div class="member_info_box_footer">
                    <div class="member_email_box">
                        <span class="member_info_title">이메일</span>
                        <p class="member_email">000@naver.com</p>
                    </div>
                    <div class="member_birth_box">
                        <span class="member_info_title">생년월일</span>
                        <p class="member_birth">2000.12.21(여)</p>
                    </div>
                    <div class="member_tel_box">
                        <span class="member_info_title">휴대폰 번호</span>
                        <p class="member_tel">010-1234-5678</p>
                    </div>
                </div>
            </div>
            <div class="member_support_main">
                <!--회원 임시저장된 지원서 리스트-->
                <div class="member_resume_status_box">
                    <div class="member_resume_status_text">
                        <span class="member_modify_resume_title">나의 수정된 지원서</span>
                        <span class="go_to_resume">지원하기 ></span>
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



        <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
        
</body>
</html>