package com.jobhub.dto.admin;

import lombok.Data;

@Data
public class Admin {
	//관리자
	
	/*
	admin_ID		varchar2	관리자 ID
	admin_PW		varchar2	관리자 PW
	employee_ID		varchar2	직원ID
	permission_code	varchar2	권한(공통_분류코드_Master)
	creation_code	datetime	생성일자
	*/
	
	String id;
	String pw;
	String employeeId;
	String permissionCode;
	String creationCode;
	
	
}
