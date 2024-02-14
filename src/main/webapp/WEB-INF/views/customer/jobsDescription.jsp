<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공고메인페이지</title>
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
    <input type="hidden" value="${loginId}" id="loginId">
        <div class="notice_box_container">
            <div class="notice_info_header">
                <span class="notice_title">Find Your Next Career</span>
                <div class="company_advertising_slide">
                    
                </div>

				<div class="career_category">
				
				<span class="category_item"><a href="../customer/notice_by_career">ALL</a></span>

					<c:forEach var="jobItem" items="${jobList}">
						<c:choose>
							<c:when test="${jobItem.jobsLevel == 1}">
							
								<span class="category_item"><a href="../list?jobsCateName=${jobItem.jobsName}">${jobItem.jobsName}</a></span>
								
							</c:when>
						</c:choose>
					</c:forEach>

				</div>

			</div>
            <div class="dividing_line"></div>
            <div class="notice_info_main"> </div>
            
            
                
                

                    <form method="get" action="/jobsDescription" id="form">
			<input type="hidden" name="postingId" value="${postingId}">
			<label>제목: </label> <span>${jobpostingById.title}</span> <br>
			<label>직무: </label> <span>${jobpostingById.jobsCateName}</span> <br>
			<label>직무명: </label> <span>${jobpostingById.jobsItemName}</span> <br>
			<label>경력조건: </label> <span>${jobpostingById.careerCondition}</span> <br>
			<label>고용형태: </label> <span>${jobpostingById.employmentType}</span> <br>

			<label>지원일: </label> <span>${jobpostingById.applicationStart} ~ ${jobpostingById.applicationDeadline}</span> <br>
			<label>질문 1: </label> <span>${jobpostingById.question1}</span> <br>
			<label>질문 2: </label> <span>${jobpostingById.question2}</span> <br>
			<label>질문 3: </label> <span>${jobpostingById.question3}</span> <br>

			<label>담당업무: </label> <span>${descriptionById.assignedTask}</span> <br>
			<label>자격요건: </label> <span>${descriptionById.requirements}</span> <br>
			<label>우대사항: </label> <span>${descriptionById.preferentialTreatment}</span> <br>
			<label>전형안내: </label> <span>${descriptionById.screeningGuide}</span> <br>
			<label>근무형태: </label> <span>${descriptionById.workForm}</span> <br>
			<label>근무지: </label> <span>${descriptionById.workPlace}</span> <br>
			<label>근무시간: </label> <span>${descriptionById.workingHours}</span> <br>
			<label>기타: </label> <span>${descriptionById.etc}</span> <br>
			<label>보훈 취업지원 대상 및 장애인 서류 제출안내: </label> <span>${descriptionById.submissionGuide}</span> <br>





			<div class="btn_confirm">
				<input type="button" value="지원하기" id="submitBtn">
			</div>
			
			</form>
                    <script>
                    let loginId = document.getElementById('loginId');
				let form = document.getElementById('form');
				document.getElementById("submitBtn").addEventListener("click", function (event) {
					var confirmation = confirm("지원하겠습니까?");

					// 확인을 눌렀을 경우
					if (confirmation) {
						//로그인을 해야만 넘어가게 추가
						if(loginId.value == ''){
							alert('로그인 후 이용 가능합니다');
							e.preventDefault();
						}
						form.action = "/apply";
						form.submit();
						// 폼 제출
						return true;
					} else {
						// 취소를 눌렀을 경우
						// 폼 제출 취소
						event.preventDefault();
						return false;
					}
				});
			</script>




		
                    
                    
                   
                  
                </div>
            </div>
        </div>
  



     <!--footer-->
        <%@ include file="../header_footer/footer.jsp" %>
</body>
</html>