package com.jobhub.dto.customer;

import java.security.Timestamp;

import lombok.Data;

@Data
public class Customer {

	//고객(회원) 정보

	String userId;
	String email;
	String password;
	String name;
	String birth;
	String phone;
	Timestamp createdDate;
	String gender;
	String customerStatus;
}