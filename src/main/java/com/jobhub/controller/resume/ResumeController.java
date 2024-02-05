package com.jobhub.controller.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.resume.Resume;
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
	public String applyProcess(@ModelAttribute Resume resume) {

		System.out.println(resume);


//		int result = customerService.saveUser(resume);
//
//		if(result > 0) { 
//			return "redirect:/login"; 
//		}else { 
//			return "login/sign-up"; 
//		}


		return "";
	}

}
