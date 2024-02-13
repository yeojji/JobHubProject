package com.jobhub.dto.admin;

import lombok.Data;

@Data
public class AdminSearchCondition {

	String adminId;				//Admin
	String adminPw;				//Admin
	String employeeId;		//Employee
	String name;			//Employee
	String jobsName;			//Jobs
	String email;			//Employee
	String tel;				//Employee
	String hireDate;		//Employee
	String permissionCode;	//Admin
	String creationCode;	//Admin
	String userStatus;
	String searchKeyword;
}
