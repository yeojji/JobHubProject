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
				<a href="/admin"><img src="/admin/img/logo_wh_250x35.png"
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
			<dd class="g10 active">
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
				<h1>이력서 관리</h1>

				<!-- 검색 -->
				<h2>검색</h2>
				<form action="/admin/resume" name="fsearch" id="fsearch"
					method="get">
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
									<td colspan="3"><select name="sfl">
											<option value="title">채용공고</option>
											<option value="userId">아이디</option>
											<option value="name">이름</option>
											<option value="phone">휴대전화번호</option>
											<option value="email">이메일</option>
									</select> <input type="text" name="searchKeyword" value=""
										class="frm_input" size="30"></td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td colspan="3"><select name="spt">
											<option value="revisionDate">지원일자</option>
									</select> <label for="startDate" class="sound_only">시작일</label> <input
										type="date" name="startDate" value="" id="startDate"
										class="frm_input w100" maxlength="10"> ~ <label
										for="endDate" class="sound_only">종료일</label> <input
										type="date" name="endDate" value="" id="endDate"
										class="frm_input w100" maxlength="10"></td>
								</tr>
								<tr>
									<th scope="row">성별</th>
									<td><label><input type="radio" name="gender"
											value="" checked="checked"> 전체</label> <label><input
											type="radio" name="gender" value="여"> 여성</label> <label><input
											type="radio" name="gender" value="남"> 남성</label></td>
									<th scope="row">나이</th>
									<td><label for="startAge" class="sound_only">시작나이</label>
										<input type="text" name="startAge" value="" id="startAge"
										class="frm_input w80" maxlength="3"> 세 ~ <label
										for="endAge" class="sound_only">종료나이</label> <input
										type="text" name="endAge" value="" id="endAge"
										class="frm_input w80" maxlength="3"> 세</td>

								</tr>
								<tr>
									<!-- <th scope="row">지원경로</th>
									<td><select name="findOutPath" class="w100">
											<option value="지원경로">지원경로</option>
											<option value="공식홈페이지">공식홈페이지</option>
											<option value="취업포털">취업포털</option>
											<option value="헤드헌터">헤드헌터</option>
											<option value="사내리크루터">사내리크루터</option>
											<option value="취업카페">취업카페</option>
											<option value="사내추천">사내추천</option>
											<option value="기타">기타</option>
									</select></td> -->
									<th scope="row">경력조건</th>
									<td colspan="3"><select name="career" class="w100">
											<option value="">전체</option>
											<option value="신입">신입</option>
											<option value="경력">경력</option>
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
					총 지원자 : <b class="fc_red">${resumeList.size()}</b>명 <select
						id="page_rows" onchange="" class="marl5">
						<option value="30" selected="selected">30줄 정렬</option>
						<option value="50">50줄 정렬</option>
						<option value="100">100줄 정렬</option>
						<option value="150">150줄 정렬</option>
					</select> <a href="./member.php?code=register_form"
						class="fr btn_lsmall green">선택 설정</a>
				</div>
				<div class="tbl_head01">
					<table>
						<colgroup>
							<col class="w30">
							<col class="w30">
							<col class="w100">
							<col class="w120">
							<col class="w70">
							<col class="w70">
							<col class="w30">
							<col class="w70">
							<col class="w50">
							<col class="w120">
							<col class="w100">
						</colgroup>
						<!-- 테이블 헤더 -->
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" name="chkall"
									value="1" class="chk-all"></th>
								<th scope="col">번호</th>
								<th scope="col">채용부서</th>
								<th scope="col" colspan="2">채용공고</th>
								<th scope="col"><a href="#">이름</a></th>
								<th scope="col">나이</th>
								<th scope="col">학력</th>
								<th scope="col">경력</th>
								<th scope="col"><a href="#">제출일시</a></th>
								<th scope="col">상태</th>
							</tr>
						</thead>
						<tbody class="list">
							<c:if test="${empty resumeList}">
								<tr>
									<td colspan="11">검색 결과가 없습니다.</td>
								</tr>
							</c:if>

							<c:forEach var="resumeItem" items="${resumeList}"
								varStatus="rowStat">
								<tr class="${rowStat.index % 2 == 0 ? 'list0' : 'list1'}">
									<!-- 리스트 출력 -->
									<td><input type="checkbox" name="chk[]"
										value="${rowStat.index + 1}" id="chk_${rowStat.index + 1}"></td>
									<td>${rowStat.index + 1}</td>
									<td>${resumeItem.jobsName}</td>
									<td class="tal" colspan="2">${resumeItem.title}</td>
									<td><a href="/admin/resumeDetail?resumeId=${resumeItem.resumeId}">${resumeItem.name}</a></td>
									<td>${resumeItem.age}</td>
									<td>${resumeItem.education}</td>
									<td>${resumeItem.career}</td>
									<td>${resumeItem.revisionDate}</td>
									<td>${resumeItem.submissionStatus}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="local_frm02">
					<a href="./member.php?code=register_form"
						class="fr btn_lsmall green">선택 설정</a>
				</div>
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
	<script type="text/javascript">
    // 페이지 로드 시 sessionStorage에 저장된 검색 조건이 있는지 확인
    $(document).ready(function() {
        var savedSearchCondition = JSON.parse(sessionStorage.getItem('searchCondition'));
        if (savedSearchCondition) {
            $('#sfl').val(savedSearchCondition.sfl);
            $('#searchKeyword').val(savedSearchCondition.searchKeyword);
            $('#spt').val(savedSearchCondition.spt);
            $('#startDate').val(savedSearchCondition.startDate);
            $('#endDate').val(savedSearchCondition.endDate);
            $('input[name="gender"][value="' + savedSearchCondition.gender + '"]').prop('checked', true);
            $('#startAge').val(savedSearchCondition.startAge);
            $('#endAge').val(savedSearchCondition.endAge);
            $('#career').val(savedSearchCondition.career);
        }
    });

    // 검색 폼 제출 시 검색 조건을 sessionStorage에 저장
    $('#fsearch').submit(function() {
        var searchCondition = {
            sfl: $('#sfl').val(),
            searchKeyword: $('#searchKeyword').val(),
            spt: $('#spt').val(),
            startDate: $('#startDate').val(),
            endDate: $('#endDate').val(),
            gender: $('input[name="gender"]:checked').val(),
            startAge: $('#startAge').val(),
            endAge: $('#endAge').val(),
            career: $('#career').val(),
        };
        sessionStorage.setItem('searchCondition', JSON.stringify(searchCondition));
    });
    
 	// "재설정" 버튼 클릭 시 검색 조건을 초기화
    $('#frmRest').click(function() {
        // 폼 내의 입력 값 초기화
        $('#sfl').val('');
        $('#searchKeyword').val('');
        $('#spt').val('');
        $('#startDate').val('');
        $('#endDate').val('');
        $('input[name="gender"]').prop('checked', false);
        $('#startAge').val('');
        $('#endAge').val('');
        $('#career').val('');

        // sessionStorage에서도 검색 조건 제거
        sessionStorage.removeItem('searchCondition');
    });
</script>
</body>
</html>