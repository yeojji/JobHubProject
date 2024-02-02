<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/apply.css" rel="stylesheet">
</head>
<body>
 <!-- 헤더박을부분 -->
    <div class="apply_title">지원서 작성하기</div>
    <div class="container">
        <div class="apply_header">
            <div class="apply_header_title">2024 LINE ADS AI/ML Internship</div>
            <div class="apply_header_button">
                <button class="apply_header_btn">임시저장</button> <!-- a태그로 할지 생각ㄱ-->
                <button class="apply_header_btn">미리보기</button>
                <button class="apply_header_submit">지원하기</button>
            </div>
        </div>
        <div class="apply_main">
            <form action="">
                <div class="apply_content">
                    <p>기본 인적사항 <em>필수</em></p>
                    <div>
                        <div class="ap_mydetail">
                            <input type="text" value="내이름" class="ap_inpt apply_name">
                            <input type="text" value="1999.01.01" class="ap_inpt apply_birth">
                            <input type="text" value="abc@gmail.com" class="ap_inpt apply_email">
                        </div>
                        <div class="ap_mydetail">
                            <select name="gender" class="ap_inpt apply_gender">
                                <option value="" disabled selected hidden>성별</option>
                                <option value="남성">남성</option>
                                <option value="여성">여성</option>
                            </select>
                            <input type="text" value="010-0000-0000" class="ap_inpt apply_tel">
                            <select name="howfound" class="ap_inpt apply_howfound">
                                <option value="" disabled selected hidden>지원경로(공고를 처음 알게 된 경로)</option>
                                <option value="사람인">사람인</option>
                                <option value="SNS">SNS광고</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="apply_content">
                    <p>경력사항 <em>필수</em></p>
                    <div class="ap_mydetail">
                        <input type="text" placeholder="회사명" class="ap_inpt2 apply_cname">
                        <input type="text" placeholder="부서명" class="ap_inpt2 apply_dname">
                        <input type="text" placeholder="입사일" class="ap_inpt2 apply_date">
                        <span class="from_to">~</span>
                        <input type="text" placeholder="퇴사일" class="ap_inpt2 apply_date">
                        <input type="text" placeholder="담당업무" class="ap_inpt2 apply_duty">
                        <select name="duty" class="ap_inpt2 apply_position">
                            <option value="" disabled selected hidden>고용형태</option>
                            <option value="정규">정규</option>
                            <option value="계약">계약</option>
                            <option value="계약">무기계약</option>
                            <option value="계약">인턴</option>
                        </select>
                        <button class="ap_inpt2 apply_careerbtn">완료</button>
                    </div>
                    <div>
                        <textarea name="" id="" cols="100" rows="14" placeholder="상세업무내용" class="text_area"></textarea>
                    </div>
                    <div class="cr_noti">
                        <ul>
                            <li>경력은 최종경력에서부터 최초경력 순으로 기재해주시기 바랍니다.</li>
                            <li>
                                <strong>해당 항목을 모두 기입한 후, 완료버튼을 누르면 다음 항목이 활성화됩니다.</strong>
                            </li>
                            <li>입사일/퇴사일은 "YYYY.MM.DD" 순서로 입력해 주세요. (예 : 1999.01.01)</li>
                            <li>아르바이트 경력은 기재하지 않습니다.</li>
                            <li>최종 회사에 재직중이면, 퇴사일은 비워 두셔도 됩니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="apply_content">
                    <p>학력사항 <em>필수</em></p>
                    <div class="ap_mydetail">
                        <select name="education" class="ap_inpt2 apply_edu">
                            <option value="" disabled selected hidden>구분</option>
                            <option value="고등학교">고등학교</option>
                            <option value="전문대학">전문대학</option>
                            <option value="대학교">대학교</option>
                            <option value="대학원(석사)">대학원(석사)</option>
                            <option value="대학원(박사)">대학원(박사)</option>
                        </select>
                        <input type="text" placeholder="학교명" class="ap_inpt2 apply_shcname">
                        <input type="text" placeholder="입학년월" class="ap_inpt2 apply_date2">
                        <span class="from_to">~</span>
                        <input type="text" placeholder="졸업년월" class="ap_inpt2 apply_date2">
                        <button class="ap_inpt2 apply_careerbtn">완료</button>
                    </div>
                    <div class="cr_noti">
                        <ul>
                            <li>학력은 최종학력에서부터 고등학교 순으로, 역순으로 기재해주시기 바랍니다.</li>
                            <li>
                                <strong>해당 항목을 모두 기입한 후, 완료버튼을 누르면 다음 항목이 활성화됩니다.</strong>
                            </li>
                            <li>입학년월/졸업년월은 YYYY.MM 순서로 입력해 주세요. (예: 1999.01)</li>
                            <li>복수전공 및 이중전공을 이수하신 분들은 부전공란에 입력해주세요.</li>
                        </ul>
                    </div>
                </div>
                <div class="apply_content">
                    <p>자격/어학 사항</p>
                    <div class="ap_mydetail">
                        <select name="education" class="ap_inpt2 apply_certi">
                            <option value="" disabled selected hidden>구분</option>
                            <option value="자격">자격</option>
                            <option value="어학">어학</option>
                        </select>
                        <input type="text" placeholder="자격/면허종류" class="ap_inpt2 apply_type">
                        <input type="text" placeholder="등급" class="ap_inpt2 apply_level">
                        <input type="text" placeholder="취득/응시일" class="ap_inpt2 apply_cdate">
                        <input type="text" placeholder="발급기관" class="ap_inpt2 apply_auth">
                        <button class="ap_inpt2 apply_careerbtn">완료</button>
                    </div>
                </div>
                <div class="apply_content"> <!--여기 for문을 따로 또 줘야되나?-->
                    <p>직무질문 <em>필수</em></p>
                    <div class="ap_mydetail">
                        <label class="apply_label">자신을 자유롭게 소개해 주세요.</label>
                        <div>
                            <textarea name="" id="" cols="100" rows="14" class="text_area"></textarea>
                        </div>
                    </div>
                </div>
                <div class="apply_content"> <!--여기 for문을 따로 또 줘야되나?-->
                    <p>첨부자료 <em>필수</em></p>
                    <label class="apply_label">* 타사의 영업비밀에 해당하거나, 이에 해당될 수 있는 것으로 오해할 수 있는 자료는 경력기술서 또는 포트폴리오에 포함하여서는 안됩니다.</label>
                    <div class="ap_mydetail">
                        <label class="apply_label">포트폴리오 혹은 경력기술서(200MB까지 가능, 대표적인 프로젝트 결과물 PPT, 초과시 작업물 확인 가능한 URL을 PPT에 작성하여 제출)</label>
                        <div class="filebox">
                            <input class="upload-name" value="첨부파일" placeholder="첨부파일">
                            <label for="file">파일찾기</label> 
                            <input type="file" id="file">
                        </div>
                    </div>
                </div>
                <div class="apply_content" id="apply_inquire">
                    <div>
                        <p>병역사항 <em>필수</em></p>
                        <select name="military" class="ap_inpt2 apply_mili">
                            <option value="" disabled selected hidden>병역구분</option>
                            <option value="만기제대">만기제대</option>
                            <option value="제대 기타">제대 기타</option>
                            <option value="복무중">복무중</option>
                            <option value="병역특례복무완료">병역특례복무완료</option>
                            <option value="병역특례 복무 중(전문)">병역특례 복무 중(전문)</option>
                            <option value="병역특례 복무 중(산업)">병역특례 복무 중(산업)</option>
                            <option value="군미필">군미필</option>
                            <option value="면제">면제</option>
                            <option value="해당없음">해당없음</option>
                        </select>
                    </div>
                    <div>
                        <p>보훈대상 여부 <em>필수</em></p>
                        <input type="radio" name="veternas" value="대상">대상
                        <input type="radio" name="veternas" value="비대상">비대상
                    </div>
                    <div>
                        <p>장애사항 <em>필수</em></p>
                        <select name="disorder" class="ap_inpt2 apply_disorder">
                            <option value="해당없음">해당없음</option>
                            <option value="일반">일반</option>
                            <option value="산재">산재</option>
                            <option value="보훈">보훈</option>
                        </select>
                    </div>
                </div>
                <div class="apply_footer_button">
                    <button class="apply_header_btn btn_size">임시저장</button> <!-- a태그로 할지 생각ㄱ-->
                    <button class="apply_header_btn btn_size">미리보기</button>
                    <button class="apply_header_submit btn_size">지원하기</button>
                </div>
            </form>
        </div>
    </div>
    <!-- 푸터박을부분 -->
</body>
</html>