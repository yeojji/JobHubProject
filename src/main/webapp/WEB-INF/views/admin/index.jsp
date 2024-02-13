<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="css/admin/admin.css">
<link rel="shortcut icon" href="common/icon/jobhub_favicon.ico"
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
				<a href="/admin"><img src="img/admin/logo_wh_250x35.png"
					alt="Jobhub logo"></a>
			</div>
			<div id="tnb">
				<ul>
					<li>${loginId}님</li>
					<li><a href="/login" target="_blank">Jobhub바로가기</a></li>
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
			<dd class="g10">
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
		<div id="main_wrap">
				<section>
					<h2>전체 통계</h2>
					<div class="order_vbx">
						<dl class="od_bx1">
							<dt>채용 지원 현황</dt>
							<dd>
								<p class="ddtit">총 공고 수</p>
								<p>29</p>
							</dd>
							<dd class="total">
								<p class="ddtit">총 지원 수</p>
								<p>2,099,450</p>
							</dd>
						</dl>

						<dl class="od_bx2">
							<dt>채용공고 현황</dt>
							<dd>
								<p class="ddtit">노출중</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">서류심사중</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">서류합격안내</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">면접진행중</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">채용완료</p>
								<p>1</p>
							</dd>
						</dl>
						<dl class="od_bx2">
							<dt>신규 가입자 현황</dt>
							<dd>
								<p class="ddtit">일별</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">월별</p>
								<p>28</p>
							</dd>
							<dd>
								<p class="ddtit">분기별</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">연별</p>
								<p>0</p>
							</dd>
							<dd>
								<p class="ddtit">탈퇴</p>
								<p>0</p>
							</dd>
						</dl>
					</div>
				</section>

				<section class="sidx_head01">
					<h2>
						노출중 채용공고<a href="#" class="btn_small">공고관리 바로가기</a>
					</h2>
					<table>
						<thead>
							<tr>
								<th scope="col">채용공고ID</th>
								<th scope="col" colspan="2">채용공고 제목</th>
								<th scope="col">경력조건</th>
								<th scope="col">고용형태</th>
								<th scope="col">지원 마감일</th>
								<th scope="col">노출 종료일</th>
							</tr>
						</thead>
						<tbody>
							<tr class="tr_alignc">
								<td>posting128</td>
								<td colspan="2">IPX Executive Secretary(임원 비서)</td>
								<td>무관</td>
								<td>계약직</td>
								<td>채용시까지</td>
								<td>2024-12-31 23:59 (화)</td>
							</tr>
							<tr class="tr_alignc">
								<td>posting124</td>
								<td colspan="2">LINE Ads - Data Engineer</td>
								<td>경력</td>
								<td>정규직</td>
								<td>채용시까지</td>
								<td>2024-12-31 23:59 (화)</td>
							</tr>
							<tr class="tr_alignc">
								<td>posting124</td>
								<td colspan="2">LINE Ads - Data Engineer</td>
								<td>경력</td>
								<td>정규직</td>
								<td>채용시까지</td>
								<td>2024-12-31 23:59 (화)</td>
							</tr>
							<tr class="tr_alignc">
								<td>posting124</td>
								<td colspan="2">LINE Ads - Data Engineer</td>
								<td>경력</td>
								<td>정규직</td>
								<td>채용시까지</td>
								<td>2024-12-31 23:59 (화)</td>
							</tr>
							<tr class="tr_alignc">
								<td>posting124</td>
								<td colspan="2">LINE Ads - Data Engineer</td>
								<td>경력</td>
								<td>정규직</td>
								<td>채용시까지</td>
								<td>2024-12-31 23:59 (화)</td>
							</tr>
						</tbody>
					</table>
				</section>

				<section class="sidx_head01">
					<h2>
						신규 가입자<a href="#" class="btn_small">회원관리 바로가기</a>
					</h2>
					<table>
						<thead>
							<tr>
								<th scope="col">이름</th>
								<th scope="col">아이디</th>
								<th scope="col">이메일</th>
								<th scope="col">생년월일</th>
								<th scope="col">성별</th>
								<th scope="col">휴대전화번호</th>
								<th scope="col">가입일시</th>
							</tr>
						</thead>
						<tbody>
							<tr class="tr_alignc">
								<td>조제은</td>
								<td>je6658</td>
								<td>jje6658@gmail.com</td>
								<td>1990-00-00</td>
								<td>여성</td>
								<td>010-0000-0000</td>
								<td>2024-02-05 00:00 (화)</td>
							</tr>
							<tr class="tr_alignc">
								<td>홍길동</td>
								<td>test01</td>
								<td>test01@test.com</td>
								<td>1900.01.01</td>
								<td>남성</td>
								<td>010-0000-0000</td>
								<td>2024-02-04 22:50 (월)</td>
							</tr>
							<tr class="tr_alignc">
								<td>테스트</td>
								<td>test02</td>
								<td>test02@test.com</td>
								<td>1900.01.01</td>
								<td>남성</td>
								<td>010-0000-0000</td>
								<td>2024-02-04 20:25 (월)</td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
		</div>

	</div>
	<div id="ft">
		<p>Copyright &copy; Jobhub. All rights reserved.</p>
	</div>
	<div id="ajax-loading">
		<img src="../../../resources/common/img/ajax-loader.gif">
	</div>
	<div id="anc_header">
		<a href="#anc_hd"><span></span>TOP</a>
	</div>
	<script src="../../../resources/admin/js/admin.js"></script>
	<script src="../../../resources/common/js/wrest.js"></script>
</body>
</html>