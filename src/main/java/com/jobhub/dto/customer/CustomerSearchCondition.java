package com.jobhub.dto.customer;

import lombok.Data;

@Data
public class CustomerSearchCondition {
	String userId;
	String email;
	String password;
	String name;
	String birth;
	String phone;
	String createdDate;
	String gender;
	String customerStatus;
	String startDate;
	String endDate;
	String spt;
	String sfl;
	String searchKeyword;
}
