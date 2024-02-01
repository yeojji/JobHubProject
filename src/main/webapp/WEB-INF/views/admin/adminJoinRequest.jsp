<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Jobhub 계정 생성 요청</title>
<link rel="stylesheet" type="text/css" href="css/notosans.css" media="all">
<link rel="stylesheet" type="text/css" href="css/user_v1_1.css" media="all">

<!--  <script type="text/javascript" src="/kr/_resource/js/jquery/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/jquery/jquery.capslockstate.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/common_init.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/lib/wd.ajax.min.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/lib/wd.json.min.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/lib/wd.layer.min.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/lib/wd.util.min.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/lib/wd.validator.min.js"></script>

	<script type="text/javascript" src="/kr/_resource/js/common.standard.v2.b.js?ver=1706769461"></script>
	<script type="text/javascript" src="/kr/_resource/js/join/join.standard.register.v2.b.js?ver=1706769461"></script>
	<script type="text/javascript" src="/kr/_resource/js/jquery/jquery.jobhubIdCheck.v2.js?ver=1706769461"></script>
	<script type="text/javascript" src="/kr/_resource/js/jquery/jquery.jobhubPwCheck.v2.js?ver=1706769461"></script>

	<script type="text/javascript" src="/kr/_resource/js/zipcode.standard.v2.js?ver=1706769461" charset="utf-8"></script>

	<script type="text/javascript" src="/kr/_resource/js/rsa/rsa.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/rsa/jsbn.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/rsa/prng4.js"></script>
	<script type="text/javascript" src="/kr/_resource/js/rsa/rng.js"></script>
 -->
<script>
    $(document).ready(function() {

        $(window).capslockstate();

        $(window).bind("capsOn", function(event) {

            if ($("#userPassword:focus").length > 0) {
                $("#pCapsLockStat1").show();
                $("#pCapsLockStat1").html('&lt;Caps Lock&gt;이 켜져있습니다.');
            }

            if ($("#userPasswordCfm:focus").length > 0) {
                $("#pCapsLockStat2").show();
                $("#pCapsLockStat2").html('&lt;Caps Lock&gt;이 켜져있습니다.');
            }
        });
        
        $(window).bind("capsOff capsUnknown", function(event) {

            $("#pCapsLockStat1").hide();
            $("#pCapsLockStat1").html('');

            $("#pCapsLockStat2").hide();
            $("#pCapsLockStat2").html('');
        });
        
        $("#userPassword").bind("focusout", function(event) {
            $("#pCapsLockStat1").hide();
            $("#pCapsLockStat1").html('');
        });
        $("#userPassword").bind("focusin", function(event) {

            if ($(window).capslockstate("state") === true) 
            {
                $("#pCapsLockStat1").show();
                $("#pCapsLockStat1").html('&lt;Caps Lock&gt;이 켜져있습니다.');
                
            }
        });

        $("#userPasswordCfm").bind("focusout", function(event) {
            $("#pCapsLockStat2").hide();
            $("#pCapsLockStat2").html('');
        });
        $("#userPasswordCfm").bind("focusin", function(event) {
            if ($(window).capslockstate("state") === true) 
            {
                $("#pCapsLockStat2").show();
                $("#pCapsLockStat2").html('&lt;Caps Lock&gt;이 켜져있습니다.');
                
            }
        });

        $("#userId").bind("focusout", function(event) {
            $("#pUserIdNotice").hide();
        });

        $("#userId").bind("focusin", function(event) {
            $("#pUserIdNotice").show();
        });

        /*
        * Additional event notifying there has been a change, but not the state
        */
        $(window).bind("capsChanged", function(event) {
    //        $("#changetext").html("changed").show().fadeOut();
        });    


        $("#userPassword").keyup(function(e) {
            
            if( /Android/i.test(navigator.userAgent)) {
                var kc = e.which; //get keycode
                // event.shiftKey does not seem to be normalized by jQuery(?) for IE8-
                var shiftKey = ( e.shiftKey ) ? e.shiftKey : ( (kc == 16) ? true : false ); // shift is pressed
                if( !kc || kc == 229 ) {
                    var ss = this.selectionStart - 1;
                    var ssv = ss || 0;
                    var char = this.value.substr(ssv,1);
                    kc = char.charCodeAt(0);
                }

                if (((kc >= 65 && kc <= 90)&& !shiftKey)||((kc >= 97 && kc <= 122)&& shiftKey)) {
                    $("#pCapsLockStat1").show();
                    $("#pCapsLockStat1").html('&lt;Caps Lock&gt;이 켜져있습니다.');
                }
                else
                {
                    $("#pCapsLockStat1").hide();
                    $("#pCapsLockStat1").html('');
                }
            }
        });


        $("#userPasswordCfm").keyup(function(e) {
            
            if( /Android/i.test(navigator.userAgent)) {
                var kc = e.which; //get keycode
                // event.shiftKey does not seem to be normalized by jQuery(?) for IE8-
                var shiftKey = ( e.shiftKey ) ? e.shiftKey : ( (kc == 16) ? true : false ); // shift is pressed
                if( !kc || kc == 229 ) {
                    var ss = this.selectionStart - 1;
                    var ssv = ss || 0;
                    var char = this.value.substr(ssv,1);
                    kc = char.charCodeAt(0);
                }

                if (((kc >= 65 && kc <= 90)&& !shiftKey)||((kc >= 97 && kc <= 122)&& shiftKey)) {
                    $("#pCapsLockStat2").show();
                    $("#pCapsLockStat2").html('&lt;Caps Lock&gt;이 켜져있습니다.');
                }
                else
                {
                    $("#pCapsLockStat2").hide();
                    $("#pCapsLockStat2").html('');
                }
            }
        });
    });


    </script>
</head>


<body>

	<!-- 참고: 미지원 브라우저 -->
	<div class="unsupported">
		<div class="info">
			<h1>서비스 이용 안내</h1>
			<p class="desc">
				본 사이트는 <br>
				<strong>Internet explorer 10 이상, Chrome, Safari, Firefox
					최신버전</strong>에 최적화되어 있습니다. <br>최적화된 브라우저에서 서비스를 이용해 주시기 바랍니다.<br>
				브라우저 설치하기를 진행하시면 해당 브라우저의 최신버전을 설치하실 수 있습니다.
			</p>
			<ul class="browser">
				<li><img
					src="//img.jobhub.com/images/common/browser/img_browser_chrome.jpg"
					alt="Chrome"><a
					href="https://www.google.com/intl/ko/chrome/browser/desktop/index.html"
					class="btnInstall">설치하기</a></li>
				<li><img
					src="//img.jobhub.com/images/common/browser/img_browser_firefox.jpg"
					alt="Firefox"><a
					href="https://www.mozilla.org/en-US/firefox/new/"
					class="btnInstall">설치하기</a></li>
				<li><img
					src="//img.jobhub.com/images/common/browser/img_browser_IE.jpg"
					alt="Internet Explorer"><a
					href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads"
					class="btnInstall">설치하기</a></li>
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
	<div id="wrap">
		<!-- container -->
		<div id="container">
			<form name="frmRegister" id="frmRegister" action="" method="post"
				enctype="multipart/form-data">

				<!-- biz document file upload
		<input type="file" name="bizDocFile" id="bizDocFile" accept=".jpg,.jpeg,.png,.gif,.doc,.docx,.pdf">
	-->
				<!-- SNS join -->
				<!--<a href="#none" class="btnFacebookLogin" id="snsFacebook">FACEBOOK 회원가입</a>-->
				<input type="hidden" name="snsType" id="snsType" value=""> <input
					type="hidden" name="snsUid" id="snsUid" value=""> <input
					type="hidden" name="snsName" id="snsName" value=""> <input
					type="hidden" name="snsEmail" id="snsEmail" value=""> <input
					type="hidden" name="snsToken" id="snsToken" value="">
				<!-- SNS join -->


				<input type="hidden" name="regiTimeStamp" id="regiTimeStamp"
					value="1706769461"> <input type="hidden" name="authExist"
					id="authExist" value=""> <input type="hidden"
					name="userTypeChgAbleFlag" id="userTypeChgAbleFlag" value="">

				<input type="hidden" name="cloud" id="cloud" value=""> <input
					type="hidden" name="mode" id="mode" value=""> <input
					type="hidden" name="extMode" id="extMode" value=""> <input
					type="hidden" name="httpReferer" id="httpReferer" value="">

				<input type="hidden" name="new_design_name" id="new_design_name"
					value=""> <input type="hidden" name="mobile_design_name"
					id="mobile_design_name" value=""> <input type="hidden"
					name="editor_type" id="editor_type" value=""> <input
					type="hidden" name="kcpAuthed" id="kcpAuthed"> <input
					type="hidden" name="bizRegNoAuthed" id="bizRegNoAuthed"> <input
					type="hidden" name="hpSnoAuthed" id="hpSnoAuthed"> <input
					type="hidden" name="isValidUserEmail" id="isValidUserEmail" /> <input
					type="hidden" name="isValidUserHp" id="isValidUserHp" /> <input
					type="hidden" name="loginAuthedFlag" id="loginAuthedFlag">
				<input type="hidden" id="parentConsentInfo" name="parentConsentInfo">


				<input type="hidden" id="bizNoDupChecked" name="bizNoDupChecked">

				<input type="hidden" id="bizName" name="bizName"> <input
					type="hidden" id="corpRegNo" name="corpRegNo"> <input
					type="hidden" id="bizZipcode" name="bizZipcode"> <input
					type="hidden" id="bizAddr1" name="bizAddr1"> <input
					type="hidden" id="bizAddr2" name="bizAddr2"> <input
					type="hidden" id="hpName" name="hpName"> <input
					type="hidden" id="hpBirthYear" name="hpBirthYear"> <input
					type="hidden" id="hpBirthMonth" name="hpBirthMonth"> <input
					type="hidden" id="hpBirthDay" name="hpBirthDay"> <input
					type="hidden" id="hpGender" name="hpGender"> <input
					type="hidden" name="publicKeyN" id="publicKeyN" value=""> <input
					type="hidden" name="publicKeyE" id="publicKeyE" value=""> <input
					type="hidden" name="returnUrl" id="returnUrl" value=""> <input
					type="hidden" id="userType" name="userType" value="K"> <input
					type="hidden" name="testGroup" id="testGroup" value="MB"> <input
					type="hidden" name="initLandDateTime" id="initLandDateTime"
					value="1706769461">

				<!-- contents -->
				<div id="contents">
					<!-- header -->
					<!--
<div id="header">
	<div class="inner">
		<h1 class="logo"><a href="https://www.jobhub.com"><img src="//img.jobhub.com/img/user/images/h1_login.png" alt="jobhub" class="RW"><img src="//img.jobhub.com/img/user/images/h1_login_m.png" alt="jobhub" class="RMB"></a></h1>
	</div>
</div>
-->
					<div class="headingArea">
						<h1 class="logo">
							<a href="https://www.jobhub.com" title="쇼핑몰센터 바로가기"> <!-- <img class="img_logo" src="//img.jobhub.com/images/common/jobhub.svg" alt="jobhub"> -->
							</a>
						</h1>
					</div>
					<!-------------------STEP 1---------------------->
					<!-- <div id="divStep1"> -->
					<div class="tabCont" style="display: block;">
						<div style="display: block;">
							<!-- //header -->
							<div class="mFormBox" id="divKcpAuth">
								<div class="column">
									<strong class="title" id="kcpTitleName">이름</strong>
									<div class="mTooltip gMedium ePosTarget" id="divHelpTooltip">
										<button type="button" class="icon icoHelp ePosHover eTip">도움말</button>
										<div class="tooltip ePosLayer posTop" style="display: none;">
											<div class="content">
												<strong class="titleEm" id="tooltipTitle">가입 안내</strong>
												<ul id="tooltipText">
													<li>이력서에 기재한</li>
													<li>휴대폰 번호로 본인 인증이 가능한 경우 '휴대폰 번호 인증'으로 가입해 주세요.</li>
													<li>휴대폰 번호 인증이 불가능한 경우 화면 아래에 '여권 번호로 가입하기'를 통해 가입해
														주세요.</li>
												</ul>
											</div>
											<button type="button" class="close eClose">닫기</button>
											<span class="edge"></span>
										</div>
									</div>
									<div class="formBox gFlex">
										<input type="text" name="kcpUserName" id="kcpUserName"
											class="fText gFull eFocus" placeholder="이름 입력"
											aria-label="이름 입력" value="" tabindex="1">
										<button type="button" class="btnReset">
											<i class="icoReset">입력 초기화</i>
										</button>
									</div>
									<p class="message typeLeft" id="pKcpUserNameErr"
										style="display: none;"></p>
								</div>

								<div class="column">
									<strong class="title">생년월일/성별</strong>
									<div class="formBox gFlex myNum">
										<span class="myNum-input-first gFlex"> <input
											type="number" name="kcpBirthDay" id="kcpBirthDay"
											class="fText eFocus" maxlength="6" placeholder="생년월일 6자리"
											aria-label="생년월일 6자리" value="" tabindex="2">
										</span> <span class="myNum-input-last gFlex"> <input
											type="number" name="kcpSexCode" id="kcpSexCode"
											class="fText eFocus" maxlength="1" aria-label="주민등록번호 7번째 자리"
											value="" tabindex="3"> <!--error  class 사용 --> <span
											class="myNum-mark-after"><i></i><i></i><i></i><i></i><i></i><i></i></span>
										</span>
									</div>

									<p class="message typeLeft" id="pKcpBirthDayErr"
										style="display: none;"></p>

								</div>
							</div>
						</div>

					</div>
					<div class="mButton">
						<a href="#none" class="btnSubmit large gFull" id="btnSubmit"
							tabindex="15">가입 요청하기</a>
					</div>
					<div class="mUtility left">
						이미 계정이 있으신가요? <a href="https://eclogin.jobhub.com/Shop/?mode="
							class="txtEmLink" target="_blank">관리자 로그인하기</a>
					</div>
				</div>
				<!-- //contents -->
			</form>

			<!-- footer -->
			<footer id="footer">
				<p class="jobhub_direct">
					<a href="#">Jobhub 바로가기</a>
				</p>
				<p class="copyright">&copy; Jobhub Corp. All Rights Reserved.</p>
			</footer>
			<!-- //footer -->
		</div>
		<!-- //container -->



		<!-- 참고: 기존 회원가입정보 있을 때 -->
		<div class="mLayer" style="width: 370px;" id="divDupOngoingView">
			<h2>회원 인증</h2>
			<div class="wrap">
				<p class="txtLight">기존에 본인인증된 회원가입 정보가 있어 회원가입 유형은 기존 정보로 유지됩니다.</p>
				<p class="txtLight gTriple">확인 선택 시 가입이 계속 진행됩니다.</p>
				<!--
			<p class="txtEm" id="dupOngoingUserInfo" style="text-align:left;margin-left:110px;"></p>
            <small>개인정보 보호를 위해 끝자리를 *로 표시됩니다.</small>					
-->
			</div>
			<div class="footer">
				<a href="#none" class="btnEm medium eClose"><span>취소</span></a> <a
					href="#none" class="btnSubmit medium eClose" id="btnOngoingConfirm"><span>확인</span></a>
			</div>
			<button type="button" class="btnClose eClose"
				id="btnCloseDivDupOngoingView">닫기</button>
		</div>
		<!-- //참고 -->
		<!-- 참고: 개인사업자 기가입 안내 -->
		<div class="mLayer" style="width: 370px;"
			id="divQuiescenceEcLoginView">
			<h2>회원 인증</h2>
			<div class="wrap">
				<p class="txtLight">
					회원님은 이미 가입되어 있습니다.<br>
					<br>
					<strong class="txtEm" id="dupQuiescenceEcLoginUserInfo"></strong><br>
					<br>휴면 해제를 위해 로그인 하시겠습니까?

				</p>
				<!--<p class="txtLight gTriple">개인정보 보호를 위해 끝자리는 *로 표시됩니다.</p>-->
			</div>
			<div class="footer">
				<a href="#none" class="btnEm medium eClose"
					onClick="DupQuiescenceEcLoginView.close();"><span>취소</span></a> <a
					href="#none" class="btnSubmit medium" id="btnQuiescenceLoginLayer"><span>로그인</span></a>
			</div>
			<button type="button" class="btnClose eClose"
				onClick="DupQuiescenceEcLoginView.close();">닫기</button>
		</div>
		<!-- //참고 -->

		<script>

$('#btnQuiescenceLoginLayer').click(function() {
	if (opener == null) {
		window.parent.location = "https://www.jobhub.com/Login/?sReturnUrl=/Member/?url=Regist";
	} else {
		window.opener.location = "https://www.jobhub.com/Login/?sReturnUrl=/Member/?url=Regist";
		window.close();
	}
});

</script>
</body>
</html>




