package com.jobhub.controller.jobposting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.jobposting.Job;
import com.jobhub.service.jobposting.JobpostingService;

@Controller
public class JobpostingController {

	@Autowired
	JobpostingService jobpostingService;

	@RequestMapping("/jobs")
	public String jobPosting() {
		return "/jobPosting/posting";
	} 
	
	@GetMapping("/jobs")
	public String jobs(Model model) {
		
		/* Job job = new Job(); */
		
		List<Job> jobList = jobpostingService.findJobList();
		
		model.addAttribute("jobList" , jobList);
		
		return "/jobPosting/posting";
	}
	



}
