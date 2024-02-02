package com.jobhub.dao.jobposting.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.jobposting.JobpostingDAO;
import com.jobhub.dto.jobposting.Job;

@Repository
public class JobpostingDAOImpl implements JobpostingDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Job> findJobList(){
		List<Job> jobList = sqlSessionTemplate.selectList("jobPosting_mapper.findJobList");
		return jobList;
	}
	
}