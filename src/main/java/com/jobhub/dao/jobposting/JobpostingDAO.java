package com.jobhub.dao.jobposting;

import java.util.List;

import com.jobhub.dto.jobposting.Job;

public interface JobpostingDAO {

	public List<Job> findJobList();
	
}
