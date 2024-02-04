package com.jobhub.dao.jobposting;

import java.util.List;

import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;

public interface JobpostingDAO {

	public List<Job> findJobList();
	
	public List<Job> findJobNameListbyPid();
	
	public List<Job> cateList();
	
	public int saveJobposting(Jobposting jobposting);
	
	public int saveDescription(Description description);
	
}
