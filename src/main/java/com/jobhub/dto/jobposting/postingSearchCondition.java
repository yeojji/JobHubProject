package com.jobhub.dto.jobposting;

import lombok.Data;

@Data
public class PostingSearchCondition {
	
	String postingId;
	String title;
	String jobsId;
	String careerCondition;
	String employmentType;
	String postWrittenDate;
	String postStartDate;
	String postEndDate;
	
	String postStatus;
	
	
	String jobsCateName;
	String jobsItemName;
	
	
	String SearchKeyword;



}
