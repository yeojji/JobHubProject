package com.jobhub.dto.resume;

import lombok.Data;

@Data
public class Career {
//경력조건
	String careerId;
	String resumeId;
	String joinDateOfCompany;
	String resignationDateOfCompany;
	String position;
	String duty;
	String companyId;
	String departmentName;
	String detailsOfWork;
	
	/*
	career_id					varchar2	경력ID				not null
	resume_id					varchar2	이력서ID				not null
	join_date_of_company		DATE		입사일(YYYY.MM.DD)	null o
	resignation_date_of_company	DATE		퇴사일(YYYY.MM.DD)	null o
	position					varchar2	직위					null o
	duty						varchar2	직무					null o
	company_id					varchar2	회사ID				null o
	department_name				varchar2	부서명				null o
	details_of_work				varchar2	상세업무내용			null o
	*/
}
