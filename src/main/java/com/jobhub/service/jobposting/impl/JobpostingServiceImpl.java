package com.jobhub.service.jobposting.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.FAQs;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.dto.jobposting.PostingSearchCondition;
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
	
	public List<Jobposting> findPostingAndJobNameList(){
		List<Jobposting> jobpostingNameList = jobpostingDAO.findPostingAndJobNameList();
		return jobpostingNameList;
}
	
/*
 * public List<Jobposting> findJobpostingListBySearchCondition(String
 * searchKeyword){ List<Jobposting> jobpostingList =
 * jobpostingDAO.findJobpostingListBySearchCondition(searchKeyword); return
 * jobpostingList; }
 */
	
/*
 * public List<Jobposting>
 * findPostingListBySearchCondition(PostingSearchCondition
 * postingSearchCondition){
 * 
 * List<Jobposting> jobpostingList =
 * jobpostingDAO.findPostingListBySearchCondition(postingSearchCondition);
 * return jobpostingList;
 * 
 * }
 */
	
	public List<Jobposting> findPostingListBySearchCondition(String keyword){
		List<Jobposting> jobpostingList = jobpostingDAO.findPostingListBySearchCondition(keyword);
		return jobpostingList;
	}
	
	/*
	 * public List<Jobposting> findPostingListBySearchCondition(String keyword) { //
	 * PostingSearchCondition 객체 생성 및 설정 PostingSearchCondition condition = new
	 * PostingSearchCondition(); condition.setKeyword(keyword);
	 * 
	 * // DAO를 통해 데이터베이스에서 데이터를 조회 return
	 * jobPostingDAO.findPostingListBySearchCondition(condition); }
	 */
	 
	
	public List<Jobposting> findPostingListByjobscatename(String jobsCateName){
		List<Jobposting> jobpostingList = jobpostingDAO.findPostingListByjobscatename(jobsCateName);
		return jobpostingList;
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
	
	public int saveFaqs(FAQs faqs) {
		int result = jobpostingDAO.saveFaqs(faqs);
		return result;
	}
	
	public List<FAQs> findFaqsList(){
		List<FAQs> faqsList = jobpostingDAO.findFaqsList();
		return faqsList;
	}
	
	public FAQs findFaqsbyId(String FAQsId){
		FAQs faqs = jobpostingDAO.findFaqsbyId(FAQsId);
		return faqs;
	}
	
	public int modifyFaqs(FAQs faqs) {
		int result = jobpostingDAO.modifyFaqs(faqs);
		return result;
	}
	
	public int removeFaqsById(String FAQsId) {
		int result = jobpostingDAO.removeFaqsById(FAQsId);
		return result;
	}
	
	
	
	
	
	
}
