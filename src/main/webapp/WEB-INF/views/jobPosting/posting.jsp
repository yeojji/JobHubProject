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
            <div id="logo"><a href="/admin/adminMain"><img src="/img/admin/logo_wh_250x35.png"
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
            <dd class="g10 active"><a href="../jobposting">신규공고 등록</a></dd>
            <dd class="g10 "><a href="../jobpostingMain">채용공고 조회</a></dd>
            <dt class="g10"><i class="fa-regular fa-circle-question"></i>FAQs 관리</dt>
            <dd class="g10 "><a href="../faqs">FAQs 조회</a></dd>
            <dt class="g10"><i class="fa-solid fa-gears"></i>관리자설정</dt>
            <dd class="g10"><a href="#">관리자 조회</a></dd>
            <dd class="g10"><a href="#">신규계정 생성</a></dd>
            <dd class="g10"><a href="#">계정승인요청 조회</a></dd>
        </dl>
    </div>
    
     <div id="wrapper">
        <div id="content">
            <div class="s_wrap">
                <h1>신규공고 등록</h1>

                <!-- 등록  -->
                <h2>*표시는 필수 입력 항목입니다.</h2>
                <form  method="post" action="/jobposting">
                    <input type="hidden" name="code" value="list">
                   
                    <input type="hidden" name="adminID" value=" ${loginId}">
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
                                    <th scope="row">제목*</th>
                                    <td colspan="3">
                                        <input type="text" name="title" required value="" class="frm_input" size="100">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row">직무*</th>
                                    <td>
                                        <select name="jobLevel1"
										id="jobLevel1" required>
										<option value="" selected disabled="disabled">직무를 선택하세요.</option>
											<c:forEach var="jobItem" items="${jobList}">
												<c:choose>
													<c:when test="${jobItem.jobsLevel == 1}">
														<option value="${jobItem.jobsId}">${jobItem.jobsName}</option>
													</c:when>
												</c:choose>
											</c:forEach>
											
									</select>
									</td>
									
                                    <th scope="row">직무명*</th>
                                    <td>
                                    <select name="jobLevel2" id="jobLevel2" required>
	
									</select>
									</td>
                                </tr>
                                
                                <tr>
                                    <th scope="row">경력조건*</th>
                                    <td>
                                    <select name="careerCondition" required>
											<option value="신입">신입</option>
											<option value="경력">경력</option>
											<option value="무관">무관</option>
									</select>
									</td>
									
                                    <th scope="row">고용형태*</th>
                                    <td>
                                        <select name="employmentType" required>
			<option value="정규직">정규직</option>
			<option value="계약직">계약직</option>
			<option value="무기계약직">무기계약직</option>
			<option value="인턴">인턴</option>
		</select> 
                                    </td>
                                </tr>

                                <tr>
    <th scope="row">노출일*</th>
    <td>
        <label for="post_fr_date" class="sound_only">시작일</label>
        <input type="date" name="postStartDate" required value="" id="post_fr_date" class="frm_input w160" maxlength="10">
        ~
        <label for="post_to_date" class="sound_only">종료일</label>
        <input type="date" name="postEndDate" id="post_to_date" required value="" id="post_to_date" class="frm_input w160">
    </td>
    <th scope="row">지원일*</th>
    <td>
        <label for="app_fr_date" class="sound_only">시작일</label>
        <input type="date" name="applicationStart" required value="" id="app_fr_date" class="frm_input w160" maxlength="10">
        ~
        <label for="app_to_date" class="sound_only">종료일</label>
        <input type="date" name="applicationDeadline" required value="" id="app_to_date" class="frm_input w160">
    </td>
</tr>

                                <tr>
                                    <th scope="row">노출 상태*</th>
                                    <td colspan="3">
                                        <label><input type="radio" name="postStatus" value="O">노출</label> 
		                                <label><input type="radio" name="postStatus" value="X">비노출</label> 
		                                <label><input type="radio" name="postStatus" value="S">임시저장</label> 
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">질문1 *</th>
                                    <td colspan="3"> 
                                        <input type="text" name="question1" required value="" class="frm_input" size="100">
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">질문2</th>
                                    <td colspan="3">
                                        <input type="text" name="question2" value="" class="frm_input" size="100">
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">질문3</th>
                                    <td colspan="3">
                                        <input type="text" name="question3" value="" class="frm_input" size="100">
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row">채용 공고</th>
                                    <td colspan="3">
                                        <div style="height: 1300px;" class="descriptionContainer">
                                            <label>담당업무*</label> <br>
		                                    <textarea name="assignedTask" class="frm_textarea"required  ></textarea>
                                            
                                            <br> <label>자격요건*</label> <br>
                                            <textarea name="requirements"  class="frm_textarea"required></textarea>
                                    
                                            <br> <label>우대사항*</label> <br>
                                            <textarea name="preferentialTreatment"  class="frm_textarea"required></textarea>
                                    
                                            <br> <label>전형안내*</label> <br>
                                            <textarea name="screeningGuide"  class="frm_textarea"required></textarea>
                                    
                                            <br> <label>근무형태*</label> <br>
                                            <textarea name="workForm" class="frm_textarea" required></textarea>
                                    
                                            <br> <label>근무지*</label> <br>
                                            <textarea name="workPlace" class="frm_textarea" required ></textarea>
                                    
                                            <br> <label>근무시간*</label> <br>
                                            <textarea name="workingHours" class="frm_textarea" required ></textarea>
                                    
                                            <br> <label>기타*</label> <br>
                                            <textarea name="etc" class="frm_textarea" required >본 공고는 수시 모집으로 채용완료 시 조기 마감될 수 있습니다.
전형일정 및 결과는 지원서에 등록하신 이메일로 개별 안내드립니다.
입사지원 시 작성하신 정보 및 금번 채용과 관련하여 제출하신 서류에 사실과 다른 내용이 있을 경우 채용 불합격의 사유가 될 수 있습니다.
채용 전형의 모든 과정에 있어 전/현직 직장의 영업 비밀을 침해하지 않도록 유의하여 주시기 바랍니다.
본 채용공고를 통해 입사하시는 경우, 3개월의 수습기간을 적용합니다.
기타 채용 관련 문의사항은 채용 공고 페이지 상단 'FAQs' 탭을 참고하여 문의 부탁드립니다.</textarea>
                                    
                                            <br> <label>보훈 취업지원 대상 및 장애인 서류 제출 안내* </label> <br>
                                            <textarea name="submissionGuide" class="frm_textarea" required >국가 유공자 및 장애인 등 취업보호대상자는 관계법령에 따라 우대합니다.
보훈 및 장애인 지원자에 해당되시는 경우, 입사지원시 [포트폴리오/경력기술서] 첨부 란에 반드시 관련 증명원을 발급하여 첨부 바랍니다.
1.보훈 지원자 : '보훈취업지원대상자 증명서' 발급하여 첨부
2.장애인 지원자 : '장애인증명서 또는 복지카드' 첨부</textarea>

                                        </div>
                                        
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="btn_confirm">
                        <input type="submit" value="등록" class="btn_medium" id="saveBtn">
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

	
    document.getElementById("modiBtn").addEventListener("click", function(event) {
	    // required 속성이 있는 input 요소들을 모두 가져옵니다.
	    var requiredInputs = document.querySelectorAll('[required]');
	    
	    // 모든 required input 요소들을 순회하면서 값이 있는지 확인합니다.
	    var allInputsFilled = true;
	    for (var i = 0; i < requiredInputs.length; i++) {
	        if (!requiredInputs[i].value) { // 값이 없으면
	            allInputsFilled = false;
	            break;
	        }
	    }
	    
	    // 모든 required input 요소들이 값이 있는 경우에만 수정 확인 창을 띄웁니다.
	    if (allInputsFilled) {
	        var confirmation = confirm("수정하겠습니까?");
	        
	        // 확인을 눌렀을 경우
	        if (confirmation) {
	            alert("수정되었습니다.");
	            // 폼 제출
	            return true;
	        } else {
	            // 취소를 눌렀을 경우
	            // 폼 제출 취소
	            event.preventDefault();
	            return false;
	        }
	    } else {
	        alert("필수 입력 항목을 모두 채워주세요."); // 모든 required input 요소가 값을 갖고 있지 않은 경우
	        event.preventDefault(); // 폼 제출 취소
	        return false;
	    }
	});
	
	
        document.addEventListener('DOMContentLoaded', function () {
            var chkAll = document.querySelector('input[name="chkall"]');
            chkAll.addEventListener('change', function () {
                var checkboxes = document.querySelectorAll('input[name="chk[]"]');
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = chkAll.checked;
                });
            });
        });




	
$(document).ready(function(){
	
    
	$("select[name=jobLevel2]").attr("disabled", true);
    
    console.log('file loading');	    
    
    $(jobLevel1).on('change', function () {
    	console.log('select chagned');
    	jobLevel1 = $(this).val();
    	console.log(jobLevel1);
    	
        if (jobLevel1 != "") {
        	
        	
        	
            jQuery.ajax({
                type: "POST",
                url: "/jobnameByPid",
                data: {
                    jobLevel1: jobLevel1
                },
                //datatype: "text",
                datatype: "json",
                success: function (jobNameList) {
                    //var data = JSON.parse(jobNameList); 
                    console.log(jobNameList); // 콘솔에 데이터가 제대로 나오는지 확인
                    $('#jobLevel2').empty(); 	//자식 테이블 한번 지우기
                    $.each(jobNameList, function (index, job) {	 //index, Object
                        console.log(index); // 콘솔에 각각의 키와 값이 제대로 나오는지 확인
                        console.log(job); // 콘솔에 각각의 키와 값이 제대로 나오는지 확인
                        //index: 현재 요소의 인덱스(걍 자리채우기용) //job 현재 요소의 값
                        $('<option></option>').val(job.jobsId).text(job.jobsName).appendTo($('#jobLevel2'));
                    });
                },
                error: function (xhr, status, error) {
                    console.log("ERROR!!!", error); // 에러 로그 확인
                }
            });
            
            $("select[name=jobLevel2]").attr("disabled", false); //코드 한줄한줄 따로 생각할 것
            
            
            
        } else {
            $("select[name=jobLevel2]").attr("disabled", true);
        }

     
    });
});

	    //달력1
	  // 노출일 시작일과 종료일
    var postStartDateInput = document.getElementById("post_fr_date");
    var postEndDateInput = document.getElementById("post_to_date");

    postStartDateInput.addEventListener("change", function() {
        postEndDateInput.min = postStartDateInput.value;
        if (postEndDateInput.value < postStartDateInput.value) {
            postEndDateInput.value = postStartDateInput.value;
        }
    });
    postEndDateInput.min = postStartDateInput.value;

    // 지원일 시작일과 종료일
    var appStartDateInput = document.getElementById("app_fr_date");
    var appEndDateInput = document.getElementById("app_to_date");

    appStartDateInput.addEventListener("change", function() {
        appEndDateInput.min = appStartDateInput.value;
        if (appEndDateInput.value < appStartDateInput.value) {
            appEndDateInput.value = appStartDateInput.value;
        }
    });
    appEndDateInput.min = appStartDateInput.value;

	
	</script>


</body>
</html>

