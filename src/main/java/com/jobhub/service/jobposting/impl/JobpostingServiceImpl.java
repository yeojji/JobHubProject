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
	public List<Job> findJobList() {
		List<Job> jobList = jobpostingDAO.findJobList();
		return jobList;
	}

	public List<Jobposting> findJobpostingList() {
		List<Jobposting> jobposting = jobpostingDAO.findJobpostingList();
		return jobposting;
	}

	public List<Job> findJobNameListbyPid(int jobLevel1) {
		List<Job> jobNameList = jobpostingDAO.findJobNameListbyPid(jobLevel1);
		return jobNameList;
	}

	public int saveJobposting(Jobposting jobposting) { // 잡포스팅 저장
		int result = jobpostingDAO.saveJobposting(jobposting);
		return result;
	}

	public int saveDescription(Description description) {
		int result = jobpostingDAO.saveDescription(description);
		return result;
	}

	public Jobposting findPostingBypostingId(String postingId) {
		Jobposting jobposting = jobpostingDAO.findPostingBypostingId(postingId);
		return jobposting;
	}

	@Override
	public int modifyJobposting(Jobposting jobposting) {
		int result = jobpostingDAO.modifyJobposting(jobposting);
		return result;
	}

	public Description findDescriptionBypostingId(String postingId) {
		Description description = jobpostingDAO.findDescriptionBypostingId(postingId);
		return description;
	}

	public int modifyDescription(Description description) {
		int result = jobpostingDAO.modifyDescription(description);
		return result;
	}

}
