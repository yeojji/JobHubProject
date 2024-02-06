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
<meta name="description" content="Jobhub 관리자 로그인 바로가기!">
<meta property="og:title" content="관리자 로그인 - Jobhub">
<meta property="og:description" content="Jobhub 관리자 로그인 바로가기">
<meta property="og:type" content="website">
<title>관리자 로그인 - Jobhub</title>
<link rel="stylesheet" type="text/css" href="css/notosans.css"
	media="all">
<link rel="stylesheet" type="text/css" href="css/login_v1_1.css"
	media="all">



<!-- 	
<script type="text/javascript" src="/_scripts/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/_scripts/ui_desktop.js?22032309"></script>
<script type="text/javascript" src="/_scripts/mall_auth.js?24011709"></script>
 -->
<script type="text/javascript">
	var correctCaptcha = function(response) {
	};
	var onloadCallback = function() {
		grecaptcha.render('html_element', {
			'sitekey' : '6LehBQQTAAAAADqgKwu7R9xDHt3FB8VPiZnk0iK-',
			'callback' : correctCaptcha,
			'size' : 'normal'
		});
	};
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

</head>
<body>

	<!-- 참고: 미지원 브라우저 -->
	<div class="unsupported">
		<div class="info">
			<h1>서비스 이용 안내</h1>
			<p class="desc">
				관리자 사이트는 <br>Internet explorer 10 이상, Chrome, Safari, Firefox
				최신버전에 최적화되어 있습니다. <br>최적화된 브라우저에서 서비스를 이용해 주시기 바랍니다.<br>
				브라우저 설치하기를 진행하시면 해당 브라우저의 최신버전을 설치하실 수 있습니다.
			</p>
			<ul class="browser">
				<li><img src="../images/common/browser/img_browser_chrome.jpg"
					alt="Chrome"><a
					href="https://www.google.com/intl/ko/chrome/browser/desktop/index.html"
					class="btnLink">설치하기</a></li>
				<li><img src="../images/common/browser/img_browser_firefox.jpg"
					alt="Firefox"><a
					href="https://www.mozilla.org/en-US/firefox/new/" class="btnLink">설치하기</a></li>
				<li><img src="../images/common/browser/img_browser_IE.jpg"
					alt="Internet Explorer"><a
					href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads"
					class="btnLink">설치하기</a></li>
			</ul>
			<div class="footer">
				<label class="today">오늘하루열지않음<input type="checkbox"
					class="check"></label>
				<button type="button" class="close">닫기</button>
			</div>
		</div>
		<div class="dimmed"></div>
	</div>
	<!-- //참고 -->

	<nav id="skipNavigation">
		<a href="#contents">컨텐츠 바로가기</a>
	</nav>

	<div id="wrap">
		<!-- 참고: 상단 띠배너 -->
		<div class="banner">
			<div class="info">
				<strong class="title"> <img
					src="images/login/ico_logo_ie.png"
					class="RPI" alt="ie 로고"> <img
					src="images/login/ico_logo_ie_m.png"
					class="RMI" alt="ie 로고"> Internet Explorer 지원 종료
				</strong>
				<p class="desc">
					<span class="RPI">원활한 서비스 이용을 위해</span> <a
						href="https://support.microsoft.com/ko-kr/microsoft-edge/this-website-works-better-in-microsoft-edge-160fa918-d581-4932-9e4e-1075c4713595"
						class="txtStressLink" target="_blank" title="새창 열림"><span>최신
							버전</span> <em class="icoOutLink"></em></a> 을 이용해주세요.
				</p>
			</div>
			<button type="button" class="btnClose">Close</button>
			<!-- 참고: btnClose 클릭 시 .banner 요소에 active 클래스 제거 -->
		</div>
		<!-- //참고 -->

		<script type="text/javascript">
			$(function() {
				var agent = navigator.userAgent.toLowerCase();

				var obj = $('.banner'), btnClose = obj.find('.btnClose');

				if ((navigator.appName == 'Netscape' && navigator.userAgent
						.search('Trident') != -1)
						|| (agent.indexOf("msie") != -1)) {
					obj.addClass('active')
				}

				btnClose.on('click', function() {
					obj.removeClass('active')
				});
			}());
		</script>

		<!-- header -->
		<header id="header">
			<h1 class="logo">
				<a href="#" title="jobhub 관리자 바로가기"> <img class="jobhubLogo"
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
					<form name="frm_admin" id="frm_admin" action="" method="POST">
						<input type="hidden" name="url" id="idUrl" value=""> <input
							type="hidden" name="login_mode" id="login_mode" value="1">
						<input type="hidden" id="mobile" name="mobile" value="F">
						<input type="hidden" name="onnode" value=""> <input
							type="hidden" name="menu" value="" data-param="true"> <input
							type="hidden" name="submenu" value="" data-param="true">
						<input type="hidden" name="mode" value=""> <input
							type="hidden" name="c_name" value=""> <input
							type="hidden" name="loan_type" value=""> <input
							type="hidden" name="addsvc_suburl" value=""> <input
							type="hidden" name="appID" value=""> <input type="hidden"
							name="userid" id="userid" value=""> <input type="hidden"
							name="EncData" id="idEncData" value="" /> <input type="hidden"
							name="EncKey" id="idEncKey" value="" />
						<div class="tabCont" style="display: block;">
							<div style="display: block;">
								<!-- 참고: 2차 인증 display 대응을 위한 div -->
								<div class="mFormBox">
									<div class="column">
										<strong class="title">관리자 아이디</strong>
										<div class="gridPosition">
											<input type="text" class="fText suffix"
												placeholder="아이디를 입력해 주세요." title="아이디" name="id"
												id="mall_id" value="" tabindex="1" maxlength="20">
										</div>
									</div>
									<div class="column">
										<span class="title">비밀번호</span>
										<div class="gridPosition">
											<input type="password" class="fText typePassword"
												placeholder="비밀번호를 입력해 주세요." title="비밀번호" name="pw"
												id="userpasswd" tabindex="3" maxlength="20">
											<button type="button" class="btnView ePasswordClick off">현시하다</button>
										</div>
									</div>
									<p id="normal_msg" class="message txtWarn typeLeft"
										style="display: none;">아이디 또는 비밀번호를 확인해주세요.</p>
									<!-- 참고: 오류 -->
								</div>
							</div>
							<div class="mButton">
								<button type="submit" class="btnStrong large" tabindex="5"
									onclick="form_check();">로그인</button>
							</div>
							<div class="mUtility">
								<span class="gLeft"><span clas="RPB">관리자가 아니신가요?
										&nbsp;</span><a href="/admin/joinRequest" class="txtEmLink">계정 생성 요청</a></span> 
										<span class="gRight"> <a href="#" class="txtLink" target="_blank">아이디/비밀번호 찾기</a>
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
	</div>

</body>
</html>