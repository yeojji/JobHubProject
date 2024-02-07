package com.jobhub.dto.resume;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Resume {
	//이력서 관련 내용
	String resumeId;
	String userId;
	int jobsId;
	String careerId;
	String academicId;
	String certificateId;
	String supportPath;
	String military_serviceMatters;
	String veterans_targetStatus;
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
	
	MultipartFile data;   //일단 파일은 좀더 생각해봐야할듯
	
	String military;		//병역사항
	String veternas;		//보훈대상 여부
	String disorder;		//장애사항
	
	/*
	resume_id					varchar2	이력서ID
	user_id						varchar2	회원ID
	jobs_id						varchar2	직무ID
	career_id					varchar2	경력ID
	academic_id					varchar2	학력ID
	certificate_id				varchar2	자격ID
	support_path				varchar2	지원경로
	military_service_matters	varchar2	병역사항
	veterans_target_status		varchar2	보훈대상여부
	disorder_status				varchar2	장애사항
	submission_status			varchar2	제출여부
	revision_date				DATE		수정된 날짜
	*/
	
}
