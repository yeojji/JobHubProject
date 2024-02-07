/**
 * 
 */

$(document).ready(function () {
    $('.apply_edu').change(function () {
        var result = $('.apply_edu option:selected').val();
        if (result == '전문대학') {
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if (result == '대학교') {
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if (result == '대학원(석사)') {
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if (result == '대학원(박사)') {
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else {
            $('.apply_edu_university').hide();
            $('.apply_edu_highschool').show();
        }
    });
});


$(document).ready(function () {
    $('.apply_certi').change(function () {
        var result = $('.apply_certi option:selected').val();
        if (result == '어학') {
            $('.apply_language_skill').show();
            $('.apply_qualification').hide();
        } else if (result == '자격') {
            $('.apply_language_skill').hide();
            $('.apply_qualification').show();
        } else {
            $('.apply_language_skill').hide();
            $('.apply_qualification').show();
        }
    });
});

$(document).ready(function () {
    $(document).on("click", "button[name='edu']", function () {
        var result = $("#eduSortation").val();
        if (result == null) {
            alert('학력구분을 선택해주세요');
        } else {

            if (result == '고등학교') {
                let schoolName = $("#highName").val();
                let admission = $("#high_admis").val();
                let graduation = $("#high_grad").val();
                let eduSortation = $("#eduSortation").val();
                let eduContent = `
                <div id="edu_info">
                <div id="edu_school">${schoolName}</div>
                <div id="edu_date">${admission}~${graduation}</div>
                <div id="edu_state">졸업</div>
                <button type="button" id="edu_remove">삭제</button>
                <input type="hidden" name="eduSortation" value=${eduSortation}>
                <input type="hidden" name="schoolName" value=${schoolName}>
                <input type="hidden" name="admission" value=${admission}>
                <input type="hidden" name="graduation" value=${graduation}>
                <input type="hidden" name="major" value="null">
                <input type="hidden" name="minor" value="null">
                <input type="hidden" name="grade" value="null">
                <input type="hidden" name="totalScore" value="null">
                <input type="hidden" name="graduationStatus" value="졸업">
                </div>
            `;
                if (schoolName == "") {
                    alert('학교명을 입력해주세요')
                } else if (admission == "") {
                    alert('입학년도를 입력해주세요')
                } else if (graduation == "") {
                    alert('졸업년도를 입력해주세요')
                } else {

                    $('.eduinput').show();
                    $('.eduinput').css({ "display": "flex" });
                    $('.eduinput').append(eduContent);
                    $(document).on("click", "#edu_remove", function () {
                        $(this).closest("#edu_info").remove();
                    });
                }
            } else if (result == '전문대학' || result == '대학교' || result == '대학원(석사)' || result == '대학원(박사)') {
                let eduSortation = $("#eduSortation").val();
                let schoolName = $("#uniName").val();
                let major = $("#uni_major").val();
                let minor = $("#uni_minor").val();
                let minorValue = minor ? minor : 'null';
                let grade = $("#uni_grade").val();
                let totalScore = $("#uni_total").val();
                let admission = $("#uni_admis").val();
                let graduation = $("#uni_grad").val();
                let graduationStatus = $("#graduationStatus").val();
                let eduContent = `
                    <div id="edu_info">
                    <div id="edu_school">${schoolName}</div>
                    <div id="edu_major">${major}</div>
                    <div id="edu_minor">${minor}</div>
                    <div id="edu_grade">${grade}/${totalScore}</div>
                    <div id="edu_date">${admission}~${graduation}</div>
                    <div id="edu_state">${graduationStatus}</div>
                    <button type="button" id="edu_remove">삭제</button>
                    <input type="hidden" name="eduSortation" value=${eduSortation}>
                    <input type="hidden" name="schoolName" value=${schoolName}>
                    <input type="hidden" name="admission" value=${admission}>
                    <input type="hidden" name="graduation" value=${graduation}>
                    <input type="hidden" name="major" value=${major}>
                    <input type="hidden" name="minor" value=${minorValue}>
                    <input type="hidden" name="grade" value=${grade}>
                    <input type="hidden" name="totalScore" value=${totalScore}>
                    <input type="hidden" name="graduationStatus" value=${graduationStatus}>
                    </div>
                `;
                console.log(schoolName);
                if (schoolName == "") {
                    alert('학교명을 입력해주세요')
                } else if (major == "") {
                    alert('전공을 입력해주세요')
                } else if (grade == "") {
                    alert('평점을 입력해주세요')
                } else if (totalScore == "") {
                    alert('총점을 입력해주세요')
                } else if (admission == "") {
                    alert('입학년도를 입력해주세요')
                } else if (graduation == "") {
                    alert('졸업년도를 입력해주세요')
                } else {
                    $('.eduinput').show();
                    $('.eduinput').css({ "display": "flex" });
                    $('.eduinput').append(eduContent);
                    $(document).on("click", "#edu_remove", function () {
                        $(this).closest("#edu_info").remove();
                    });
                }
            } else {
                alert('잘못된 접근입니다.');
            }
        }
    });
});

$(document).ready(function () {
    $(document).on("click", "#ap_submit", function () {
        let form = $("#apply_form");
        form.action = "";
        form.submit();
    })
})




$(document).ready(function () {
    $(document).on("click", "button[name='career']", function () {
        let companyName = $("#companyName").val();
        let departmentName = $("#departmentName").val();
        let departmentNameVal = departmentName ? departmentName : 'null';
        let joinDate = $("#joinDate").val();
        let resignationDate = $("#resignationDate").val();
        let resignationDateVal = resignationDate ? resignationDate : 'null';
        let duty = $("#duty").val();
        let position = $("#position option:selected").val();
        let careerdetail = $("#careerdetail").val();
        let careerContent = `
                <div id="car_info">
                <div id="car_companyName">${companyName}</div>
                <div id="car_departmentName">${departmentName}</div>
                <div id="car_date">${joinDate}~${resignationDate}</div>
                <div id="car_duty">${duty}</div>
                <div id="car_position">${position}</div>
                <button type="button" id="car_remove">삭제</button>
                <input type="hidden" name="companyName" value=${companyName}>
                <input type="hidden" name="departmentName" value=${departmentNameVal}>
                <input type="hidden" name="joinDate" value=${joinDate}>
                <input type="hidden" name="resignationDate" value=${resignationDateVal}>
                <input type="hidden" name="duty" value=${duty}>
                <input type="hidden" name="position" value=${position}>
                <input type="hidden" name="detailWork" value=${careerdetail}>
                </div>
                `;
        
        if(companyName == ""){
            alert('회사명을 입력해주세요')
        }else if(joinDate == ""){
            alert('입사일을 입력해주세요')
        }else if(duty == ""){
            alert('담당업무를 입력해주세요')
        }else if(position == ""){
            alert('고용형태를 선택해주세요')
        }else if(careerdetail == ""){
            alert('상세 업무내용을 입력해주세요')
        }else{
            $('.careerinput').show();
            $('.careerinput').css({ "display": "flex" });
            $('.careerinput').append(careerContent);
            $(document).on("click", "#car_remove", function () {
                $(this).closest("#car_info").remove();
            });

        }
    })
})

$(document).ready(function(){
    $(document).on("click", "button[name='cert']", function () {
        var result = $("#certSortation").val();
        if(result == null){
            alert('자격/어학 구분을 선택해주세요')
        }else{
            
            let certSortation = $("#certSortation").val();
            let certType = $("#certType").val();

            let language = $("#language").val();
            let test = $("#test").val();
            let languageGrade = $("#languageGrade").val();
            
            if(result == '자격'){
                let certLevel = $("#qual_certLevel").val();
                let acquisition = $("#qual_acquisition").val();
                let lssuingAuthority = $("#qual_lssuingAuthority").val();

                let certContent = `
                    <div id="cert_info">
                        <div id="cert_type">${certType}</div>
                        <div id="cert_level">${certLevel}</div>
                        <div id="cert_acquisition">${acquisition}</div>
                        <div id="cert_lssuingAuthority">${lssuingAuthority}</div>
                        <button type="button" id="cert_remove">삭제</button>
                        <input type="hidden" name="certSortation" value=${certSortation}>
                        <input type="hidden" name="certType" value=${certType}>
                        <input type="hidden" name="certLevel" value=${certLevel}>
                        <input type="hidden" name="acquisition" value=${acquisition}>
                        <input type="hidden" name="lssuingAuthority" value=${lssuingAuthority}>
                        <input type="hidden" name="language" value="null">
                        <input type="hidden" name="test" value="null">
                        <input type="hidden" name="languageGrade" value="null">
                    </div>
                `;

                if(certType == ""){
                    alert('자격/면허종류를 입력해주세요');
                }else if(certLevel == ""){
                    alert('등급을 입력해주세요');
                }else if(acquisition == ""){
                    alert('취득/응시일을 입력해주세요');
                }else if(lssuingAuthority == ""){
                    alert('발급기관을 입력해주세요');
                }else{
                    $('.certinput').show();
                    $('.certinput').css({ "display": "flex" });
                    $('.certinput').append(certContent);
                    $(document).on("click", "#cert_remove", function () {
                        $(this).closest("#cert_info").remove();
                    });
                }
                
            }else if(result == '어학'){

                let certLevel = $("#lang_certLevel").val();
                let acquisition = $("#lang_acquisition").val();
                let lssuingAuthority = $("#lang_lssuingAuthority").val();

                let certContent = `
                <div id="cert_info">
                    <div id="cert_language">${language}</div>
                    <div id="cert_test">${test}</div>
                    <div id="cert_level">${certLevel}</div>
                    <div id="cert_grade">${languageGrade}</div>
                    <div id="cert_acquisition">${acquisition}</div>
                    <div id="cert_lssuingAuthority">${lssuingAuthority}</div>
                    <button type="button" id="cert_remove">삭제</button>
                    <input type="hidden" name="certSortation" value=${certSortation}>
                    <input type="hidden" name="certType" value=${certType}>
                    <input type="hidden" name="certLevel" value=${certLevel}>
                    <input type="hidden" name="acquisition" value=${acquisition}>
                    <input type="hidden" name="lssuingAuthority" value=${lssuingAuthority}>
                    <input type="hidden" name="language" value=${language}>
                    <input type="hidden" name="test" value=${test}>
                    <input type="hidden" name="languageGrade" value=${languageGrade}>
                </div>
                `;
                if(language == ""){
                    alert('언어를 입력해주세요');
                }else if(test == ""){
                    alert('시험을 입력해주세요');
                }else if(acquisition == ""){
                    alert('취득/응시일을 입력해주세요');
                }else if(lssuingAuthority == ""){
                    alert('발급기관을 입력해주세요');
                }else{
                    $('.certinput').show();
                    $('.certinput').css({ "display": "flex" });
                    $('.certinput').append(certContent);
                    $(document).on("click", "#cert_remove", function () {
                        $(this).closest("#cert_info").remove();
                    });
                }

            }else{
                alert('잘못된 접근입니다')
            }
        }
    })
})