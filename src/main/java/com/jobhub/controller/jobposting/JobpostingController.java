package com.jobhub.controller.jobposting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jobhub.service.jobposting.JobpostingService;

@Controller
public class JobpostingController {

	@Autowired
	JobpostingService jobpostingService;




}
