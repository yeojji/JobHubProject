package com.jobhub.service.jobposting;

import java.util.List;

import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.FAQs;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;

public interface JobpostingService {

	
	//채용공고 조회, 찾기, 스크랩, (관리자) 등록
	
	public List<Job> findJobList();
	
	public List<Jobposting> findJobpostingList();
	
	public List<Job> findJobNameListbyPid(int jobLevel1);
	
	public int saveJobposting(Jobposting jobposting);
	
	public int saveDescription(Description description);
	
	public Jobposting findPostingBypostingId(String postingId);
	
	public Description findDescriptionBypostingId(String postingId);
	
	public int modifyJobposting(Jobposting jobposting);
	
	public int modifyDescription(Description description);
	
	public int saveFaqs(FAQs faqs);
	
	public List<FAQs> findFaqsList();
	
	public FAQs findFaqsbyId(String FAQsId);
	
	public int modifyFaqs(FAQs faqs);
	
	
	

	
}
