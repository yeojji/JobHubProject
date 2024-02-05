<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body>
	<h1>jobPosting page</h1>
	<form method="post" action="/jobposting">

		<label>제목</label> <input type="text" name="title" required> <br>

		<label>직무</label> <select name="jobLevel1" id="jobLevel1" required>
			<c:forEach var="jobItem" items="${jobList}">
				<c:choose>
					<c:when test="${jobItem.jobsLevel == 1}">
						<option value="${jobItem.jobsId}">${jobItem.jobsName}</option>
					</c:when>
				</c:choose>
			</c:forEach>
<!-- 			<option selected>ALL</option> -->
		</select> <br> <label>직무명</label> <select name="jobLevel2" id="jobLevel2" required>
			<c:forEach var="jobItem" items="${jobList}">
				<c:choose>
					<c:when test="${jobItem.jobsLevel == 2}">
						<option value="${jobItem.jobsId}">${jobItem.jobsName}</option>
					</c:when>
				</c:choose>
			</c:forEach>
		</select> <br> <label>경력조건</label> <select name="careerCondition" required>
			<option>신입</option>
			<option>경력</option>
			<option>무관</option>
		</select> <br> <label>고용형태</label> <select name="employmentType" required>
			<option>정규직</option>
			<option>계약직</option>
			<option>무기계약직</option>
			<option>인턴</option>
		</select> <br> <label>노출 시작일</label> <input type="datetime-local"
			name="postStartDate" required /> <label>노출 종료일</label> <input
			type="datetime-local" name="postEndDate" required /> <br> <label>지원
			시작일</label> <input type="datetime-local" name="applicationStart" required />
		<label>지원 마감일</label> <input type="datetime-local"
			name="applicationDeadline" required /> <br> <label><input
			type="radio" name="postStatus" value="O">노출</label> <label><input
			type="radio" name="postStatus" value="X">비노출</label> <br> <label>질문1
			*필수</label> <input type="text" name="question1" required> <br> <label>질문
			2</label> <input type="text" name="question2"> <br> <label>질문
			3</label> <input type="text" name="question3">

		<!-- <input type="submit" value="저장"> -->




		<br> <label>담당업무</label> <br>
		<textarea name="assignedTask"></textarea>

		<br> <label>자격요건</label> <br>
		<textarea name="requirements"></textarea>

		<br> <label>우대사항</label> <br>
		<textarea name="preferentialTreatment"></textarea>

		<br> <label>전형안내</label> <br>
		<textarea name="screeningGuide"></textarea>

		<br> <label>근무형태</label> <br>
		<textarea name="workForm"></textarea>

		<br> <label>근무지</label> <br>
		<textarea name="workPlace"></textarea>

		<br> <label>근무시간</label> <br>
		<textarea name="workingHours"></textarea>

		<br> <label>기타</label> <br>
		<textarea name="etc"></textarea>

		<br> <label>보훈 취업지원 대상 및 장애인 서류 제출 안내 </label> <br>
		<textarea name="submissionGuide">여기는 정해진 값이 있어서 그거로 고정하자 ~</textarea>

		<button type="submit">임시저장</button>
		<!-- 비노출 상태로 등록 -->
		<button type="submit">저장</button>

	</form>
	
<script>
	
$(document).ready(function(){
	
    if($("select[name=jobLevel1]").val() == "") {
        $("select[name=jobLevel2]").attr("disabled", true);
    }
    console.log('file loading');	    
    
    $(jobLevel1).on('change', function () {
    	console.log('select chagned');
    	jobLevel1 = $(this).val();
    	console.log(jobLevel1);

    	
        if (jobLevel1 != "") {
            jQuery.ajax({
                type: "POST",
                url: "/jobnameByPid",
                cache: false,
                data: {
                    jobLevel1: jobLevel1
                },
                datatype: "text",
                success: function (jobNameList) {
                    var data = JSON.parse(jobNameList); 
                    console.log(data); // 콘솔에 데이터가 제대로 나오는지 확인
                    $.each(data, function (k, v) {
                        console.log(k, v); // 콘솔에 각각의 키와 값이 제대로 나오는지 확인
                        $('<option></option>').val(k).text(v).appendTo($('#jobLevel2'));
                    });
                },
                error: function (xhr, status, error) {
                    console.log("ERROR!!!", error); // 에러 로그 확인
                }
            });
        } else {
            $("select[name=jobLevel2]").attr("disabled", true);
        }

     
    });
});

	    

	
	</script>


</body>
</html>

