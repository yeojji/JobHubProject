package com.jobhub.controller.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jobhub.service.resume.ResumeService;

@Controller
public class ResumeController {

	
	@Autowired
	ResumeService resumeService;
	
	@GetMapping("/apply")
	public String apply() {
		return "apply/apply";
	}
	
	@PostMapping("/apply")
	public String applyProcess() {
		
		return "redirect:/mypage";
	}
	
}
