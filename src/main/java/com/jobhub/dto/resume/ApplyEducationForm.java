package com.jobhub.dto.resume;

import lombok.Data;

@Data
public class ApplyEducationForm {

	String[] eduSortation;
	String[] schoolName;	//학교명
	String[] admission;		//입학년도
	String[] graduation;		//졸업년도
	String[] major;			//전공
	String[] minor;			//부전공
	String[] grade;			//평점
	String[] totalScore;		//총점
	String[] graduationStatus;
}
