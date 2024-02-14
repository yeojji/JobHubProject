package com.jobhub.dto.jobposting;

import lombok.Data;

@Data
public class Notice {
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
	
	int scrapId;
	
	int jobLevel1;
	int jobLevel2;
	
	String jobsCateName;
	String jobsItemName;
	
	int postingCount;
	String descriptionId;
	String creationDate;
	String assignedTask;
	String requirements;
	String preferentialTreatment;
	String screeningGuide;
	String workForm;
	String workPlace;
	String workingHours;
	String etc;
	String submissionGuide;

}
