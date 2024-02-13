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
			<form action="/admin/resumeDetail" method="post">
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
							<tr>
								<th scope="row">이름</th>
								<td>${resume.name}</td>
								<th scope="row">아이디</th>
								<td>${resume.userId}</td>
							</tr>
							<tr>
								<th scope="row">비밀번호</th>
								<td><input type="text" name="password" value=""
									class="frm_input"></td>
								<th scope="row">이메일</th>
								<td><input type="text" name="email"
									value="${resume.email}" email itemname="email"
									class="frm_input" size="30"></td>
							</tr>
							<tr>
								<th scope="row">생년월일</th>
								<td><input type="text" name="mb_birth" value="${resume.birth}"
									class="frm_input"></td>
								<th scope="row">성별</th>
								<td><input type="radio" name="gender" value="남성"
									id="gender1" checked="checked"> <label for="gender1">남성</label>
									<input type="radio" name="gender" value="여성" id="gender2">
									<label for="gender2">여성</label></td>
							</tr>
							<tr>
								<th scope="row">전화번호</th>
								<td><input type="text" name="phone" value=""
									class="frm_input"></td>
								<th scope="row">휴대전화</th>
								<td><input type="text" name="phone"
									value="${resume.phone}" class="frm_input"></td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td colspan="3"><input type="text" name="zip" value="05089"
									class="frm_input" size="8" maxlength="5"> <a
									href="javascript:win_zip('fmemberform', 'zip', 'addr1', 'addr2', 'addr3', 'addr_jibeon');"
									class="btn_small grey">주소검색</a>
									<p class="mart5">
										<input type="text" name="addr1" value="서울 광진구 강변북로 64"
											class="frm_input" size="60"> 기본주소
									</p>
									<p class="mart5">
										<input type="text" name="addr2" value="2323" class="frm_input"
											size="60"> 상세주소
									</p>
									<p class="mart5">
										<input type="text" name="addr3" value="(자양동)"
											class="frm_input" size="60"> 참고항목 <input
											type="hidden" name="addr_jibeon" value="R">
									</p></td>
							</tr>
							<tr>
								<th scope="row">본인확인방법</th>
								<td><input type="radio" name="mb_certify_case" value="ipin"
									id="mb_certify_ipin"> <label for="mb_certify_ipin">아이핀</label>
									<input type="radio" name="mb_certify_case" value="hp"
									id="mb_certify_hp"> <label for="mb_certify_hp">휴대폰</label>
								</td>
								<th scope="row">성별</th>
								<td><input type="radio" name="gender" value="M"
									id="gender1" checked="checked"> <label for="gender1">남자</label>
									<input type="radio" name="gender" value="F" id="gender2">
									<label for="gender2">여자</label></td>
							</tr>
							<tr>
								<th scope="row">본인확인</th>
								<td><input type="radio" name="mb_certify" value="1"
									id="mb_certify_yes"> <label for="mb_certify_yes">예</label>
									<input type="radio" name="mb_certify" value=""
									id="mb_certify_no" checked="checked"> <label
									for="mb_certify_no">아니오</label></td>
								<th scope="row">성인인증</th>
								<td><input type="radio" name="mb_adult" value="1"
									id="mb_adult_yes"> <label for="mb_adult_yes">예</label>
									<input type="radio" name="mb_adult" value="0" id="mb_adult_no"
									checked="checked"> <label for="mb_adult_no">아니오</label>
								</td>
							</tr>
							<tr>
								<th scope="row">레벨</th>
								<td><select id="mb_grade" name="mb_grade">
										<option value='9'>[9] 일반회원</option>
										<option value='8'>[8] 우수회원</option>
										<option value='7'>[7] 특별회원</option>
										<option value='6' selected>[6] 가맹점</option>
										<option value='5'>[5] 지점</option>
										<option value='1'>[1] 관리자</option>
								</select></td>
								<th scope="row">포인트</th>
								<td><b>0</b> Point <a
									href="http://demofran.com/admin/member/member_point_req.php?mb_id=tubeweb1"
									onclick="win_open(this,'pop_point_req','600','500','yes');return false;"
									class="btn_small grey marl10">강제적립</a></td>
							</tr>
							<tr class="mb_adm_fld">
								<th scope="row">부운영자 접근허용</th>
								<td colspan="3">
									<div class="sub_frm02">
										<table>
											<tr>
												<td><input id="auth_1" type="checkbox" name="auth_1"
													value="1"> <label for="auth_1">회원관리</label></td>
												<td><input id="auth_2" type="checkbox" name="auth_2"
													value="1"> <label for="auth_2">가맹점관리</label></td>
												<td><input id="auth_3" type="checkbox" name="auth_3"
													value="1"> <label for="auth_3">공급사관리</label></td>
												<td><input id="auth_4" type="checkbox" name="auth_4"
													value="1"> <label for="auth_4">카테고리관리</label></td>
												<td><input id="auth_5" type="checkbox" name="auth_5"
													value="1"> <label for="auth_5">상품관리</label></td>
											</tr>
											<tr>
												<td><input id="auth_6" type="checkbox" name="auth_6"
													value="1"> <label for="auth_6">주문관리</label></td>
												<td><input id="auth_7" type="checkbox" name="auth_7"
													value="1"> <label for="auth_7">통계분석</label></td>
												<td><input id="auth_8" type="checkbox" name="auth_8"
													value="1"> <label for="auth_8">고객지원</label></td>
												<td><input id="auth_9" type="checkbox" name="auth_9"
													value="1"> <label for="auth_9">디자인관리</label></td>
												<td><input id="auth_10" type="checkbox" name="auth_10"
													value="1"> <label for="auth_10">환경설정</label></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h3 class="anc_tit mart30">기타정보</h3>
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
								<th scope="row">가입경로</th>
								<td>${resumeList.findOutPath}</td>
								<th scope="row">회원가입일</th>
								<td>2020-10-04 18:04:17</td>
							</tr>
							<tr>
								<th scope="row">구매횟수</th>
								<td>0 회</td>
								<th scope="row">총구매금액</th>
								<td>0 원</td>
							</tr>
							<tr>
								<th scope="row">관리자메모</th>
								<td colspan="3"><textarea name="memo" class="frm_textbox"
										rows="3"></textarea></td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>

				<div class="btn_confirm">
					<input type="submit" value="저장" class="btn_medium" accesskey="s">
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