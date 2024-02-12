package com.jobhub.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.resume.ResumeSearchCondition;
import com.jobhub.service.admin.AdminService;
import com.jobhub.service.resume.ResumeService;
import com.jobhub.util.LoginManager;

@Controller
@RequestMapping("/admin")
public class AdminResumeController {

	@Autowired
	ResumeService resumeService;

	@Autowired
	AdminService adminService;

	@Autowired
	LoginManager loginManager;

	// 이력서 리스트 페이지
	@GetMapping("/resume")
	public String resume(Model model, ResumeSearchCondition resumeSearchCondition, HttpSession session) {
		System.out.println("Received resumeSearchCondition: " + resumeSearchCondition);
		List<Resume> resumeList;

		// 검색 조건이 없을 때 전체 이력서 목록을 가져옴

		if (resumeSearchCondition != null) {
			resumeList = resumeService.findResumeListBySearchCondition(resumeSearchCondition);
		} else {
			resumeList = resumeService.findResumeList();
		}
		System.out.println("Size of resumeList: " + resumeList.size()); // 리스트사이즈 확인
		model.addAttribute("resumeList", resumeList);

		return "admin/resumeManagement";
	}

//	@PostMapping("/resume")
//	public String resumeProcess(Resume resume) {
//		return "admin/resumeManagement";
//	}
//	
//	

	// 이력서 상세 조회
	@GetMapping("/resumeDetail")
	public String resumeDetailInquiry() {
		return "admin/resumeDetail";
	}

}
