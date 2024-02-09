<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공고페이지</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="/css/notice_by_career.css">
    <link rel="stylesheet" href="/css/header.css">
     <link rel="stylesheet" href="/css/footer.css">
   
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
				
				<span class="category_item">ALL</span>

					<c:forEach var="jobItem" items="${jobList}">
						<c:choose>
							<c:when test="${jobItem.jobsLevel == 1}">
								<span class="category_item">${jobItem.jobsName}</span>
							</c:when>
						</c:choose>
					</c:forEach>

				</div>

			</div>
            <div class="dividing_line"></div>
            <div class="notice_info_main"> </div>
                
                
                <div class="notice_list_box">
                    <div class="search_jobs_box">
                        <i class="fa-solid fa-magnifying-glass search_icon"></i>
                        <input type="text" placeholder="Search Jobs" class="search_jobs">
                    </div>
                    <span class="notice_guide_text">${postingCount}개의 채용공고가 있습니다</span>
                    
                    
                        
                            
                            
                        
                    
                    
            <c:forEach var="jobpostingItem" items="${jobpostingList}"> 

            	<div class="notice_list_item">
                        <div class="notice_info_title">
                            <span class="notice_title_text">${jobpostingItem.title}</span>
                            <div class="notice_filter">
                                <span class="notice_filter_text">${jobpostingItem.employmentType} |</span>
                                <span class="notice_filter_text">카테고리 |</span>
                                <span class="notice_filter_text">직무명 |</span>
                                <span class="notice_filter_text">${jobpostingItem.careerCondition}</span>
                            </div>
                        </div>
                        <span class="notice_deadline">${jobpostingItem.applicationStart} ~ ${jobpostingItem.applicationDeadline}</span>
                    </div>
             </c:forEach>   
            

            
                    
                    
                    
                   
                  
                </div>
            </div>
        </div>
    </div>



     <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
</body>
</html>