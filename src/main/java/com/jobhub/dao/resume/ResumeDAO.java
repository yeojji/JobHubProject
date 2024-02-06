package com.jobhub.dao.resume;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jobhub.dto.resume.ResumeEducationForm;

public interface ResumeDAO {

	public int saveEducationInfo(Map<String, Object> eduMap);
	
	public int saveEducationInfo(ResumeEducationForm educationForm);

	public int saveEducationInfo(List<ResumeEducationForm> educationForm);

}
