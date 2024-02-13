<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/admin/layout/header.jsp" %>
	<div id="snb">
		<dl>
			<dt class="g10">
				<i class="fa-solid fa-people-group"></i>회원관리
			</dt>
			<dd class="g10">
				<a href="">회원정보 조회<em>2</em></a>
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
			<dd class="g10 active">
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
				<form action="/admin/resumeDetail" id="modify_form" method="post">
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
								<!-- 이력서 수정 결과 메시지 표시 -->
								<c:if test="${not empty errorMessage}">
									<tr class="error-message">
										<th scope="row">에러메시지</th>
										<td colspan="3">${errorMessage}</td>
									</tr>
								</c:if>
								<tr class="mb_adm_fld">
									<th scope="row">지원한 공고</th>
									<td colspan="3">${resume.title}</td>
								</tr>
								<tr>
									<th scope="row">직무명</th>
									<td>${resume.jobsName}</td>
									<th scope="row">경력조건</th>
									<td>${resume.careerCondition}</td>

								</tr>
								<tr>
									<th scope="row">이름</th>
									<td>${resume.name}</td>
									<th scope="row">이메일</th>
									<td><input type="text" name="email"
										value="${resume.email}" class="frm_input" size="30"></td>
								</tr>

								<tr>
									<th scope="row">생년월일</th>
									<td><input type="text" name="birth" id="birthInput"
										value="${resume.birth}" class="frm_input"
										oninput="formatBirthDate()" maxlength="8"></td>
									<th scope="row">나이</th>
									<td>${resume.age}</td>
								</tr>
								<tr>
									<th scope="row">성별</th>
									<td>${resume.gender}</td>
									<th scope="row">휴대전화</th>
									<td><input type="text" name="phone" id="phoneInput"
										maxlength="13" value="${resume.phone}" class="frm_input"
										oninput="formatPhoneNumber()"> <span class="tooltip"
										id="phoneTooltip" style="display: none;">휴대전화는 010으로
											입력해 주세요.</span></td>
								</tr>
								<tr>
									<th scope="row">최종학력</th>
									<td>${resume.sortation}</td>
									<th scope="row">경력사항</th>
									<td>${resume.career}</td>
								</tr>
								<tr>
									<th scope="row">장애사항</th>
									<td>${resume.disorderStatus}</td>
									<th scope="row">병역사항</th>
									<td>${resume.militaryServiceMatters}</td>
								</tr>
								<tr>
									<th scope="row">보훈대상여부</th>
									<td>${resume.veteransTargetStatus}</td>
									<th scope="row">이력서 제출일자</th>
									<td>${resume.revisionDate}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<h3 class="anc_tit mart30">추가정보</h3>
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
									<th scope="row">아이디</th>
									<td>${resume.userId}</td>
									<th scope="row">비밀번호</th>
									<td><input type="password" name="password"
										value="${resume.password}" class="frm_input"></td>
								</tr>
								<tr>
									<th scope="row">가입경로</th>
									<td>${resume.supportPath}</td>
									<th scope="row">회원가입일</th>
									<td>${resume.createdDate}</td>
								</tr>
								<tr class="mb_adm_fld">
									<th scope="row">지원한 공고</th>
									<td colspan="3">${resume.title}</td>
								</tr>
								<tr>
									<th scope="row">${resume.question1}</th>
									<td colspan="3">${resume.content1}</td>
								</tr>
								<tr>
									<th scope="row">${resume.question2}</th>
									<td colspan="3">${resume.content2}</td>
								</tr>
								<tr>
									<th scope="row">${resume.question3}</th>
									<td colspan="3">${resume.content3}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<h3 class="anc_tit mart30">지원 상태</h3>
					<div class="tbl_frm01">
						<table class="tablef">
							<colgroup>
								<col class="w130">
								<col class="w180">
								<col class="w130">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">합격메일 발송</th>
									<td><a id="sendLink" href="#" onclick="sendMail('${resume.email}');" class="btn_small grey marl10">합격메일 발송하기</a></td>
									<th scope="row">상태 변경</th>
									<td>
									<input type="radio" name="status" value="지원완료" id="status1" checked="checked"> <label for="status1">지원완료</label>
									<input type="radio" name="status" value="서류심사중" id="status2" > <label for="status2">서류심사중</label>
									<input type="radio" name="status" value="불합격" id="status3" > <label for="status3">불합격</label>
									<input type="radio" name="status" value="서류합격" id="status4" > <label for="status4">서류합격</label>
									<input type="radio" name="status" value="면접예정" id="status5" > <label for="status5">면접예정</label>
									<input type="radio" name="status" value="채용완료" id="status6" > <label for="status6">채용완료</label>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="저장" class="btn_medium" accesskey="s">
						<button type="button" class="btn_medium bx-white"
							onclick="window.close();">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- //검색결과 리스트 -->

	<script>
		// 생년월일 자동 슬래시
		function formatBirthDate() {
			const birthInput = document.getElementById('birthInput');

			// 입력된 생년월일에서 슬래시 제거
			let birthDate = birthInput.value.replace(/\//g, '');

			// 생년월일에 슬래시 추가
			if (birthDate.length == 6) {
				birthDate = birthDate.replace(/^(\d{2})(\d{2})(\d{2})$/,
						"$1/$2/$3");
			}

			// 입력된 값으로 변경
			birthInput.value = birthDate;
		}

		//휴대폰번호 자동 하이픈
		function formatPhoneNumber() {
			const phoneInput = document.getElementById('phoneInput');
			const phoneTooltip = document.getElementById('phoneTooltip');

			// 입력된 휴대폰번호에서 하이픈 제거
			const phoneNumber = phoneInput.value.replace(/-/g, '');

			// 휴대폰번호가 010으로 시작하는지 확인
			if (phoneNumber.startsWith('010')) {
				// 010으로 시작하면 하이픈을 추가
				const formattedPhoneNumber = phoneNumber.replace(
						/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(
						/\-{1,2}$/g, "");
				phoneInput.value = formattedPhoneNumber;
				// 툴팁 숨김
				phoneTooltip.style.display = 'none';
			} else {
				// 툴팁 표시
				phoneTooltip.style.display = 'inline';
			}
		}
		
		
		function sendMail(email) {
		    // 링크 클릭 후 바로 이동하지 않도록 막기
		    event.preventDefault();

		    // 링크 비활성화
		    var sendLink = document.getElementById('sendLink');
		    sendLink.classList.add('disabled');

		    // AJAX를 사용하여 서버에 이메일 전송 요청
		    $.ajax({
		        type: 'POST',
		        url: '/admin/sendMail',  // 업데이트된 엔드포인트
		        data: { email: email },
		        success: function (response) {
		            // 성공 시
		            console.log('이메일 발송 성공');
		            // 여기에서 필요한 추가 작업 수행
		        },
		        error: function (error) {
		            // 실패 시 
		            console.error('이메일 발송 실패');
		        },
		        complete: function () {
		            // AJAX 완료 후 링크 재활성화
		            sendLink.classList.remove('disabled');
		        }
		    });
		}
	</script>
<%@include file="/WEB-INF/views/admin/layout/footer.jsp" %>