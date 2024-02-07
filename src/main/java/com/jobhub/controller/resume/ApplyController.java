package com.jobhub.controller.resume;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.jobhub.dto.resume.ApplyCareerForm;
import com.jobhub.dto.resume.ApplyCertificateForm;
import com.jobhub.dto.resume.ApplyResumeForm;
import com.jobhub.dto.resume.Resume;
import com.jobhub.service.apply.ApplyService;
import com.jobhub.service.resume.ResumeService;

@Controller
public class ApplyController {

	@Autowired
	ResumeService resumeService;

	@Autowired
	ApplyService applyService;

	@PostMapping("/apply")
	public String applyProcess(ApplyResumeForm applyForm, ApplyCareerForm careerForm, ApplyCertificateForm certForm) {

		//여기는 학력 정보를 테이블에 저장하는 코드입니다.
		List<Resume> resumeList = new ArrayList<Resume>();
		for(int i=0; i<applyForm.getSchoolName().length; i++) {
			Resume rsm = new Resume();
			rsm.setSchoolName(applyForm.getSchoolName()[i]);
			rsm.setEduSortation(applyForm.getEduSortation()[i]);
			rsm.setAdmission(applyForm.getAdmission()[i]);
			rsm.setGraduation(applyForm.getGraduation()[i]);
			rsm.setMajor(applyForm.getMajor()[i]);
			rsm.setMinor(applyForm.getMinor()[i]);
			rsm.setGrade(applyForm.getGrade()[i]);
			rsm.setTotalScore(applyForm.getTotalScore()[i]);
			rsm.setGraduationStatus(applyForm.getGraduationStatus()[i]);

			resumeList.add(rsm);
		}

		Map<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("resumeList", resumeList);
		
		int result = resumeService.saveEducationInfo(hashMap);

		
		
		//여기서부터 경력사항 저장하는 부분^^^^^^^^^^^^^^^^^^^^^^^^^^^
		List<Resume> careerList = new ArrayList<Resume>();
		
		for(int i=0; i<careerForm.getCompanyName().length; i++) {
			Resume rsm = new Resume();
			rsm.setCompanyName(careerForm.getCompanyName()[i]);
			rsm.setDepartmentName(careerForm.getDepartmentName()[i]);
			rsm.setJoinDate(careerForm.getJoinDate()[i]);
			rsm.setResignationDate(careerForm.getResignationDate()[i]);
			rsm.setDuty(careerForm.getDuty()[i]);
			rsm.setPosition(careerForm.getPosition()[i]);
			rsm.setDetailWork(careerForm.getDetailWork()[i]);

			careerList.add(rsm);
		}
		

		hashMap.clear();
		hashMap.put("careerList", careerList);

		int careerResult = applyService.saveCareerInfo(hashMap);
		
		
		//여기서부터 자격사항 저장하는 부분^^^^^^^^^^^^^^^^^^^^^^^^^^^
		List<Resume> certList = new ArrayList<Resume>();
		
		for(int i=0; i<certForm.getCertSortation().length; i++) {
			Resume rsm = new Resume();
			rsm.setCertSortation(certForm.getCertSortation()[i]);
			rsm.setCertType(certForm.getCertType()[i]);
			rsm.setCertLevel(certForm.getCertLevel()[i]);
			rsm.setAcquisition(certForm.getAcquisition()[i]);
			rsm.setLssuingAuthority(certForm.getLssuingAuthority()[i]);
			rsm.setLanguage(certForm.getLanguage()[i]);
			rsm.setTest(certForm.getTest()[i]);
			rsm.setLanguageGrade(certForm.getLanguageGrade()[i]);

			certList.add(rsm);
		}
		
		hashMap.clear();
		hashMap.put("certList", certList);
		
		System.out.println(certList);

		int certResult = applyService.saveCertificateInfo(hashMap);
		

		return "redirect:/";
	}



}
