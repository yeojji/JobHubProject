package com.jobhub.dto.resume;

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
