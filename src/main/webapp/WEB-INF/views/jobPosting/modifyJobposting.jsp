<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jobPosting 수정 ~~!! </h1>
	
		<form method="post" action="/modifyJobposting">
		<input type="hidden" name="postingId" value="${jobposting.postingId}">

 		<label>제목</label> <input type="text" name="title" value="${jobposting.title}" readonly > <br>
 		<label>직무</label> <input type="text" name="title" value="${jobposting.jobsCateName}" readonly > <br>
 		<label>직무명</label> <input type="text" name="title" value="${jobposting.jobsItemName}" readonly > 
		
		<br> 
		
		<label>경력조건</label> 
		<select name="careerCondition" required>
			<option <c:if test="${jobposting.careerCondition == '신입'}">selected</c:if>>신입</option>
			<option <c:if test="${jobposting.careerCondition == '경력'}">selected</c:if>>경력</option>
			<option <c:if test="${jobposting.careerCondition == '무관'}">selected</c:if>>무관</option>
		</select> 
		
		<br> 
		
		<label>고용형태</label> 
		<select name="employmentType" required>
			<option <c:if test="${jobposting.employmentType == '신입'}">selected</c:if>>정규직</option>
			<option <c:if test="${jobposting.employmentType == '계약직'}">selected</c:if>>계약직</option>
			<option <c:if test="${jobposting.employmentType == '무기계약직'}">selected</c:if>>무기계약직</option>
			<option <c:if test="${jobposting.employmentType == '인턴'}">selected</c:if>>인턴</option>
		</select> 
		
		<br> 
		
		<label>노출 시작일</label> 
		<input type="datetime-local" name="postStartDate" value="${jobposting.postStartDate}"  required /> 
		<label>노출 종료일</label> 
		<input type="datetime-local" name="postEndDate" value="${jobposting.postEndDate}" required /> 
		<br> 
		<label>지원 시작일</label> <input type="datetime-local" name="applicationStart" value="${jobposting.applicationStart}" required />
		<label>지원 마감일</label> <input type="datetime-local" name="applicationDeadline" value="${jobposting.applicationDeadline}" required /> 
		<br> 
		<label><input type="radio" name="postStatus" value="O" <c:if test="${jobposting.postStatus == 'O'}">checked</c:if>>노출</label> 
		<label><input type="radio" name="postStatus" value="X" <c:if test="${jobposting.postStatus == 'X'}">checked</c:if>>비노출</label> 
		<label><input type="radio" name="postStatus" value="S" <c:if test="${jobposting.postStatus == 'S'}">checked</c:if>>임시저장</label> 
		<br> 
		<label>질문1 *필수</label> <input type="text" name="question1" value="${jobposting.question1}" required> 
		<br> 
		<label>질문2</label> <input type="text" name="question2" value="${jobposting.question2}"> 
		<br> 
		<label>질문3</label> <input type="text" name="question3" value="${jobposting.question3}">
		
		
		<br> <label>담당업무</label> <br>
		<textarea name="assignedTask">${description.assignedTask}</textarea>

		<br> <label>자격요건</label> <br>
		<textarea name="requirements">${description.requirements}</textarea>

		<br> <label>우대사항</label> <br>
		<textarea name="preferentialTreatment">${description.preferentialTreatment}</textarea>

		<br> <label>전형안내</label> <br>
		<textarea name="screeningGuide">${description.screeningGuide}</textarea>

		<br> <label>근무형태</label> <br>
		<textarea name="workForm">${description.workForm}</textarea>

		<br> <label>근무지</label> <br>
		<textarea name="workPlace">${description.workPlace}</textarea>

		<br> <label>근무시간</label> <br>
		<textarea name="workingHours">${description.workingHours}</textarea>

		<br> <label>기타</label> <br>
		<textarea name="etc">${description.etc}</textarea>

		<br> <label>보훈 취업지원 대상 및 장애인 서류 제출 안내 </label> <br>
		<textarea name="submissionGuide">${description.submissionGuide}</textarea>
		
		<button type="submit">수정하기</button>

	</form>
	
	
	
</body>
</html>