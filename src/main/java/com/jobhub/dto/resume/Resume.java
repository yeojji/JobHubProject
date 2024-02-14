package com.jobhub.dto.resume;

import lombok.Data;

@Data
public class Resume {
	//이력서 관련 내용
	String resumeId;
	String userId;
	String password;
	String postingId;
	int careerId;
	int academicId;
	int certificateId;
	int answerId;
	String supportPath;
	String militaryServiceMatters;
	String veteransTargetStatus;
	String disorderStatus;
	String submissionStatus;
	String revisionDate;
	
	String eduSortation;	//학력사항 구분
	String schoolName;		//학교명
	String admission;		//입학년도
	String graduation;		//졸업년도
	String major;			//전공
	String minor;			//부전공
	String grade;			//평점
	String totalScore;		//총점
	String graduationStatus;	//졸업상태
	
	String companyName;		//회사명
	String departmentName;	//부서명
	String joinDate;  		//입사일
	String resignationDate; //퇴사일
	String duty;  			//담당업무
	String position;  		//고용형태
	String detailWork;  	//상세업무내용
	
	String certSortation;
	String certType;
	String certLevel;
	String acquisition;
	String lssuingAuthority;
	String language;
	String test;
	String languageGrade;
	
	String content1;
	String content2;
	String content3;
	
	int fileId;
	String fileName;
	String originalFileName;
	String filePath;
	String fileExtension;
	long fileSize;
	
	String career;
	String education;
	String age;
	String name;
	String jobsName;
	
	String title;
	String phone;
	String email;
	String gender;
	String birth;
	
	String resignationDateOfCompany;
	String joinedDateOfCompany;
	
	String startDate;
	String endDate;
	String startAge;
	String endAge;
	String findOutPath;
	String careerCondition;
	
	String sortation;
	String createdDate;
	String question1;
	String question2;
	String question3;
	
	/*
	resume_id					varchar2	이력서ID
	user_id						varchar2	회원ID
	jobs_id						varchar2	직무ID
	career_id					NUMBER		경력ID
	academic_id					NUMBER		학력ID
	certificate_id				NUMBER		자격ID
	support_path				varchar2	지원경로
	military_service_matters	varchar2	병역사항
	veterans_target_status		varchar2	보훈대상여부
	disorder_status				varchar2	장애사항
	submission_status			varchar2	제출여부
	revision_date				DATE		수정된 날짜
	*/
	
}
