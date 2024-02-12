<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta name="format-detection" content="telephone=no">
<meta name="description" content="Jobhub 관리자 로그인">
<meta property="og:title" content="관리자 로그인 - Jobhub">
<meta property="og:description" content="Jobhub 관리자 로그인 바로가기">
<meta property="og:type" content="website">
<title>관리자 로그인 - Jobhub</title>
<link rel="stylesheet" type="text/css" href="css/admin/notosans.css"
	media="all">
<link rel="stylesheet" type="text/css" href="css/login_v1_1.css"
	media="all">
</head>
<body>
	<!-- header -->
	<header id="header">
		<h1 class="logo">
			<a href="/admin/login" title="jobhub 관리자 바로가기"> <img class="jobhubLogo"
				src="images/logo_250x35.png" alt="jobhub">
			</a>
		</h1>
	</header>
	<!-- //header -->

	<div id="container">
		<!-- contents -->
		<section id="contents">
			<div class="section">
				<div class="mTab eTab themeSolid"></div>
				<form name="frm_admin" id="frm_admin" action="" method="post">
					<div class="tabCont" style="display: block;">
						<div style="display: block;">
							<div class="mFormBox">
								<div class="column">
									<strong class="title">관리자 아이디</strong>
									<div class="gridPosition">
										<input type="text" class="fText suffix"
											placeholder="아이디를 입력해 주세요." title="아이디" name="adminId"
											id="admin_id" value="" tabindex="1" maxlength="20"
											autocomplete='off'>
									</div>
								</div>
								<div class="column">
									<span class="title">비밀번호</span>
									<div class="gridPosition">
										<input type="password" class="fText typePassword"
											placeholder="비밀번호를 입력해 주세요." title="비밀번호" name="adminPw"
											id="userpasswd" tabindex="3" maxlength="20">
										<button type="button" class="btnView ePasswordClick off"></button>
									</div>
								</div>
								<!-- 오류 -->
								<p id="normal_msg" class="message txtWarn typeLeft">${error}</p>
							</div>
						</div>
						<div class="mButton">
							<button type="submit" class="btnStrong large" tabindex="5"
								onclick="form_check();">로그인</button>
						</div>
						<div class="mUtility">
							<span class="gLeft"><span clas="RPB">계정이 없다면?
									&nbsp;</span><a href="/admin/joinApproval" class="txtEmLink">계정 생성
									요청</a></span> <span class="gRight"> <a href="#" class="txtLink"
								target="_blank">아이디/비밀번호 찾기</a>
							</span>
						</div>
					</div>
				</form>
			</div>
		</section>
		<!-- contents -->
	</div>
	<!-- footer -->
	<footer id="footer">
		<p class="jobhub_direct">
			<a href="/login">Jobhub 바로가기</a>
		</p>
		<p class="copyright">&copy; Jobhub Corp. All Rights Reserved.</p>
	</footer>
	<!-- //footer -->
	
<script type="text/javascript">
	//엔터 키 누를 때 폼 확인 
	$(function() {
		$(document).bind("keydown", function(e) {
			if ((window.event && event.keyCode === 13) || (e.keyCode === 13)) {
				form_check();
			}
		});
	});
	
	$(function() {
		$('.ePasswordClick').click(function() {
			var passwordInput = $(this).parent().find('.typePassword');
			if (passwordInput.attr('type') === "password") {
				passwordInput.attr('type', 'text');
				$(this).removeClass("off").addClass("on");
			} else {
				passwordInput.attr('type', 'password');
				$(this).removeClass("on").addClass("off");
			}
		})
	});
	function ipBlockLayer(url) {
		$("#shadow").show();
		$("#blockFrame").attr('src', url).show();
	}
	
</script>
</body>
</html>