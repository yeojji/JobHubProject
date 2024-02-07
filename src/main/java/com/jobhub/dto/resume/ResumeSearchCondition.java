package com.jobhub.dto.resume;

import lombok.Data;

@Data
public class ResumeSearchCondition {
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
	
	String searchKeyword;
	
	
}
