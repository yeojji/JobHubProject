package com.jobhub.dto.resume;

import lombok.Data;

@Data
public class ResumeEducationForm {
	//이력서 관련 내용
	
	//학력사항 테이블에 넣을때 필요한 dto 일단 그렇게 알고 있으셈
	
//	String[] eduSortationList;	//학력사항 구분
//	String[] schoolNameList;	//학교명   //서울대학교   동서울대학교    남서울대학교    서서울대하교
//	String[] admissionList;		//입학년도
//	String[] graduationList;		//졸업년도
//	String[] majorList;			//전공
//	String[] minorList;			//부전공
//	String[] gradeList;			//평점
//	String[] totalScoreList;		//총점
//	String[] graduationStatusList;	//졸업상태
	
	String[] eduSortation;
	String[] schoolName;	//학교명   //서울대학교   동서울대학교    남서울대학교    서서울대하교
	String[] admission;		//입학년도
	String[] graduation;		//졸업년도
	String[] major;			//전공
	String[] minor;			//부전공
	String[] grade;			//평점
	String[] totalScore;		//총점
	String[] graduationStatus;
}
