/**
 * 
 */
 
$(document).ready(function () {
    $('.apply_edu').change(function () {
        var result = $('.apply_edu option:selected').val();
        if (result == '전문대학') {
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if(result == '대학교'){
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if(result == '대학원(석사)'){
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else if(result == '대학원(박사)'){
            $('.apply_edu_university').show();
            $('.apply_edu_highschool').hide();
        } else{
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
        } else if(result == '자격'){
            $('.apply_language_skill').hide();
            $('.apply_qualification').show();
        } else{
            $('.apply_language_skill').hide();
            $('.apply_qualification').show();
        }
    });
});