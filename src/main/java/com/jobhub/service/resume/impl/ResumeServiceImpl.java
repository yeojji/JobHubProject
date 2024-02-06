package com.jobhub.service.resume.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.resume.ResumeDAO;
import com.jobhub.dto.resume.ResumeEducationForm;
import com.jobhub.service.resume.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	ResumeDAO resumeDAO;
	
	@Override
	public int saveEducationInfo(Map<String, Object> eduMap) {
		// TODO Auto-generated method stub
		
		System.out.println("난 무조건 출력되는 출력문^^");
		
		System.out.println(eduMap + "여기 작동안되면 눈물날 출력문");
		
		int result = resumeDAO.saveEducationInfo(eduMap);
		
		return result;
		
	}

	@Override
	public int saveEducationInfo(ResumeEducationForm educationForm) {
		// TODO Auto-generated method stub
		
		int result = resumeDAO.saveEducationInfo(educationForm);
		
		return result;
	}

	@Override
	public int saveEducationInfo(List<ResumeEducationForm> educationForm) {
		// TODO Auto-generated method stub
//		//service
//		for(Resume rsm : resumeList) {
//			dao.saveResume(rsm);
//		}
		
		int result = resumeDAO.saveEducationInfo(educationForm);
		
		return result;
	}

	
	
}
