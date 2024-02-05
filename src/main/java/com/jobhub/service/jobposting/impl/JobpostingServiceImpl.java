package com.jobhub.service.jobposting.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.service.jobposting.JobpostingService;

@Service
public class JobpostingServiceImpl implements JobpostingService {

	
	@Autowired
	JobpostingDAO jobpostingDAO;
	
	@Override
	public List<Job> findJobList(){
		
		List<Job> jobList = jobpostingDAO.findJobList();
		
		return jobList;
	}
	
	public List<Job> findJobNameListbyPid(int jobLevel1){
		List<Job> jobNameList = jobpostingDAO.findJobNameListbyPid(jobLevel1);
		return jobNameList;
	}
	
	public int saveJobposting(Jobposting jobposting) {	//잡포스팅 저장
		int result = jobpostingDAO.saveJobposting(jobposting);
		return result;
	}
	
	public int saveDescription(Description description) {	//잡포스팅 저장
		int result = jobpostingDAO.saveDescription(description);
		return result;
	}
	
}

