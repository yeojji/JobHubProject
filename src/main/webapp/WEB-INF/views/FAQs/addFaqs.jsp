<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jobhub 신규공고</title>
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

 <header id="hd">
        <div id="hd_wrap">
            <h1>Jobhub 관리자 페이지</h1>
            <div id="logo"><a href="/admin/adminMain"><img src="./sources/admin/img/logo_wh_250x35.png"
                        alt="Jobhub logo"></a></div>
            <div id="tnb">
                <ul>
                    <li>${loginId}님</li>
                    <li><a href="#" target="_blank">Jobhub바로가기</a></li>
                    <li><a href="/admin/mypage">마이페이지</a></li>
                    <li id="tnb_logout"><a href="#">로그아웃</a></li>
                </ul>
            </div>
        </div>
    </header>
    
     <div id="snb">
        <dl>
            <dt class="g10"><i class="fa-solid fa-people-group"></i>회원관리</dt>
            <dd class="g10"><a href="#">회원정보 조회<em>2</em></a></dd>
            <dd class="g10"><a href="#">신규회원 등록</a></dd>
            <dd class="g10"><a href="#">탈퇴자 조회</a></dd>
            <dt class="g10"><i class="fa-solid fa-people-roof"></i>직원관리</dt>
            <dd class="g10"><a href="#">직원정보 조회<em>2</em></a></dd>
            <dd class="g10"><a href="#">신규직원 등록</a></dd>
            <dt class="g10"><i class="fa-solid fa-file-lines"></i>이력서관리</dt>
            <dd class="g10"><a href="#">이력서 조회</a></dd>
            <dd class="g10"><a href="#">면접지원자 관리</a></dd>
            <dt class="g10"><i class="fa-solid fa-pen-to-square"></i>채용공고 관리</dt>
            <dd class="g10 "><a href="../jobposting">신규공고 등록</a></dd>
            <dd class="g10 "><a href="../jobpostingMain">채용공고 조회</a></dd>
            <dt class="g10"><i class="fa-regular fa-circle-question"></i>FAQs 관리</dt>
            <dd class="g10 active"><a href="../faqs">FAQs 조회</a></dd>
            <dt class="g10"><i class="fa-solid fa-gears"></i>관리자설정</dt>
            <dd class="g10"><a href="#">관리자 조회</a></dd>
            <dd class="g10"><a href="#">신규계정 생성</a></dd>
            <dd class="g10"><a href="#">계정승인요청 조회</a></dd>
        </dl>
    </div>
    
     <div id="wrapper">
        <div id="content">
            <div class="s_wrap">
                <h1>FAQ 등록</h1>

                <!-- 등록  -->
              
                <form  method="post" action="/addFaqs">
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
                                    <th scope="row">카테고리</th>
                                    <td colspan="3"> 
                                       <select name="category" id="category" required>
		<option value="채용일반">채용 일반</option>	
		<option value="채용과정">채용 과정</option>
		<option value="지원서작성">지원서 작성</option>
		<option value="시스템오류">시스템 오류</option>
	</select>
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">제목</th>
                                    <td colspan="3">
                                        <input type="text" name="title" required value="" class="frm_input" size="100">
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">내용</th>
                                    <td colspan="3">
                                        <!-- <input type="text" name="question3" value="" class="frm_input" size="100"> -->
                                        <textarea name="content" class="frm_textarea" required ></textarea>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="btn_confirm">
                        <input type="submit" value="등록" class="btn_medium">
                    </div>
                </form>

            
            </div>
        </div>
    </div>

    <!-- footer -->
    <div id="ft">
        <p>Copyright &copy; Jobhub. All rights reserved.</p>
    </div>
    <div id="ajax-loading"><img src="./sources/common/img/ajax-loader.gif"></div>
    <div id="anc_header"><a href="#anc_hd"><span></span>TOP</a></div>
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

