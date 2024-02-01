package com.jobhub.controller.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jobhub.service.resume.ResumeService;

@Controller
public class ResumeController {

	
	@Autowired
	ResumeService resumeService;
	
	
}
