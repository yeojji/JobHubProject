package com.jobhub.dto.customer;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class Customer {

	//고객(회원) 정보
	String userId;
	@Email
	String email;
	String password;
	@NotBlank
	String name;
	String birth;
	@NotBlank
	String phone;
	String createdDate;
	String gender;
	String customerStatus;
}