package com.jobhub.service.jobposting;

import java.util.List;

import com.jobhub.dto.jobposting.Job;

public interface JobpostingService {

	
	//채용공고 조회, 찾기, 스크랩, (관리자) 등록
	
	public List<Job> findJobList();
	
	
}
