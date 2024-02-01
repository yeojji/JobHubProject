package com.jobhub.controller.jobposting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.service.jobposting.JobpostingService;

@Controller
public class JobpostingController {

	@Autowired
	JobpostingService jobpostingService;

	@RequestMapping("/jobs")
	public String jobPosting() {
		return "/jobPosting/posting";
	} 
	



}
