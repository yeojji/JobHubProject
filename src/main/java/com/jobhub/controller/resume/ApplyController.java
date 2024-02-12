package com.jobhub.controller.resume;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.jobhub.dto.resume.ApplyCareerForm;
import com.jobhub.dto.resume.ApplyCertificateForm;
import com.jobhub.dto.resume.ApplyFileForm;
import com.jobhub.dto.resume.ApplyResumeForm;
import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.util.FileInfo;
import com.jobhub.service.apply.ApplyService;
import com.jobhub.service.resume.ResumeService;
import com.jobhub.util.FileManager;

@Controller
public class ApplyController {

	@Autowired
	ResumeService resumeService;

	@Autowired
	ApplyService applyService;

	@Autowired
	FileManager fileManager;

	@PostMapping("/apply")
	public String applyProcess(ApplyResumeForm applyForm, ApplyCareerForm careerForm, 
			ApplyCertificateForm certForm, ApplyFileForm fileForm) {

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


		//여긴 자격사항이다@@@@@@@@@@@@@@@@@@@
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

		int certResult = applyService.saveCertificateInfo(hashMap);

		

		
		//!!!!!!!!!!!!!!!!여기서부터 파일 삽입 코드!!!!!!!!!!!!!!!!!!!!!!!
		
		System.out.println(fileForm);

		try {
			//1. 파일정보 추출 + 파일 실제 폴더에 저장
			FileInfo fileInfo = fileManager.storeFile(fileForm.getData());

			//2. DB에 파일 정보 저장
			int fileResult = applyService.saveFileInfo(fileInfo);

			// 파일저장 실패? -> 그냥 다 실패
			// 파일저장 실패? -> 첨부파일 없는걸로 치고, 프로파일 정보만 저장!
			//			if(result > 0) {
			//				
			//				FileInfo savedFileInfo = applyService.findFileInfoByFileName(fileInfo.getFileName());
			//				
			//				//3. UserProfile 정보 저장
			//				UserProfile userProfile = new UserProfile();
			//				userProfile.setName(requestForm.getName());
			//				userProfile.setNickname(requestForm.getNickname());
			//				userProfile.setFileId(savedFileInfo.getFileId()); //DB에 저장된 fileId를 획득!! 세팅
			//				int result2 = userService.saveUserProfile(userProfile);
			//				
			//			}

		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/";
		
	}

}
