package com.app.controller.posting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostingController {

	@RequestMapping("/jobs")
	public String jobsMain() {
		return "jobPosting/posting";
	}
	
	
}
