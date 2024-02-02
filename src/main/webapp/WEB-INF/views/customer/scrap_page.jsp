<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../css/scrap_page.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>
<body>
   <!--헤더 -->
	<%@ include file="../header_footer/header.jsp" %>
   
   
        <!--스크랩 페이지 메인-->
        <div class="scrap_main">
            <div class="scrap_notice_title">
                <p class="scrap_notice_title_text">찜한공고</p>
            </div>
            <div class="scrap_notice_box">
                <div class="scrap_notice_left">
                    <div class="show_all_notice">
                        <div class="go_to_all_notice_page"><i class="fa-solid fa-arrow-left-long"></i> </div>
                        <div class="go_to_all_notice_page"> 진행중인 채용 전제보기</div>
                    </div>
                    <hr class="dividing_line">
                    <div class="scrap_notice_left_item_box">
                        <div class="scrap_notice_left_item_box_text">
                            <div class="notice_count">공고 총 2건</div>
                            <div class="delete_all_notice">전체삭제</div>
                        </div>
                        <div class="notice_box_list">
                            <div class="notice_box">
                                <div class="notice_box_item_title">[Tech] 공통시스템개발팀 플랫폼 서버 개발자 </div>
                                <div class="notice_box_item_heart"> <i class="fa-regular fa-heart scrap_heart"></i></div>
                            </div>
                            <div class="notice_box">
                                <div class="notice_box_item_title">[Tech] IT감사/내부통제 담당자 </div>
                                <div class="notice_box_item_heart"> <i class="fa-regular fa-heart scrap_heart"></i></div>
                            </div>
                            <div class="notice_box">
                                <div class="notice_box_item_title">[Tech] IT감사/내부통제 담당자 </div>
                                <div class="notice_box_item_heart"> <i class="fa-regular fa-heart scrap_heart"></i></div>
                            </div>
                            <div class="notice_box">
                                <div class="notice_box_item_title">[Tech] IT감사/내부통제 담당자 </div>
                                <div class="notice_box_item_heart"> <i class="fa-regular fa-heart scrap_heart"></i></div>
                            </div>
                            <div class="notice_box">
                                <div class="notice_box_item_title">[Tech] IT감사/내부통제 담당자 </div>
                                <div class="notice_box_item_heart"> <i class="fa-regular fa-heart scrap_heart"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="scrap_notice_right">
                    <div class="notice_list">
                        <div class="notice_detail_box">
                            <div class="notice_3_menu">
                                <div class="notice_header_left">
                                    <span class="notice_career">경력</span>
                                </div>
                                <div class="notice_header_right">
                                    <i class="fa-regular fa-heart notice_heart"></i>
                                    <i class="fa-solid fa-share-nodes"></i>
                                </div>
                            </div>
                            <!--채용공고 제목-->
                            <h2 class="notice_title">[Tech] 공통시스템개발팀 플랫폼 서버 개발자</h2>
                            <div class="notice_hire_type_box">
                                <span class="notice_hire_type">정규직 </span>
                                <span class="notice_dividing_line"> | </span>
                                <span class="notice_date"> 영입 종료시</span>
                            </div>
                            <div class="use_protac"></div>
                            <!--채용 공고 상세 내용-->
                            <div class="notice_main_content">
                                <div class="assigned_task_box">
                                    <div class="assigned_task_title"></div>
                                    <div class="assigned_task_content"></div>
                                </div>
                                <div class="requiredments_box">
                                    <div class="requiredments_title"></div>
                                    <div class="requiredments_content"></div>
                                </div>
                                <div class="preferential_treatment_box">
                                    <div class="preferential_treatment_title"></div>
                                    <div class="preferential_treatment_content"></div>
                                </div>
                                <div class="screening_guide_box">
                                    <div class="screening_guide_title"></div>
                                    <div class="screening_guide_content"></div>
                                </div>
                                <div class="work_form_box">
                                    <div class="work_form_title"></div>
                                    <div class="work_form_content"></div>
                                </div>
                                <div class="work_place_box">
                                    <div class="work_place_title"></div>
                                    <div class="work_place_content"></div>
                                </div>
                                <div class="working_hours_box">
                                    <div class="working_hours_title"></div>
                                    <div class="working_hours_content"></div>
                                </div>
                                <div class="etc_box">
                                    <div class="etc_title"></div>
                                    <div class="etc_content"></div>
                                </div>
                                <div class="submission_guide_box">
                                    <div class="submission_guide_title"></div>
                                    <div class="submission_guide_content"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </div>

      <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
</body>
</html>