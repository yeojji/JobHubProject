package com.jobhub.vaildator;

import org.springframework.validation.Errors;

import com.jobhub.dto.customer.Customer;

public class Vaildator {
	
	public static void validate(Customer customer, Errors errors) {
		// TODO Auto-generated method stub
		
		if(customer.getPassword().length() < 10) { //10자리수보다 작으면 안됌
			errors.rejectValue("pw", "UserPwSize","자체 만듬 10자리 이상으로 작성해야됌");
		}
		
		errors.rejectValue("id", "UserId", "그냥 유효성 검사 탈락");
	}

}
