package com.jobhub.dao.jobposting.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;

@Repository
public class JobpostingDAOImpl implements JobpostingDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Job> findJobList() {
		List<Job> jobList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobList");
		return jobList;
	}

	public List<Job> findJobNameListbyPid(int jobLevel1) {
		List<Job> jobNameList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobNameListbyPid");
		return jobNameList;
	}

	
	  public List<Job> cateList(){ 
		  List<Job> cateList = sqlSessionTemplate.selectList("jobPosting_mapper.cateList"); return cateList;
	  }
	 

	public int saveJobposting(Jobposting jobposting) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.saveJobposting", jobposting);
		return result;
	}

	public int saveDescription(Description description) {
		int result = sqlSessionTemplate.insert("jobPosting_mapper.saveDescription", description);
		return result;
	}

}