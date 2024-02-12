<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/admin/admin.css">
<link rel="shortcut icon" href="icon/common/jobhub_favicon.ico" type="image/x-icon">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://kit.fontawesome.com/b158a20f5c.js" crossorigin="anonymous"></script>
<!-- <script src="./sources/common/js/jquery-1.8.3.min.js"></script>
<script src="./sources/common/js/jquery-ui-1.10.3.custom.js"></script>
<script src="./sources/common/js/common.js"></script>
<script src="./sources/common/js/categorylist.js"></script> -->
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
					<li>${adminId}님</li>
					<li><a href="#" target="_blank">Jobhub바로가기</a></li>
					<li><a href="/admin/mypage">마이페이지</a></li>
					<li id="tnb_logout"><a href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</header>
	<div id="snb">
		<dl>
			<dt class="g10">
				<i class="fa-solid fa-people-group"></i>회원관리
			</dt>
			<dd class="g10 active">
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
									<td colspan="3"><select name="sfl">
											<option value="posting_title">채용공고</option>
											<option value="id">아이디</option>
											<option value="name">이름</option>
											<option value="phone">휴대전화번호</option>
											<option value="email">이메일</option>
									</select> <input type="text" name="stx" value="" class="frm_input"
										size="30"></td>
								</tr>
								<tr>
									<th scope="row">기간검색</th>
									<td colspan="3"><select name="spt">
											<option value="application_date">지원일자</option>
											<option value="application_deadline">지원마감일</option>
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
									<th scope="row">성별</th>
									<td><label><input type="radio" name="gender"
											value="" checked="checked"> 전체</label> <label><input
											type="radio" name="gender" value="female"> 여성</label> <label><input
											type="radio" name="gender" value="male"> 남성</label></td>
									<th scope="row">나이</th>
									<td><label for="start_age" class="sound_only">시작나이</label>
										<input type="text" name="start_age" value="" id="start_age"
										class="frm_input w80" maxlength="3"> 세 ~ <label
										for="end_age" class="sound_only">종료나이</label> <input
										type="text" name="end_age" value="" id="end_age"
										class="frm_input w80" maxlength="3"> 세</td>

								</tr>
								<tr>
									<th scope="row">지원경로</th>
									<td><select name="findOutPath" class="w100">
											<option value="">지원경로</option>
											<option value="1">공식홈페이지</option>
											<option value="2">취업포털</option>
											<option value="3">헤드헌터</option>
											<option value="4">사내리크루터</option>
											<option value="5">취업카페</option>
											<option value="6">사내추천</option>
											<option value="7">기타</option>
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
							type="button" value="재설정" id="frmRest" class="btn_medium grey">
					</div>
				</form>
				<!-- //검색 -->


				<!-- 검색결과 리스트 -->
				<div class="local_ov mart30">
					총 지원자 : <b class="fc_red">3</b>명 <select id="page_rows" onchange=""
						class="marl5">
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
							<col class="w50">
							<col class="w120">
							<col class="w120">
							<col class="w70">
							<col class="w30">
							<col class="w70">
							<col class="w50">
							<col class="w120">
							<col class="w100">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" name="chkall"
									value="1" onclick="check_all(this.form);"></th>
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
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="1"
									id="chk_1"></td>
								<td>1</td>
								<td>Engineering</td>
								<td class="tal" colspan="2"><a href="#">LINE Ads - Data
										Scientist</a></td>
								<td>홍길동</td>
								<td>32세</td>
								<td>초대졸</td>
								<td>신입</td>
								<td>2024-02-05 23:56:22</td>
								<td>서류합격</td>
							</tr>
							<tr class="list1">
								<td><input type="checkbox" name="chk[]" value="2"
									id="chk_2"></td>
								<td>2</td>
								<td>Engineering</td>
								<td class="tal" colspan="2"><a href="#">LINE Ads - Data
										Scientist</a></td>
								<td>홍길동</td>
								<td>32세</td>
								<td>초대졸</td>
								<td>신입</td>
								<td>2024-02-05 23:56:22</td>
								<td>서류심사중</td>
							</tr>
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="3"
									id="chk_3"></td>
								<td>3</td>
								<td>Engineering</td>
								<td class="tal" colspan="2"><a href="#">LINE Ads - Data
										Scientist</a></td>
								<td>홍길동</td>
								<td>32세</td>
								<td>초대졸</td>
								<td>신입</td>
								<td>2024-02-05 23:56:22</td>
								<td>면접예정</td>
							</tr>
							<tr class="list0">
								<td><input type="checkbox" name="chk[]" value="4"
									id="chk_4"></td>
								<td>4</td>
								<td>Corporate</td>
								<td class="tal" colspan="2"><a href="#">일본어 전문 통번역사</a></td>
								<td>홍길동</td>
								<td>32세</td>
								<td>초대졸</td>
								<td>신입</td>
								<td>2024-02-06 00:56:22</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<p class="pagination" id="idPaging">
					<a href=""><img src="../resources/img/btn/paging1.png" alt="처음" /></a>
					<a href=""><img src="../resources/img/btn/paging2.png" alt="이전" /></a>
					<span> <a href="javascript:FuncSearch(1);" class="on">1</a>
						<a href="javascript:FuncSearch(1);">2</a> <a
						href="javascript:FuncSearch(1);">3</a> <a
						href="javascript:FuncSearch(1);">4</a> <a
						href="javascript:FuncSearch(1);">5</a> <a
						href="javascript:FuncSearch(1);">6</a> <a
						href="javascript:FuncSearch(1);">7</a> <a
						href="javascript:FuncSearch(1);">8</a> <a
						href="javascript:FuncSearch(1);">9</a> <a
						href="javascript:FuncSearch(1);">10</a>
					</span> <a href=""><img src="../resources/img/btn/paging3.png"
						alt="다음" /></a> <a href=""><img
						src="../resources/img/btn/paging4.png" alt="마지막" /></a>
				</p>
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
	<div id="ajax-loading">
		<img src="./sources/common/img/ajax-loader.gif">
	</div>
	<div id="anc_header">
		<a href="#anc_hd"><span></span>TOP</a>
	</div>
	
	<script src="./sources/admin/js/admin.js"></script>
	<script src="./sources/common/js/wrest.js"></script>
	<!-- <div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
		style="position: absolute; top: 313.047px; left: 432.766px; z-index: 1; display: none;">
		<div
			class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
			<a class="ui-datepicker-prev ui-corner-all"
				onclick="DP_jQuery_1707160955008.datepicker._adjustDate('#fr_date', -1, 'M');"
				title="이전달"><span class="ui-icon ui-icon-circle-triangle-w">이전달</span></a><a
				class="ui-datepicker-next ui-corner-all ui-state-disabled"
				title="다음달"><span class="ui-icon ui-icon-circle-triangle-e">다음달</span></a>
			<div class="ui-datepicker-title">
				<select class="ui-datepicker-year"
					onchange="DP_jQuery_1707160955008.datepicker._selectMonthYear('#fr_date', this, 'Y');">
					<option value="1925">1925</option>
					<option value="1926">1926</option>
					<option value="1927">1927</option>
					<option value="1928">1928</option>
					<option value="1929">1929</option>
					<option value="1930">1930</option>
					<option value="1931">1931</option>
					<option value="1932">1932</option>
					<option value="1933">1933</option>
					<option value="1934">1934</option>
					<option value="1935">1935</option>
					<option value="1936">1936</option>
					<option value="1937">1937</option>
					<option value="1938">1938</option>
					<option value="1939">1939</option>
					<option value="1940">1940</option>
					<option value="1941">1941</option>
					<option value="1942">1942</option>
					<option value="1943">1943</option>
					<option value="1944">1944</option>
					<option value="1945">1945</option>
					<option value="1946">1946</option>
					<option value="1947">1947</option>
					<option value="1948">1948</option>
					<option value="1949">1949</option>
					<option value="1950">1950</option>
					<option value="1951">1951</option>
					<option value="1952">1952</option>
					<option value="1953">1953</option>
					<option value="1954">1954</option>
					<option value="1955">1955</option>
					<option value="1956">1956</option>
					<option value="1957">1957</option>
					<option value="1958">1958</option>
					<option value="1959">1959</option>
					<option value="1960">1960</option>
					<option value="1961">1961</option>
					<option value="1962">1962</option>
					<option value="1963">1963</option>
					<option value="1964">1964</option>
					<option value="1965">1965</option>
					<option value="1966">1966</option>
					<option value="1967">1967</option>
					<option value="1968">1968</option>
					<option value="1969">1969</option>
					<option value="1970">1970</option>
					<option value="1971">1971</option>
					<option value="1972">1972</option>
					<option value="1973">1973</option>
					<option value="1974">1974</option>
					<option value="1975">1975</option>
					<option value="1976">1976</option>
					<option value="1977">1977</option>
					<option value="1978">1978</option>
					<option value="1979">1979</option>
					<option value="1980">1980</option>
					<option value="1981">1981</option>
					<option value="1982">1982</option>
					<option value="1983">1983</option>
					<option value="1984">1984</option>
					<option value="1985">1985</option>
					<option value="1986">1986</option>
					<option value="1987">1987</option>
					<option value="1988">1988</option>
					<option value="1989">1989</option>
					<option value="1990">1990</option>
					<option value="1991">1991</option>
					<option value="1992">1992</option>
					<option value="1993">1993</option>
					<option value="1994">1994</option>
					<option value="1995">1995</option>
					<option value="1996">1996</option>
					<option value="1997">1997</option>
					<option value="1998">1998</option>
					<option value="1999">1999</option>
					<option value="2000">2000</option>
					<option value="2001">2001</option>
					<option value="2002">2002</option>
					<option value="2003">2003</option>
					<option value="2004">2004</option>
					<option value="2005">2005</option>
					<option value="2006">2006</option>
					<option value="2007">2007</option>
					<option value="2008">2008</option>
					<option value="2009">2009</option>
					<option value="2010">2010</option>
					<option value="2011">2011</option>
					<option value="2012">2012</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
					<option value="2021">2021</option>
					<option value="2022">2022</option>
					<option value="2023">2023</option>
					<option value="2024" selected="selected">2024</option>
				</select><select class="ui-datepicker-month"
					onchange="DP_jQuery_1707160955008.datepicker._selectMonthYear('#fr_date', this, 'M');">
					<option value="0">1월</option>
					<option value="1" selected="selected">2월</option>
				</select>
			</div>
		</div>
		<table class="ui-datepicker-calendar">
			<thead>
				<tr>
					<th class="ui-datepicker-week-end"><span title="일">일</span></th>
					<th><span title="월">월</span></th>
					<th><span title="화">화</span></th>
					<th><span title="수">수</span></th>
					<th><span title="목">목</span></th>
					<th><span title="금">금</span></th>
					<th class="ui-datepicker-week-end"><span title="토">토</span></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
						&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td class=" "
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default" href="#">1</a>
					</td>
					<td class=" "
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default" href="#">2</a>
					</td>
					<td class=" ui-datepicker-week-end "
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default" href="#">3</a>
					</td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end "
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default" href="#">4</a>
					</td>
					<td class=" "
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default" href="#">5</a>
					</td>
					<td class=" ui-datepicker-days-cell-over  ui-datepicker-today"
						onclick="DP_jQuery_1707160955008.datepicker._selectDay('#fr_date',1,2024, this);return false;">
						<a class="ui-state-default ui-state-highlight ui-state-hover"
						href="#">6</a>
					</td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">7</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">8</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">9</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">10</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">11</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">12</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">13</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">14</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">15</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">16</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">17</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">18</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">19</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">20</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">21</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">22</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">23</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">24</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">25</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">26</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">27</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">28</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">29</span></td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
						&nbsp;</td>
				</tr>
			</tbody>
		</table>
		<div class="ui-datepicker-buttonpane ui-widget-content">
			<button type="button"
				class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all"
				onclick="DP_jQuery_1707160955008.datepicker._gotoToday('#fr_date');">오늘</button>
			<button type="button"
				class="ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all"
				onclick="DP_jQuery_1707160955008.datepicker._hideDatepicker();">닫기</button>
		</div>
	</div>
	<script>
        document.addEventListener('DOMContentLoaded', function () {
            var chkAll = document.querySelector('input[name="chkall"]');
            chkAll.addEventListener('change', function () {
                var checkboxes = document.querySelectorAll('input[name="chk[]"]');
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = chkAll.checked;
                });
            });

            var pageRowsSelect = document.getElementById('page_rows');
            pageRowsSelect.addEventListener('change', function () {
                var selectedRows = parseInt(pageRowsSelect.value);
                var tableRows = document.querySelectorAll('.list tr');

                tableRows.forEach(function (row, index) {
                    if (index < selectedRows) {
                        // 선택한 행 수 이하 노출
                        row.style.display = '';
                    } else {
                        // 나머지 행은 숨기도록 설정
                        row.style.display = 'none';
                    }
                });
            });
        });
    </script> -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://rawgit.com/jquery/jquery-ui/master/ui/i18n/jquery.ui.datepicker-ko.js"></script>
</body>
</html>