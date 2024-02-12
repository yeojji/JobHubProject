<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="css/admin/admin.css">
<link rel="shortcut icon" href="common/icon/jobhub_favicon.ico"
	type="image/x-icon">
<script src="common/js/jquery-1.8.3.min.js"></script>
<script src="common/js/jquery-ui-1.10.3.custom.js"></script>
<script src="common/js/common.js"></script>
<script src="common/js/categorylist.js"></script>
<script src="https://kit.fontawesome.com/b158a20f5c.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<!-- header -->
	<header id="hd">
		<div id="hd_wrap">
			<h1>Jobhub 관리자 페이지</h1>
			<div id="logo">
				<a href="/admin/adminMain"><img
					src="./sources/admin/img/logo_wh_250x35.png" alt="Jobhub logo"></a>
			</div>
			<div id="tnb">
				<ul>
					<li>${adminName}님</li>
					<li><a href="#" target="_blank">Jobhub바로가기</a></li>
					<li><a href="/admin/mypage">마이페이지</a></li>
					<li id="tnb_logout"><a href="#">로그아웃</a></li>
				</ul>
			</div>
			<!-- gnb -->
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
				<a href="#">이력서 조회</a>
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
			<dd class="g10 active">
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
				<h1>관리자 조회</h1>

				<!-- 검색 -->
				<h2>검색</h2>
				<form name="fsearch" id="fsearch" method="get">
					<input type="hidden" name="code" value="list">
					<div class="tbl_frm01">
						<table class="tablef">
							<colgroup>
								<col class="w100">
								<col>
								<col class="w100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">검색어</th>
									<td colspan="3"><select name="sfl" class="w120">
											<option value="admin_name">이름</option>
											<option value="job_name">직무</option>
											<option value="admin_id">관리자 아이디</option>
											<option value="tel">내선전화번호</option>
											<option value="email">이메일</option>
									</select> <input type="text" name="stx" value="" class="frm_input"
										size="30"></td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td colspan="3"><select name="spt" class="w100">
											<option value="creation_code">생성일자</option>
											<option value="hire_date">입사일자</option>
									</select> <label for="fr_date" class="sound_only">시작일</label> <input
										type="date" name="fr_date" value="" id="fr_date"
										class="frm_input w100" maxlength="10"> ~ <label
										for="to_date" class="sound_only">종료일</label> <input
										type="date" name="to_date" value="" id="to_date"
										class="frm_input w100" maxlength="10"> <span
										class="btn_group"><input type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="오늘"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="어제"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="일주일"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="지난달"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="1개월"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="3개월"><input
											type="button"
											onclick="search_date('fr_date','to_date',this.value);"
											class="btn_small white" value="전체"></span></td>
								</tr>
								<tr>
									<th scope="row">관리자권한</th>
									<td><select name="permission_code" class="w100">
											<option value="1">ADMIN</option>
											<option value="2">SUPERVISOR</option>
											<option value="3">MANAGER</option>
											<option value="4">STAFF</option>
									</select></td>
									<th scope="row">경력조건</th>
									<td><select name="career_condition" class="w100">
											<option value="">전체</option>
											<option value="0">신입</option>
											<option value="1~1">1년</option>
											<option value="2~2">2년</option>
											<option value="3~3">3년</option>
											<option value="4~4">4년</option>
											<option value="5~5">5년</option>
											<option value="6~6">6년</option>
											<option value="7~7">7년</option>
											<option value="8~8">8년</option>
											<option value="9~9">9년</option>
											<option value="10~10">10년</option>
											<option value="11~11">11년</option>
											<option value="12~12">12년</option>
											<option value="13~13">13년</option>
											<option value="14~14">14년</option>
											<option value="15~15">15년</option>
											<option value="16~16">16년</option>
											<option value="17~17">17년</option>
											<option value="18~18">18년</option>
											<option value="19~19">19년</option>
											<option value="20~20">20년</option>
											<option value="20~99">20년~</option>
									</select></td>

								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="검색" class="btn_medium"> <input
							type="button" value="초기화" id="frmRest" class="btn_medium grey">
					</div>
				</form>
				<!-- //검색 -->



				<!-- 검색결과 리스트 -->
				<div class="local_ov mart30">
					총 관리자 수 : <b class="fc_red">3</b>명 <select id="page_rows"
						onchange="" class="marl5">
						<option value="30" selected="selected">30줄 정렬</option>
						<option value="50">50줄 정렬</option>
						<option value="100">100줄 정렬</option>
						<option value="150">150줄 정렬</option>
					</select> <a href="./member.php?code=register_form"
						class="fr btn_lsmall green">신규 관리자 생성</a>
				</div>
				<div class="tbl_head01">
					<table>
						<colgroup>
							<col class="w30">
							<col class="w30">
							<col class="w100">
							<col class="w120">
							<col class="w120">
							<col class="w150">
							<col class="w60">
							<col class="w100">
							<col class="w100">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" name="chkall"
									value="1" onclick="check_all(this.form);"></th>
								<th scope="col">번호</th>
								<th scope="col">관리아이디</th>
								<th scope="col">이름</th>
								<th scope="col">직무</th>
								<th scope="col">내선전화번호</th>
								<th scope="col">권한</th>
								<th scope="col">입사일자</th>
								<th scope="col">생성일자</th>
							</tr>
						</thead>
						<tbody class="list">
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="1"
									id="chk_1"></td>
								<td>1</td>
								<td><a href="#">adminid001</a></td>
								<td>김서연</td>
								<td>Engineering</td>
								<td>02-9999-1111</td>
								<td class="tal">MANAGER</td>
								<td>2022-08-15</td>
								<td>2024-02-05</td>
							</tr>
							<tr class="list1">
								<td><input type="checkbox" name="chk[]" value="2"
									id="chk_2"></td>
								<td>2</td>
								<td><a href="#">adminid001</a></td>
								<td>김서연</td>
								<td>Engineering</td>
								<td>02-9999-1111</td>
								<td class="tal">MANAGER</td>
								<td>2022-08-15</td>
								<td>2024-02-05</td>
							</tr>
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="3"
									id="chk_3"></td>
								<td>3</td>
								<td><a href="#">adminid001</a></td>
								<td>김서연</td>
								<td>Engineering</td>
								<td>02-9999-1111</td>
								<td class="tal">MANAGER</td>
								<td>2022-08-15</td>
								<td>2024-02-05</td>
							</tr>
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="4"
									id="chk_4"></td>
								<td>4</td>
								<td><a href="#">adminid001</a></td>
								<td>김서연</td>
								<td>Engineering</td>
								<td>02-9999-1111</td>
								<td class="tal">MANAGER</td>
								<td>2022-08-15</td>
								<td>2024-02-05</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="local_frm02">
					<a href="./member.php?code=register_form"
						class="fr btn_lsmall green">신규 관리자 생성</a>
				</div>
			</div>
		</div>
	</div>


	<!-- //검색결과 리스트 -->

	<!-- footer -->
	<div id="ft">
		<p>Copyright &copy; Jobhub. All rights reserved.</p>
	</div>
	<div id="ajax-loading">
		<img src="./sources/common/img/ajax-loader.gif">
	</div>
	<div id="anc_header">
		<a href="#anc_hd"><span></span>TOP</a>
	</div>
	<script src="./sources/admin/js/admin.js"></script>
	<script src="./sources/common/js/wrest.js"></script>
	<script>
        document.addEventListener('DOMContentLoaded', function () {
            var chkAll = document.querySelector('input[name="chkall"]');
            chkAll.addEventListener('change', function () {
                var checkboxes = document.querySelectorAll('input[name="chk[]"]');
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = chkAll.checked;
                });
            });
        });
    </script>
</body>
</html>