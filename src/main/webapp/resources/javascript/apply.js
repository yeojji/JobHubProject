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
                    if ($(document).on("click", "#edu_remove", function () {
                        $("#edu_info").remove();
                    })) {
                    }
                }
                // } else if(result == '전문대학' || result == '대학교' || result == '대학원(석사)' || result == '대학원(박사)'){
                //     let eduSortation = $("#eduSortation").val();
                //     let schoolName = $("#uniName").val();
                //     let major = $("#uni_major").val();
                //     let minor = $("#uni_minor").val();
                //     let grade = $("#uni_grade").val();
                //     let totalScore = $("#uni_total").val();
                //     let admission = $("#uni_admis").val();
                //     let graduation = $("#uni_grad").val();
                //     let graduationStatus = $("#graduationStatus").val();
                //     let eduContent = `
                //     <div id="edu_info">
                //     <div id="edu_school">${schoolName}</div>
                //     <div id="edu_major">${major}</div>
                //     <div id="edu_minor">${minor}</div>
                //     <div id="edu_grade">${grade}/${totalScore}</div>
                //     <div id="edu_date">${admission}~${graduation}</div>
                //     <div id="edu_state">${graduationStatus}</div>
                //     <div id="edu_remove">삭제</div>
                //     <input type="hidden" name="eduSortation" value=${eduSortation}>
                //     <input type="hidden" name="schoolName" value=${schoolName}>
                //     <input type="hidden" name="admission" value=${admission}>
                //     <input type="hidden" name="graduation" value=${graduation}>
                //     <input type="hidden" name="major" value=${major}>
                //     <input type="hidden" name="minor" value=${minor}>
                //     <input type="hidden" name="grade" value=${grade}>
                //     <input type="hidden" name="totalScore" value=${totalScore}>
                //     <input type="hidden" name="graduationStatus" value=${graduationStatus}>
                //     </div>
                // `;
                //     console.log(schoolName);
                //     if (schoolName == "") {
                //         alert('학교명을 입력해주세요')
                //     } else if (major == "") {
                //         alert('전공을 입력해주세요')
                //     } else if (grade == "") {
                //         alert('평점을 입력해주세요')
                //     } else if (totalScore == "") {
                //         alert('총점을 입력해주세요')
                //     } else if (admission == "") {
                //         alert('입학년도를 입력해주세요')
                //     } else if (graduation == "") {
                //         alert('졸업년도를 입력해주세요')
                //     } else {
                //         $('.eduinput').show();
                //         $('.eduinput').css({ "display": "flex" });
                //         $('.eduinput').append(eduContent);
                //     }
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