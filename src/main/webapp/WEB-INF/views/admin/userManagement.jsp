<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/layout/header.jsp" %>
	<div id="snb">
		<dl>
			<dt class="g10">
				<i class="fa-solid fa-people-group"></i>회원관리
			</dt>
			<dd class="g10 active">
				<a href="/admin/customers">회원정보 조회<em>2</em></a>
			</dd>
			<dd class="g10">
				<a href="">신규회원 등록</a>
			</dd>
			<dd class="g10">
				<a href="">탈퇴자 조회</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-people-roof"></i>직원관리
			</dt>
			<dd class="g10">
				<a href="">직원정보 조회<em>2</em></a>
			</dd>
			<dd class="g10">
				<a href="">신규직원 등록</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-file-lines"></i>이력서관리
			</dt>
			<dd class="g10">
				<a href="/admin/resume">이력서 조회</a>
			</dd>
			<dd class="g10">
				<a href="">면접지원자 관리</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-pen-to-square"></i>채용공고 관리
			</dt>
			<dd class="g10">
				<a href="">신규공고 등록</a>
			</dd>
			<dt class="g10">
				<i class="fa-solid fa-gears"></i>관리자설정
			</dt>
			<dd class="g10">
				<a href="/admin/setting">관리자 조회<em>195</em></a>
			</dd>
			<dd class="g10">
				<a href="">신규계정 생성</a>
			</dd>
			<dd class="g10">
				<a href="">계정승인요청 조회</a>
			</dd>
		</dl>
	</div>
	<div id="wrapper">
		<div id="content">
			<div class="s_wrap">
				<h1>회원 조회</h1>

				<!-- 검색 -->
				<h2>검색</h2>
				<form action="/admin/customers" name="fsearch" id="fsearch"
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
									<td colspan="3"><select name="sfl" class="w120">
											<option value="userId">아이디</option>
											<option value="email">이메일</option>
											<option value="name">이름</option>
											<option value="phone">휴대전화번호</option>
									</select> <input type="text" name="searchKeyword" value="" class="frm_input"
										size="30"></td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td><select name="spt" class="w100">
											<option value="createdDate">가입일자</option>
											<option value="birth">생년월일</option>
									</select><label for="startDate" class="sound_only">시작일</label> 
									<input type="date" name="startDate" value="" id="startDate"
										class="frm_input w100" maxlength="10"> ~ <label
										for="endDate" class="sound_only">종료일</label> <input
										type="date" name="endDate" value="" id="endDate"
										class="frm_input w100" maxlength="10"></td>
									<th scope="row">성별</th>
									<td><label><input type="radio" name="gender"
											value="" checked="checked"> 전체</label> <label><input
											type="radio" name="gender" value="여"> 여성</label> <label><input
											type="radio" name="gender" value="남"> 남성</label></td>
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
					총 관리자 : <b class="fc_red">${customerList.size()}</b>명 
					<select id="page_rows" onchange="" class="marl5">
						<option value="30" selected="selected">30줄 정렬</option>
						<option value="50">50줄 정렬</option>
						<option value="100">100줄 정렬</option>
						<option value="150">150줄 정렬</option>
					</select> <a href="./member.php?code=register_form"
						class="fr btn_lsmall green">신규 회원 생성</a>
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
							<col class="w30">
							<col class="w120">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" name="chkall"
									value="1" onclick="check_all(this.form);"></th>
								<th scope="col">번호</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">이메일</th>
								<th scope="col">휴대전화번호</th>
								<th scope="col">성별</th>
								<th scope="col">가입일자</th>
							</tr>
						</thead>
						<tbody class="list">
							<c:if test="${empty customerList}">
								<tr>
									<td colspan="11">검색 결과가 없습니다.</td>
								</tr>
							</c:if>

							<c:forEach var="customerItem" items="${customerList}"
								varStatus="rowStat">
								<tr class="${rowStat.index % 2 == 0 ? 'list0' : 'list1'}">
									<!-- 리스트 출력 -->
									<td><input type="checkbox" name="chk[]" value="${rowStat.index + 1}" id="chk_${rowStat.index + 1}"></td>
									<td>${rowStat.index + 1}</td>
									<td>${customerItem.userId}</td>
									<td>${customerItem.name}</td>
									<td>${customerItem.email}</td>
									<td>${customerItem.phone}</td>
									<td>${customerItem.gender}</td>
									<td>${customerItem.createdDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="local_frm02">
					<a href="./member.php?code=register_form"
						class="fr btn_lsmall green">신규 회원 생성</a>
				</div>
			</div>
		</div>
	</div>

	<!-- //검색결과 리스트 -->
<%@include file="/WEB-INF/views/admin/layout/footer.jsp" %>