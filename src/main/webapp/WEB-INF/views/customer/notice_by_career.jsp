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
    <link rel="stylesheet" href="css/notice_by_career.css">
</head>
<body>
    <!--헤더 -->
	<%@ include file="../header_footer/header.jsp" %>


    <!--부서별 공고페이지 메인-->
    <div class="container">
        <div class="notice_box_container">
            <div class="notice_info_header">
                <span class="notice_title">Find Your Next Career</span>
                <div class="company_advertising_slide">
                    
                </div>
                <div class="career_category">
                    <span class="category_item">All</span>
                    <span class="category_item">Engineering</span>
                    <span class="category_item">Design</span>
                    <span class="category_item">Planning</span>
                    <span class="category_item">Business & Sales</span>
                    <span class="category_item">Marketing & Comms</span>
                    <span class="category_item">Corporate</span>
                </div>
            </div>
            <div class="dividing_line"></div>
            <div class="notice_info_main">
                <div class="filter_box_container">
                    <div class="filter_box">
                        <span class="filter_text">Filters</span>
                        <button class="clear_filter_btn">Clear filters</button>
                    </div>
                    <div class="filter_box_item">
                        <nav>
                        <ul> 필터제목
                            <li>필터값</li>
                            <li>필터값</li>
                            <li>필터값</li>
                            <li>필터값</li>
                            <li>필터값</li>
                            <li>필터값</li>
                            <li>필터값</li>
                            
                        </ul>
                        </nav>
                    </div>
                    <div class="filter_box_item">
                        <nav>
                            <ul> 필터제목
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                            </ul>
                            </nav>
                    </div>
                    <div class="filter_box_item">
                        <nav>
                            <ul> 필터제목
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                                <li>필터값</li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="notice_list_box">
                    <div class="search_jobs_box">
                        <i class="fa-solid fa-magnifying-glass search_icon"></i>
                        <input type="text" placeholder="Search Jobs" class="search_jobs">
                    </div>
                    <span class="notice_guide_text">00개의 채용공고가 있습니다</span>
                    <div class="notice_list_item">
                        <div class="notice_info_title">
                            <span class="notice_title_text">공고제목</span>
                            <div class="notice_filter">
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                            </div>
                        </div>
                        <span class="notice_deadline">공고별 마감기한</span>
                    </div>
                    <div class="notice_list_item">
                        <div class="notice_info_title">
                            <span class="notice_title_text">공고제목</span>
                            <div class="notice_filter">
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                            </div>
                        </div>
                        <span class="notice_deadline">공고별 마감기한</span>
                    </div>
                    <div class="notice_list_item">
                        <div class="notice_info_title">
                            <span class="notice_title_text">공고제목</span>
                            <div class="notice_filter">
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                                <span class="notice_filter_text">|</span>
                                <span class="notice_filter_text">공고별 필터</span>
                            </div>
                        </div>
                        <span class="notice_deadline">공고별 마감기한</span>
                    </div>
                </div>
            </div>
        </div>
    </div>



     <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
</body>
</html>