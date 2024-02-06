package com.jobhub.dto.resume;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Resume {
	//이력서 관련 내용
	String supportPath;
	
	//11번 라인부터 41번라인까지는 dto 다 따로따로
	//테이블에서 가져오는 dto하나 테이블에 저장하는 dto 하나
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
	
	String certSortation;	//자격사항 구분
	String certType;		//자격/면허 종류
	String certLevel;		//등급
	String acquisition;		//취득/응시일
	String Authority;		//발급기관
	String language;		//언어
	String score;			//점수
	
	String content1;
	String content2;
	String content3;
	
	MultipartFile data;   //일단 파일은 좀더 생각해봐야할듯
	
	String military;		//병역사항
	String veternas;		//보훈대상 여부
	String disorder;		//장애사항
	
}
