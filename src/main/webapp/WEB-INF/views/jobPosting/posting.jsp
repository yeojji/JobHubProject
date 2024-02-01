<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> jobPosting page </h1>
	
	<form action="서버로 보낼 때 해당 데이터가ㅣ 도착할 url" method="post">
	
	<label>posting ID : 자동으로 숫자 늘어나는 쿼리 ~~ </label> <br>
	
	<label>제목</label> <input type="text" name="jobPostingTitle" required> <br>
	
		<label>직무</label>
			<select name="jobName" required>
				<option> jobs에서 job_level이 1인 애들</option> 
			</select>
			
			<br>
			
		<label>직무명</label>
			<select name="jobLevel" required>
				<option> jobs에서 job_level이 2인 애들인데 where level 이 위에 잇는 애들</option>
			</select>
			
			<br>
			
			<label>경력조건</label>
			<select name="carrerCondition" required>
				<option>common code에서 불러오기 career_condition인 애들</option>
				
			</select>
			
			<br>
		<label>고용형태</label>
			<select name="employmentType" required>
				<option> common code 에서 group_code 가 employment_type 인 애들</option>
		</select>
			
			<br>
		
		
		
		<br>
		
		<label>최초 작성일</label><input type="date" required  />	--sysdate적용을 어케해 ,,
		
		<br>
		<label>노출 시작일</label><input type="date" name="postStartDate" required/>	
		
		<br>
		<label>노출 종료일</label><input type="date" name="postEndDate"  required/>	
		
		<br>
		<label>지원 시작일</label><input type="date"  name="applicationStart" required/>
		
		<br>
		<label>지원 마감일</label><input type="date" name="applicationDeadline"  required/>
		
		<br>
		<label>조회수: ${count}</label>
		
		<br>
		<label>노출 상태</label>
			<select name="postStatus">
				<option>노출</option>
				<option>비노출</option>
			</select>
		
		<br>
		<label>수정일</label><input type="date"  />
		
		<br>
		<label>수정한 관리자</label><input type="text"> <!-- 로그인에 있는 정보 -->
		
		<br>
		<label>질문 1(*필수)</label><input type="text" name="question1" required>
		
		<br>
		<label>질문 2</label><input type="text" name="question2" >
		
		<br>
		<label>질문 3</label><input type="text" name="question3">
		
		<br>
		~~~~~~~~~~~~ 채용세부내용 ~~~~~~ <!-- 채용세부내용으로 저장하려면 폼이 달라야하나? -->
		
		<br>
		<label>담당업무</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>자격요건</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>우대사항</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>전형안내</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>근무형태</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>근무지</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>근무시간</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>기타</label>
		<br>
		<textarea></textarea>
		
		<br>
		<label>보훈 취업지원 대상 및 장애인 서류 제출 안내 </label>
		<br>
		<textarea>여기는 정해진 값이 있어서 그거로 고정하자 ~</textarea>
		
		<button type="submit">임시저장</button> <!-- 비노출 상태로 등록 -->
		<button type="submit">저장</button>
		
	</form>
	
	
	
	
	
	
</body>
</html>

