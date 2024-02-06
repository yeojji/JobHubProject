package com.jobhub.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.resume.ResumeSearchCondition;
import com.jobhub.service.admin.AdminService;
import com.jobhub.service.resume.ResumeService;

@Controller
@RequestMapping("/admin")
public class AdminResumeController {
	
	@Autowired
	ResumeService resumeService;
	
	@Autowired
	AdminService adminService;
	
	
	//이력서 리스트 페이지
	@GetMapping("/resume")
	public String resume(Model model, ResumeSearchCondition resumeSearchCondition) {
		System.out.println(resumeSearchCondition);
		
		List<Resume> resumeList = resumeService.findResumeListBySearchCondition(resumeSearchCondition);
		model.addAttribute("resumeList", resumeList);
		
		return "admin/resumeManagement";
	}
	
	@PostMapping("/resume")
	public String resumeProcess(Resume resume) {
		return "admin/resumeManagement";
	}
	
	
	
	
	//이력서 상세 조회
	@GetMapping("/resumeDetail")
	public String resumeDetailInquiry() {
		return "admin/resumeDetail";
	}
	
	
}
