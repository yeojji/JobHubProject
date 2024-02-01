<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../css/mainpage.css">
</head>
<body>
    <!--헤더 -->
	<%@ include file="../header_footer/header.jsp" %>

    <!--메인페이지-->
    <div class="main_container">
        <div class="main_header">
            <div class="text_area">
                <span class="company_title_text">One step closer</span>
                <span class="company_title_text"> to a better future</span>
                <div class="select_filter_box">
                    <div class="select_category_box">
                        <div>
                            <select class="select_region_menu">
                                <option>East Asia</option>
                                <option>Southeast Asia</option>
                                <option>North America</option>
                            </select>
                        </div>
                        <div>
                            <select class="select_city_menu">
                                <option>Bundang</option>
                                <option>Dalian</option>
                                <option>Fukuoka</option>
                                <option>Hong Kong</option>
                                <option>Kyoto</option>
                                <option>Seoul</option>
                                <option>Shanghai</option>
                                <option>Taipei</option>
                                <option>Tokyo</option>
                                <option>Bangkok</option>
                                <option>Jakarta</option>
                                <option>New York</option>
                                <option>Palo Alto</option>
                            </select>
                        </div>
                        <div>
                            <select class="select_jobunit_menu">
                                <option>Engineering</option>
                                <option>Design</option>
                                <option>Planning</option>
                                <option>Business & Sales</option>
                                <option>Marketing & Common</option>
                                <option>Corporate</option>
                            </select>
                        </div>
                    </div>
                    <div class="go_resume_by_filter">
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                </div>
            </div>
            <div class="scroll_down">
                <span class="scroll_down_text">scroll</span>
                <span class="scroll_down_text"><i class="fa-solid fa-chevron-down"></i></span>
            </div>
        </div>
        <div class="main">
            <div class="company_news_boxs">
                <h2 class="company_news_title">회사뉴스타이틀</h2>
                <div class="company_news_list">
                    <div class="company_news_box">
                        <div class="news_1_image">뉴스1이미지</div>
                        <div class="news_box">
                            <div class="news_title">뉴스타이틀</div>
                            <div class="news_content">
                                뉴스내용
                            </div>
                        </div>
                    </div>
                    <div class="company_news_box">
                        <div class="news_2_image">뉴스2이미지</div>
                        <div class="news_box">
                            <div class="news_title">뉴스타이틀</div>
                            <div class="news_content">
                                뉴스내용
                            </div>
                        </div>
                    </div>
                    <div class="company_news_box">
                        <div class="news_3_image">뉴스3이미지</div>
                        <div class="news_box">
                            <div class="news_title">뉴스타이틀</div>
                            <div class="news_content">
                                뉴스내용
                            </div>
                        </div>
                    </div>
                    <div class="company_news_box">
                        <div class="news_4_image">뉴스4이미지</div>
                        <div class="news_box">
                            <div class="news_title">뉴스타이틀</div>
                            <div class="news_content">
                                뉴스내용
                            </div>
                        </div>
                    </div>
                </div>
                <div class="more_about_company_news">
                    <span class="more_about_text1">More about our culture ></span>
                </div>
            </div>

            <div class="company_career_boxs">
                <div class="career_image_box">
                    <div class="career_image">
                        <h2 class="career_title_text">Meet the Global JobHub</h2>
                    </div>
                </div>
                <div class="career_category_list">
                    <div class="category_item">
                        <!--부서별 직원 인터뷰 내용 반복-->
                        <span class="category_title">부서명</span>
                        <div class="employee_info">
                            <span class="employee_name">부서별직원이름</span>
                            <span class="employee_job">직무</span>
                            <span class="employee_interview">
                                직원별 인터뷰 내용
                            </span>
                        </div>
                    </div>
                    <div class="category_item">
                        <span class="category_title">부서명</span>
                        <div class="employee_info">
                            <span class="employee_name">부서별직원이름</span>
                            <span class="employee_job">직무</span>
                            <span class="employee_interview">
                                직원별 인터뷰 내용
                            </span>
                        </div>
                    </div>
                    <div class="category_item">
                        <span class="category_title">부서명</span>
                        <div class="employee_info">
                            <span class="employee_name">부서별직원이름</span>
                            <span class="employee_job">직무</span>
                            <span class="employee_interview">
                                직원별 인터뷰 내용
                            </span>
                        </div>
                    </div>
                </div>
                <div class="more_about_employee_info">
                    <span class="more_about_text2">More about our JobHub ></span>
                </div>
            </div>
        </div>
    </div>



    <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>

</body>
</html>