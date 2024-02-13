<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="/admin/css/admin.css">
<link rel="shortcut icon" href="/common/icon/jobhub_favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
				<a href="/admin/adminMain"><img
					src="/admin/img/logo_wh_250x35.png" alt="Jobhub logo"></a>
			</div>
			<div id="tnb">
				<ul>
					<li>${loginId}님</li>
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
											<option value="adminId">아이디</option>
											<option value="jobName">직무</option>
											<option value="name">이름</option>
											<option value="tel">내선전화번호</option>
											<option value="email">이메일</option>
											<option value="employeeId">사번</option>
									</select> <input type="text" name="searchKeyword" value="" class="frm_input"
										size="30"></td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td><select name="spt" class="w100">
											<option value="creationCode">생성일자</option>
											<option value="hireDate">입사일자</option>
									</select><label for="startDate" class="sound_only">시작일</label> <input
										type="date" name="startDate" value="" id="startDate"
										class="frm_input w100" maxlength="10"> ~ <label
										for="endDate" class="sound_only">종료일</label> <input
										type="date" name="endDate" value="" id="endDate"
										class="frm_input w100" maxlength="10"></td>
									<th scope="row">관리자권한</th>
									<td><select name="permissionCode" class="w100">
											<option value="ADMIN">ADMIN</option>
											<option value="SUPERVISOR">SUPERVISOR</option>
											<option value="MANAGER">MANAGER</option>
											<option value="STAFF">STAFF</option>
									</select></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="검색" class="btn_medium"> <input
							type="button" value="재설정" id="frmRest" class="btn_medium grey">
					</div>
				</form>
				<!-- //검색 -->



				<!-- 검색결과 리스트 -->
				<div class="local_ov mart30">
					총 관리자 : <b class="fc_red">${adminList.size()}</b>명 
					<select id="page_rows" onchange="" class="marl5">
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
							<col class="w70">
							<col class="w70">
							<col class="w70">
							<col class="w100">
							<col class="w120">
							<col class="w70">
							<col class="w70">
							<col class="w50">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" name="chkall"
									value="1" onclick="check_all(this.form);"></th>
								<th scope="col">번호</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">사번</th>
								<th scope="col">부서</th>
								<th scope="col">내선번호</th>
								<th scope="col">권한</th>
								<th scope="col">생성일자</th>
								<th scope="col">계정상태</th>
							</tr>
						</thead>
						<tbody class="list">
							<c:if test="${empty adminList}">
								<tr>
									<td colspan="11">검색 결과가 없습니다.</td>
								</tr>
							</c:if>

							<c:forEach var="adminItem" items="${adminList}"
								varStatus="rowStat">
								<tr class="${rowStat.index % 2 == 0 ? 'list0' : 'list1'}">
									<!-- 리스트 출력 -->
									<td><input type="checkbox" name="chk[]" value="${rowStat.index + 1}" id="chk_${rowStat.index + 1}"></td>
									<td>${rowStat.index + 1}</td>
									<td>${adminItem.adminId}</td>
									<td>${adminItem.name}</td>
									<td>${adminItem.employeeId}</td>
									<td>${adminItem.jobsName}</td>
									<td>${adminItem.tel}</td>
									<td>${adminItem.permissionCode}</td>
									<td>${adminItem.creationCode}</td>
									<td>${adminItem.userStatus}</td>
								</tr>
							</c:forEach>
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
		<img src="/common/img/ajax-loader.gif">
	</div>
	<div id="anc_header">
		<a href="#anc_hd"><span></span>TOP</a>
	</div>
	<script src="/admin/js/admin.js"></script>
	<script src="/common/js/wrest.js"></script>
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