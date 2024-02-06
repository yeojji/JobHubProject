package com.jobhub.controller.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.service.resume.ResumeService;

@Controller
public class ResumeController {

	
	@Autowired
	ResumeService resumeService;
	
	@RequestMapping("/apply")
	public String signUp() {
		return "apply/apply";
	}
	
}
