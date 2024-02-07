package com.jobhub.service.resume.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.resume.ResumeDAO;
import com.jobhub.dto.resume.ResumeEducationForm;
import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.resume.ResumeSearchCondition;
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
	
	@Override
	public int saveResume(Resume resume) {
		// 이력서 저장 로직
		int result = resumeDAO.saveResume(resume);
		return result;
	}

	@Override
	public Resume findResumeByResumeId(String resumeId) {
		// 이력서ID로 이력서 검색
		Resume resume = resumeDAO.findResumeByResumeId(resumeId);
		return resume;
	}

	@Override
	public List<Resume> findResumeList() {
		// 이력서 목록 조회
		List<Resume> resumeList  = resumeDAO.findResumeList();
		return resumeList;
	}

	@Override
	public List<Resume> findResumesByUserId(String userId) {
		// TODO Auto-generated method stub
		List<Resume> resumeList  = resumeDAO.findResumesByUserId(userId);
		return resumeList;
	}

	@Override
	public List<Resume> findResumeListBySearchCondition(ResumeSearchCondition resumeSearchCondition) {
		List<Resume> resumeList  = resumeDAO.findResumeListBySearchCondition(resumeSearchCondition);
		return resumeList;
	}

	@Override
	public Resume findResumeByCareerId(String careerId) {
		Resume resume = resumeDAO.findResumeByCareerId(careerId);
		return resume;
	}

	@Override
	public int modifyResume(Resume resume) {
		int result = resumeDAO.modifyResume(resume);
		return result;
	}

	@Override
	public int deleteResume(String resumeId) {
		int result = resumeDAO.deleteResume(resumeId);
		return result;
	}


	
}
