<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 상세 조회</title>
</head>
<body>
	<div class="resumeDetail_container">
	<h1>이력서 상세 조회</h1>
	<h3>${resumeDetail.postingTitle}</h3>

	<p>기본 인적사항</p>
	<p>${resumeDetail.name}</p>
	<p>${resumeDetail.birth}</p>
	<p>${resumeDetail.age}</p>
	<p>${resumeDetail.email}</p>
	<p>${resumeDetail.gender}</p>
	<p>${resumeDetail.gender}</p>
	<p>${resumeDetail.phone}</p>
	<p>${resumeDetail.applicationPath}</p>
	<hr>
	<p>경력사항</p>
	<div class="resume_career">
		<p>${resumeDetail.companyName}</p>
		<p>${resumeDetail.departmentName}</p>
		<p>${resumeDetail.joinDateOfCompany}</p>
		<p>${resumeDetail.resignationDateOfCompany}</p>
		<p>${resumeDetail.duty}</p>
		<!-- 직무 -->
		<p>${resumeDetail.details_of_work}</p>
	</div>
	<hr>
	<p>학력사항</p>
	<div class="resume_education">
		<p>${resumeDetail.eduSortation}</p>
		<!-- 구분(고/대/석/박) -->
		<p>${resumeDetail.schoolName}</p>
		<p>${resumeDetail.AdmissionDate}</p>
		<!-- 입학년월 -->
		<p>${resumeDetail.graduationDate}</p>
		<!-- 졸업년월 -->
	</div>
	<hr>
	<p>자격사항</p>
	<div class="resume_certificate">
		<p>${resumeDetail.certfSortation}</p>
		<!-- 구분(자격/어학) -->
		<p>${resumeDetail.certificateType}</p>
		<p>${resumeDetail.certificateLevel}</p>
		<p>${resumeDetail.dateOfAcquisition}</p>
		<!-- 취득/응시일 -->
		<p>${resumeDetail.IssuingAuthority}</p>
		<!-- 발급기관 -->
	</div>
	<hr>
	<p>직무질문</p>
	<div class="resume_job_question">
		<p>${resumeDetail.content1}</p>
		<p>${resumeDetail.content2}</p>
		<p>${resumeDetail.content3}</p>
	</div>
	<hr>
	<p>첨부자료</p>
	<div class="resume_job_question">
		<a href=""><p>${resumeDetail.fileName}</p></a>
	</div>
	<hr>
	<p>병역사항</p>
	<p>${resumeDetail.militaryServiceMatters}</p>
	<!--병역사항  -->
	<p>보훈대상 여부</p>
	<p>${resumeDetail.militaryServiceMatters}</p>
	<!-- 보훈대상여부 -->
	<p>장애사항</p>
	<p>${resumeDetail.disorderStatus}</p>
	<hr>
	<button type="button">목록보기</button>

	<div class="resume_status_wrap">
	<h3>서류합격여부</h3>
	<select class="resume_status">
		<option value="choice" selected="selected">---선택---</option>
		<option value="acceptance">합격</option>
		<option value="failed">불합격</option>
		<option value="undetermined">심사중</option>
	</select>
	</div>
</div>
</body>
</html>