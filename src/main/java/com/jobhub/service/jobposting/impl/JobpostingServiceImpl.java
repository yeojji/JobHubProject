package com.jobhub.service.jobposting.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.service.jobposting.JobpostingService;

@Service
public class JobpostingServiceImpl implements JobpostingService {

	
	@Autowired
	JobpostingDAO jobPostingDAO;
	
	@Override
	public List<Job> findJobList(){
		
		List<Job> jobList = jobPostingDAO.findJobList();
		
		return jobList;
	
	}
	

}

