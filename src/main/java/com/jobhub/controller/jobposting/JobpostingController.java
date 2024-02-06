package com.jobhub.controller.jobposting;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.service.jobposting.JobpostingService;


@Controller
public class JobpostingController {

	@Autowired
	JobpostingService jobpostingService;
	
	@Autowired
    private SqlSession sqlSession;


	@GetMapping("/jobposting")
	public String jobsget(Model model) {

		List<Job> jobList = jobpostingService.findJobList();

		model.addAttribute("jobList" , jobList);

		return "jobPosting/posting";

	}

	@PostMapping("/jobposting")
	public String jobpostingProcess(@ModelAttribute Jobposting jobposting, @ModelAttribute Description description) {

		System.out.println("post 요청");
		
		String jobpostingId = sqlSession.selectOne("jobPosting_mapper.findJobpostingId"); //posting id 값 맞춘거

		jobposting.setPostingId(jobpostingId);
		int result = jobpostingService.saveJobposting(jobposting);


		description.setPostingId(jobpostingId);
		int result2 = jobpostingService.saveDescription(description);

		System.out.println(jobposting);
		System.out.println(description);
		//저장

		if(result > 0 && result2 > 0) { //저장이 성공
			System.out.println("성공");
			return "redirect:/jobposting/postingMain";   //main 요청 경로

		} else { //저장 실패
			System.out.println("실패");
			return "jobPosting/postingMain"; //view 파일경로
		}
	}

	//ajax
	@ResponseBody
	@PostMapping("/jobnameByPid")
	public List<Job> findJobNameListbyPid(@RequestParam int jobLevel1, Model model) {
		
	    List<Job> jobNameList = jobpostingService.findJobNameListbyPid(jobLevel1);
	    model.addAttribute("jobNameList", jobNameList);
	    
	    return jobNameList;
	}
	
	
	@RequestMapping("jobpostingMain")
	public String jobpostingMain(Model model) {
		
		List<Jobposting> jobpostingList = jobpostingService.findJobpostingList();

		model.addAttribute("jobpostingList" , jobpostingList);
		
		
		return "jobPosting/postingMain";
	}
	
	
	@GetMapping("/modifyJobposting")
	public String modifyjobpositng(@RequestParam String postingId, Model model) {
		
		System.out.println("get요청");
		
		Jobposting jobposting = jobpostingService.findPostingBypostingId(postingId);
		Description description = jobpostingService.findDescriptionBypostingId(postingId);
		
		System.out.println(jobposting);
		System.out.println(description);
		
		model.addAttribute("jobposting", jobposting);
		model.addAttribute("description", description);
		
		return "jobPosting/modifyJobposting";
	}
	
	
	@PostMapping("/modifyJobposting")
	public String  modifyJobpostingProcess(@ModelAttribute Jobposting jobposting , @ModelAttribute Description description) {
		System.out.println("post요청");

		int result = jobpostingService.modifyJobposting(jobposting);
		int result2 = jobpostingService.modifyDescription(description);
		
		System.out.println(jobposting);
		System.out.println(description);
		//저장

		if(result > 0 && result2 > 0) { //저장이 성공
			System.out.println("성공");
			return "/postingMain";  //main 요청 경로

		} else { //저장 실패
			System.out.println("실패");
			return "jobPosting/postingMain"; //view 파일경로
		}
		
		
	}
	
	
	
	


	
	
	}
	
	





