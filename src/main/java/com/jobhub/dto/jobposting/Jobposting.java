package com.jobhub.dto.jobposting;


import lombok.Data;

@Data
public class Jobposting {

		//채용공고 관련 내용
	
	String postingId;
	String title;
	String jobsId;
	String careerCondition;
	String employmentType;
	String postWrittenDate;
	String postStartDate;
	String postEndDate;
	String applicationStart;
	String applicationDeadline;
	String postStatus;
	String modifyDate;
	String adminID;
	String question1;	
	String question2;	
	String question3;	
	
	int jobLevel1;
	int jobLevel2;
	
	String jobsCateName;
	String jobsItemName;
	
	int postingCount;
	
	
	
	
}
