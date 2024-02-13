<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="/admin/css/admin.css">
<link rel="shortcut icon" href="/common/icon/jobhub_favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://kit.fontawesome.com/b158a20f5c.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- header -->
	<header id="hd">
		<div id="hd_wrap">
			<h1>Jobhub 관리자 페이지</h1>
			<div id="logo">
				<a href="/admin"><img src="/admin/img/logo_wh_250x35.png"
					alt="Jobhub logo"></a>
			</div>
			<div id="tnb">
				<ul>
					<li>${loginId}님</li>
					<li><a href="#" target="_blank">Jobhub바로가기</a></li>
					<li><a href="/admin/mypage">마이페이지</a></li>
					<li id="tnb_logout"><a href="/admin/logout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</header>
	<div id="snb">
		<dl>
			<dt class="g10">
				<i class="fa-solid fa-people-group"></i>회원관리
			</dt>
			<dd class="g10">
				<a href="#">회원정보 조회<em>2</em></a>
			</dd>
			<dd class="g10">
				<a href="#">신규회원 등록</a>
			</dd>
			<dd class="g10">
				<a href="#">탈퇴자 조회</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-people-roof"></i>직원관리
			</dt>
			<dd class="g10">
				<a href="#">직원정보 조회<em>2</em></a>
			</dd>
			<dd class="g10">
				<a href="#">신규직원 등록</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-file-lines"></i>이력서관리
			</dt>
			<dd class="g10 active">
				<a href="/admin/resume">이력서 조회</a>
			</dd>
			<dd class="g10">
				<a href="#">면접지원자 관리</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-pen-to-square"></i>채용공고 관리
			</dt>
			<dd class="g10">
				<a href="#">신규공고 등록</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-gears"></i>관리자설정
			</dt>
			<dd class="g10">
				<a href="#">관리자 조회<em>195</em></a>
			</dd>
			<dd class="g10">
				<a href="#">신규계정 생성</a>
			</dd>
			<dd class="g10">
				<a href="#">계정승인요청 조회</a>
			</dd>
		</dl>
	</div>
	<div id="wrapper">
		<div id="content">
			<div class="s_wrap">
			<form action="" id="modify_form" method="post">
			<input type="hidden" name="resumeId" value="${resume.resumeId}">
				<h1>이력서 상세 조회</h1>
				<div class="tbl_frm01">
					<table class="tablef">
						<colgroup>
							<col class="w130">
							<col>
							<col class="w130">
							<col>
						</colgroup>
						<tbody>
							<tr class="mb_adm_fld">
								<th scope="row">지원한 공고</th>
								<td colspan="3">
								${resume.title}
								</td>
							</tr>
							<tr>
								<th scope="row">직무명</th>
								<td>${resume.jobsName}</td>
								<th scope="row">경력조건</th>
								<td>${resume.careerCondition}</td>
								
							</tr>
							<tr>
								<th scope="row">이름</th>
								<td>${resume.name}</td>
								<th scope="row">이메일</th>
								<td><input type="text" name="email"
									value="${resume.email}" email itemname="email"
									class="frm_input" size="30"></td>
							</tr>
							
							<tr>
								<th scope="row">생년월일</th>
								<td><input type="text" name="mb_birth" value="${resume.birth}"
									class="frm_input"></td>
								<th scope="row">나이</th>
								<td>${resume.age}</td>
							</tr>
							<tr>
							<th scope="row">성별</th>
								<td>${resume.gender}</td>
								<th scope="row">휴대전화</th>
								<td><input type="text" name="phone"
									value="${resume.phone}" class="frm_input"></td>
							</tr>
							<tr>
								<th scope="row">최종학력</th>
								<td>${resume.sortation}</td>
								<th scope="row">경력사항</th>
								<td>${resume.career}</td>
							</tr>
							<tr>
								<th scope="row">장애사항</th>
								<td>${resume.disorderStatus}</td>
								<th scope="row">병역사항</th>
								<td>${resume.militaryServiceMatters}</td>
							</tr>
							<tr>
								<th scope="row">보훈대상여부</th>
								<td>${resume.veteransTargetStatus}</td>
								<th scope="row">이력서 제출일자</th>
								<td>${resume.revisionDate}</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<h3 class="anc_tit mart30">추가정보</h3>
				<div class="tbl_frm01">
					<table class="tablef">
						<colgroup>
							<col class="w130">
							<col>
							<col class="w130">
							<col>
						</colgroup>
						<tbody>
						<tr>
								<th scope="row">아이디</th>
								<td>${resume.userId}</td>
								<th scope="row">비밀번호</th>
								<td><input type="text" name="password" value="${resume.password}"
									class="frm_input"></td>
							</tr>
							<tr>
								<th scope="row">가입경로</th>
								<td>${resume.supportPath}</td>
								<th scope="row">회원가입일</th>
								<td>${resume.createdDate}</td>
							</tr>
							<tr class="mb_adm_fld">
								<th scope="row">지원한 공고</th>
								<td colspan="3">
								${resume.title}
								</td>
							</tr>
							<tr>
								<th scope="row">${resume.question1}</th>
								<td colspan="3">${resume.content1}</td>
							</tr>
							<tr>
								<th scope="row">${resume.question2}</th>
								<td colspan="3">${resume.content2}</td>
							</tr>
							<tr>
								<th scope="row">${resume.question3}</th>
								<td colspan="3">${resume.content3}</td>
							</tr>
						</tbody>
					</table>
				</div>
					</form>

				<div class="btn_confirm">
					<button type="submit" value="저장" class="btn_medium" accesskey="s"></button>
					<button type="button" class="btn_medium bx-white"
						onclick="window.close();">닫기</button>
				</div>
				</section>
			</div>
			</form>
		</div>
	</div>
	</div>
	<!-- //검색결과 리스트 -->
	<div id="ft">
		<p>Copyright &copy; Jobhub. All rights reserved.</p>
	</div>
	<div id="anc_header">
		<a href="#anc_hd"><span></span>TOP</a>
	</div>
</body>
</html>