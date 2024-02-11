package com.jobhub.dao.jobposting;

import java.util.List;

import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.FAQs;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.dto.jobposting.PostingSearchCondition;

public interface JobpostingDAO {

	public List<Job> findJobList();
	
	public List<Jobposting> findJobpostingList();
	
	public List<Job> findJobNameListbyPid(int jobLevel1);
	
	public int saveJobposting(Jobposting jobposting);
	
	public int saveDescription(Description description);
	
	public Jobposting findPostingBypostingId(String postingId);

	public int modifyJobposting(Jobposting jobposting);
	
	public Description findDescriptionBypostingId(String postingId);
	
	public int modifyDescription(Description description);
	
	public int saveFaqs(FAQs faqs);
	
	public List<FAQs> findFaqsList();
	
	public FAQs findFaqsbyId(String FAQsId);
	
	public int modifyFaqs(FAQs faqs);
	
	public int removeFaqsById(String FAQsId);
	
	public List<Jobposting> findPostingAndJobNameList();
	
	//public List<Jobposting> findJobpostingListBySearchCondition(PostingSearchCondition postingSearchCondition);
	
	//public List<Jobposting> findJobpostingListBySearchCondition(String SearchCondition);
	
	public List<Jobposting> findPostingListBySearchCondition(PostingSearchCondition postingSearchCondition);
}
