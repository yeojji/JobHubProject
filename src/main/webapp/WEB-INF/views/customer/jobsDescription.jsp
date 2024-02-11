<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="/jobsDescription">
	 <input type="hidden" name="postingId" value="${jobposting.postingId}">
	 <label>제목: </label> <span>${jobposting.title}</span>	<br>
	 <label>직무: </label> <span>${jobposting.jobsCateName}</span> <br>
	 <label>직무명: </label> <span>${jobposting.jobsItemName}</span> <br>
	 <label>경력조건: </label> <span>${jobposting.careerCondition}</span> <br>
	 <label>고용형태: </label> <span>${jobposting.employmentType}</span> <br>
	
	 <label>지원일: </label> <span>${jobposting.applicationStart} ~ ${jobposting.applicationDeadline}</span> <br>
	 <label>질문 1: </label> <span>${jobposting.question1}</span> <br>
	 <label>질문 2: </label> <span>${jobposting.question2}</span> <br>
	 <label>질문 3: </label> <span>${jobposting.question3}</span> <br>
	 
	 <label>담당업무: </label> <span>${description.assignedTask}</span> <br>
	 <label>자격요건: </label> <span>${description.requirements}</span> <br>
	 <label>우대사항: </label> <span>${description.preferentialTreatment}</span> <br>
	 <label>전형안내: </label> <span>${description.screeningGuide}</span> <br>
	 <label>근무형태: </label> <span>${description.workForm}</span> <br>
	 <label>근무지: </label> <span>${description.workPlace}</span> <br>
	 <label>근무시간: </label> <span>${description.workingHours}</span> <br>
	 <label>기타: </label> <span>${description.etc}</span> <br>
	 <label>보훈 취업지원 대상 및 장애인 서류 제출안내: </label> <span>${description.submissionGuide}</span> <br>
	
                            
                             
                                
                                
  			 <div class="btn_confirm">
                        <input type="submit" value="지원하기"  id="submitBtn">
                    </div>
                    
                    	<script>
                    	document.getElementById("submitBtn").addEventListener("click", function(event) {
                    	    var confirmation = confirm("지원하겠습니까?");
                    	    
                    	    // 확인을 눌렀을 경우
                    	    if (confirmation) {
                    	        alert("수정되었습니다.");
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

	

                                
                                </form>
</body>
</html>