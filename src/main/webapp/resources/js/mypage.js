	const modal1 = document.querySelector('.user_info_modify_modal');
    const modalbody1 = document.querySelector('.user_info_modify_modal_body');
    const openModify_modal1 = document.querySelector('.member_modify_text1');
    
    const modal2 = document.querySelector('.user_pw_modify_modal');
    const modalbody2 = document.querySelector('.user_pw_modify_modal_body');
    const openModify_modal2 = document.querySelector('.member_modify_text2');
    
    const modal3 = document.querySelector('.user_delete_modal');
    const modalbody3 = document.querySelector('.user_delete_modal_body');
    const openModify_modal3 = document.querySelector('.member_modify_text3'); 
    
    const modal4 = document.querySelector('.user_show_resume_modal');
    const modalbody4 = document.querySelector('.user_show_resume_modal_body');
    const openModify_modal4 = document.querySelector('.show_resume');

    const modal5 = document.querySelector('.user_faq_modal');
    const modalbody5 = document.querySelector('.user_faq_modal_body');
    const openModify_modal5 = document.querySelector('#go_user_faq');



    const close1 = document.querySelector('.modal_close_btn');
    const close2 = document.querySelector('.modal_close_btn2');
    const close3 = document.querySelector('.modal_close_btn3');
    const close4 = document.querySelector('.show_resume_modal_close_btn');
    const close5 = document.querySelector('.show_user_faq_modal_close_btn');
    
    openModify_modal1.addEventListener("click",()=>{
        modal1.style.display = "flex";
        document.body.style.overflowY = "hidden";
        
    })

    openModify_modal2.addEventListener("click",()=>{
        modal2.style.display = "flex";
        document.body.style.overflowY = "hidden";
    })
    
     openModify_modal3.addEventListener("click",()=>{
        modal3.style.display = "flex";
        document.body.style.overflowY = "hidden";
    })
    
    openModify_modal4.addEventListener("click",()=>{
        modal4.style.display = "flex";
        document.body.style.overflowY = "hidden";
    })

    openModify_modal5.addEventListener("click",()=>{
        modal5.style.display = "flex";
        document.body.style.overflowY = "hidden";
    })

    close1.addEventListener("click",()=>{
        modal1.style.display ="none";
        document.body.style.overflowY = "auto";
        window.location.reload();
    })
    
    close2.addEventListener("click",()=>{
        modal2.style.display = "none";
        document.body.style.overflowY = "auto";
        window.location.reload();
    })
    
    close3.addEventListener("click",()=>{
        modal3.style.display = "none";
        document.body.style.overflowY = "auto";
        window.location.reload();
    })

    close4.addEventListener("click",()=>{
        modal4.style.display = "none";
        document.body.style.overflowY = "auto";
        window.location.reload();
    })
    
    close5.addEventListener("click",()=>{
        modal5.style.display = "none";
        document.body.style.overflowY = "auto";
        window.location.reload();
    })
    
    document.querySelector('.close_btn').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal1.style.display ="none";
            window.location.reload();
        }
        
    })
    
     document.querySelector('.close_modal_pw').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal2.style.display ="none";
            window.location.reload();
        }
        
    })
    
    document.querySelector('.close_modal_delete').addEventListener("click",()=>{
        if(confirm('취소하시겠습니까?')){
            modal3.style.display ="none";
            window.location.reload();
        }
        
    })
    
    
    document.querySelector('.submit_btn').addEventListener('click',function(){
        if(confirm('회원정보를 수정하시겠습니까?')){
            document.querySelector('.modify_form').submit();
            alert('수정되었습니다');
        }
    });
    
    var currentPw = document.getElementById('currentPw').value;
	console.log(currentPw);
    
    function checkPw() {
    	var inputPw = document.getElementById('pw').value;
    	var error_pw = document.getElementById('error_msg_pw');
    	
    	if(inputPw.trim() === ""){
            return;
    	}	
	    	if(inputPw !== currentPw){
	    		
	    		error_pw.innerHTML = '불일치';
	    		error_pw.style.color = 'red';
	            
	    	}else{
	    		error_pw.innerHTML = '일치';
	    		error_pw.style.color = 'green';
	    	}
   
    	
    }
    
    const onInputPhone = (target) => {
        let number = target.value.replace(/[^0-9]/g, '');
        let phoneNum = '';
		
        if (number.length >= 4) {
        
        	if(number.startsWith('010') || number.startsWith('011') || number.startsWith('017')){
        		
        	
	            if (number.length >= 11) {
	                phoneNum = number.substring(0, 3) + '-' + number.substring(3, 7) + '-' + number.substring(7, 11);
	            } else {
	                phoneNum = number.substring(0, 3) + '-' + number.substring(3, 6);
	                if (number.length > 6) {
	                    phoneNum += '-' + number.substring(6);
	                }
	            }
            
        	}else{
        		alert('잘못된 형식입니다.');
        		return;
        	}
        } else {
            phoneNum = number;
        }

        target.value = phoneNum;

        let warningPhones = document.querySelectorAll('.warningPhone');
        let inputPhone = document.getElementById('signup_input_phone');
        let phone = inputPhone.value.trim();
        
        if (phone === '') {
            warningPhones.forEach(warningPhone => {
                warningPhone.style.display = "block";
            });
            inputPhone.style.borderColor = "red";
        } else {
            warningPhones.forEach(warningPhone => {
                warningPhone.style.display = "none";
            });
            inputPhone.style.borderColor = "";
        }
    }
    
    const onInputBirth = () => {
        console.log('생일 입력');
        let date = document.querySelector("#modify_info_birth");
        let warning = document.querySelector(".warning");

        let val = date.value.replace(/\D/g, "");
        let leng = val.length;
        let result = '';

        let inputBirth = document.getElementById('modify_info_birth');

        if (leng < 5) {
            result = val;
        } else if (leng < 7) {
            result += val.substring(0, 4);
            result += "-";
            result += val.substring(4);
        } else {
            result += val.substring(0, 4);
            result += "-";
            result += val.substring(4, 6);
            result += "-";
            result += val.substring(6, 8);
        }

        if (result.length === 10) {
            if (!checkValidDate(result)) {
                warning.style.display = "block";
                inputBirth.style.borderColor = "red";
            } else {
                warning.style.display = "none";
                inputBirth.style.borderColor = "";
            }
        }

        date.value = result;

        let warningBirths = document.querySelectorAll('.warningBirth');
        let birth = inputBirth.value.trim();

        if (birth === '') {
            warningBirths.forEach(warningBirth => {
                warningBirth.style.display = "block";
            });
            inputBirth.style.borderColor = "red";
            warning.style.display = "none";
        } else {
            warningBirths.forEach(warningBirth => {
                warningBirth.style.display = "none";
            });
            inputBirth.style.borderColor = "";
        }
    }

    
    
    function pwCheck() {
        let pass1 = document.getElementById('pw2').value;
        let pass2 = document.getElementById('pw3').value;
        let error_msg = document.getElementById('error_msg');

        if (pass1 !== "" || pass2 !== "") {
           
                if (pass1 === pass2) {
                    error_msg.innerHTML = '일치';
                    document.getElementById('pw3').style.borderColor = 'green';
                    error_msg.style.color = 'green';
                } else {
                    error_msg.innerHTML = '불일치';
                    document.getElementById('pw3').style.borderColor = 'red';
                    error_msg.style.color = 'red';
                }
           
        }
    }
    
    function removeUser(){
    	var currentPw = document.getElementById('userPw').value;
    	var inputPw = document.getElementById('inputPw').value;
    	
    	if(inputPw !== ""){
    		if(inputPw === currentPw){
	    		error_pw_msg.innerHTML = '일치';
		    	error_pw_msg.style.color = 'green';
            
	    	}else{
	    		error_pw_msg.innerHTML = '불일치';
    			error_pw_msg.style.color = 'red';
	    		
	    	}
    	}
    	
    	
    }
    
    
    document.querySelector('.submitBtn').addEventListener('click',function(){
    	let inputPw = document.getElementById('pw').value;
    	let currentPw = document.getElementById('currentPw').value;
    	let pass1 = document.getElementById('pw2').value;
        let pass2 = document.getElementById('pw3').value;
        if(confirm('비밀번호를 수정하시겠습니까?')){
        	
        	if(!(pass1.length >= 8 && /(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-])/.test(pass1)) || 
        	!(pass2.length >= 8 && /(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-])/.test(pass2))	){
        		alert('비밀번호는 비밀번호는 최소 8자 이상이어야 하며, 특수문자를 적어도 하나 이상 포함해야 합니다.');
        		return;
        	}
        	if(inputPw !== currentPw){
        		alert('현재 비밀번호가 다릅니다.');
        		return;
        	}
        	if(pass1 !== pass2){
        		alert('새로운 비밀번호가 다릅니다. 다시 수정해주세요');
    			return;
        	}
        	if(pass1 === null || pass2 === null || pass1 === "" || pass2 === ""){
        		alert('새로운 비밀번호를 입력해주세요');
        		return;
        	}
        		document.querySelector('.modify_pw_form').submit();
        		alert('수정되었습니다');
        		
        	if(alert('다시 로그인 해 주세요')){
        		return;
        	}
        }
    });
   
     
    
	document.querySelector('#submitBtn2').addEventListener('click',function(){
		let test1 = document.getElementById('userPw').value;
    	let test2 = document.getElementById('inputPw').value;
		if(confirm('회원님의 정보를 삭제하시겠습니까?')){
			
			if(test2 === null || test2 === ""){
				alert('현재 비밀번호를 입력 해 주세요');
				return;
			}
			
			if(test1 !== test2){
				alert('비밀번호가 다릅니다.');
				return;
			}
			document.querySelector('.delete_user_form').submit();
			alert('삭제되었습니다.');
		}
	})
	
   document.querySelector('#faqBtn').addEventListener('click',function(){
	 let title =  document.querySelector('#faq_title');
     let content = document.querySelector('#faq_content');
     let email = document.querySelector('#email');
     let phone = document.querySelector('#phone');
     let checkbox = document.querySelector('#checkbox');
     
     console.log('눌림');
	   
	   if(confirm('문의 등록하시겠습니까?')){
            if(title == null || content == null || email == null || phone == null || checkbox.checked == false){
                alert('필수 입력항목을 입력해주세요');
                return;
            }

			alert('등록되었습니다.');
			
		   document.querySelector('.faqForm').submit();
		   console.log('외않되');
		   modal5.style.display = "none";
		   

		   
	   }
   })