package com.jobhub.service.resume;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jobhub.dto.resume.ResumeEducationForm;

public interface ResumeService {

	//이력서 작성, 임시저장, 찾기
	
	
	public int saveEducationInfo(Map<String, Object> eduMap);
	
	public int saveEducationInfo(ResumeEducationForm educationForm);
	
	public int saveEducationInfo(List<ResumeEducationForm> educationForm);
	
}
