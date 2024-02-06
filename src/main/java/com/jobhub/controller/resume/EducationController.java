package com.jobhub.controller.resume;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.resume.ResumeEducationForm;
import com.jobhub.service.resume.ResumeService;

@Controller
public class EducationController {

	@Autowired
	ResumeService resumeService;

	
	
	@PostMapping("/apply")
	public String applyProcess(ResumeEducationForm educationForm) {
	//public String applyProcess(List<ResumeEducationForm> educationForm) {
		
		System.out.println("안녕 난 출력문");
		System.out.println(educationForm);
		System.out.println("여기까지는 무조건 나와야 되는 출력문");
		
		List<Resume> resumeList = new ArrayList<Resume>();
		for(int i=0; i<educationForm.getSchoolName().length; i++) {
			Resume rsm = new Resume();
			rsm.setSchoolName(educationForm.getSchoolName()[i]);
			rsm.setEduSortation(educationForm.getEduSortation()[i]);
			rsm.setAdmission(educationForm.getAdmission()[i]);
			rsm.setGraduation(educationForm.getGraduation()[i]);
			rsm.setMajor(educationForm.getMajor()[i]);
			rsm.setMinor(educationForm.getMinor()[i]);
			rsm.setGrade(educationForm.getGrade()[i]);
			rsm.setTotalScore(educationForm.getTotalScore()[i]);
			rsm.setGraduationStatus(educationForm.getGraduationStatus()[i]);
			
			resumeList.add(rsm);
		}
		
		
		Map<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("resumeList", resumeList);
		
		/*
		Map<String, String[]> eduMap = new HashMap<>(); //파라미터로 넘길 맵
		
		eduMap.put("schoolName", educationForm.getSchoolName());
		eduMap.put("eduSortation", educationForm.getEduSortation());
		eduMap.put("admission", educationForm.getAdmission());
		eduMap.put("graduation", educationForm.getGraduation());
		eduMap.put("major", educationForm.getMajor());
		eduMap.put("minor", educationForm.getMinor());
		eduMap.put("grade", educationForm.getGrade());
		eduMap.put("totalScore", educationForm.getTotalScore());
		eduMap.put("graduationStatus", educationForm.getGraduationStatus());
		
		//int result = resumeService.saveEducationInfo(eduMap);
		System.out.println(eduMap + "여기 봐야될 출력문");
		*/
		
		int result = resumeService.saveEducationInfo(hashMap);
		System.out.println(result);
		
		return "redirect:/mypage";
	}
	
	
	
}
