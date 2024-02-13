package com.jobhub.dao.jobposting.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.employee.EmployeeJobsInfo;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.FAQs;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.dto.jobposting.PostingSearchCondition;

@Repository
public class JobpostingDAOImpl implements JobpostingDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Job> findJobList() {
		List<Job> jobList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobList");
		return jobList;
	}
	
	public List<Jobposting> findJobpostingList() {
		List<Jobposting> jobpostingList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobpostingList");
		return jobpostingList;
	}
	
	/*
	 * public List<Jobposting> findJobpostingListBySearchCondition(String
	 * searchKeyword){ List<Jobposting> jobpostingList =
	 * sqlSessionTemplate.selectList(
	 * "jobPosting_mapper.findJobpostingListBySearchCondition", searchKeyword);
	 * return jobpostingList; }
	 */
	
	/*
	 * public List<Jobposting>
	 * findPostingListBySearchCondition(PostingSearchCondition
	 * postingSearchCondition){ List<Jobposting> jobpostingList =
	 * sqlSessionTemplate.selectList(
	 * "jobPosting_mapper.findPostingListBySearchCondition",postingSearchCondition);
	 * return jobpostingList; }
	 */
	
	public List<Jobposting> findPostingListBySearchCondition(String keyword){
		List<Jobposting> jobpostingList = sqlSessionTemplate.selectList("jobPosting_mapper.findPostingListBySearchCondition",keyword);
		return jobpostingList;
	}
	
	public List<Jobposting> findPostingListByjobscatename(String jobsCateName){
		List<Jobposting> jobpostingList = sqlSessionTemplate.selectList("jobPosting_mapper.findPostingListByjobscatename",jobsCateName);
		return jobpostingList;
	
	}
	
	
	
	
	public List<Jobposting> findPostingAndJobNameList(){
		List<Jobposting> jobpostingNameList = sqlSessionTemplate.selectList("jobPosting_mapper.findPostingAndJobNameList");
		return jobpostingNameList;
	}
	
	
	public List<Job> findJobNameListbyPid(int jobLevel1) {
		List<Job> jobNameList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobNameListbyPid", jobLevel1);
		return jobNameList;
	}

	public int saveJobposting(Jobposting jobposting) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.saveJobposting", jobposting);
		return result;
	}

	public int saveDescription(Description description) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.saveDescription", description);
		return result;
	}
	
	public Jobposting findPostingBypostingId(String postingId) {
		Jobposting jobposting = sqlSessionTemplate.selectOne("jobPosting_mapper.findPostingBypostingId", postingId);
		return jobposting;
	}
	
	public Description findDescriptionBypostingId(String postingId) {
		Description description = sqlSessionTemplate.selectOne("jobPosting_mapper.findDescriptionBypostingId", postingId);
		return description;
	}
	
	public int modifyJobposting(Jobposting jobposting) {
		int result = sqlSessionTemplate.update("jobPosting_mapper.modifyJobposting", jobposting);
		return result;
	}

	public int modifyDescription(Description description) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.modifyDescription", description);
		return result;
	}
	
	public int saveFaqs(FAQs faqs) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.saveFaqs", faqs);
		return result;
	}
	
	public List<FAQs> findFaqsList(){
		List<FAQs> faqsList = sqlSessionTemplate.selectList("jobPosting_mapper.findFaqsList");
		return faqsList;
	}
	
	public FAQs findFaqsbyId(String FAQsId){
		FAQs faqs = sqlSessionTemplate.selectOne("jobPosting_mapper.findFaqsbyId", FAQsId);
		return faqs;
	}
	
	public int modifyFaqs(FAQs faqs){
		int result = sqlSessionTemplate.insert("jobPosting_mapper.modifyFaqs", faqs);
		return result;
	}
	
	public int removeFaqsById(String FAQsId) {
		int result = sqlSessionTemplate.delete("jobPosting_mapper.removeFaqs", FAQsId);
		return result;
	}

	@Override
	public List<EmployeeJobsInfo> findEmployeeJobsInfoList() {
		List<EmployeeJobsInfo> findEmployeeJobsInfoList = sqlSessionTemplate.selectList("jobPosting_mapper.findEmployeeJobsInfoList");
		return findEmployeeJobsInfoList;
	}

	@Override
	public List<Job> findJobsNameByLevel1() {
		List<Job> findJobsNameByLevel1List = sqlSessionTemplate.selectList("jobPosting_mapper.findJobsNameByLevel1");
		return findJobsNameByLevel1List;
	}
	
	
}