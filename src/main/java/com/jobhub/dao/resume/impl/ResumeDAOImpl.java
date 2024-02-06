package com.jobhub.dao.resume.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.resume.ResumeDAO;
import com.jobhub.dto.resume.ResumeEducationForm;

@Repository
public class ResumeDAOImpl implements ResumeDAO{
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int saveEducationInfo(Map<String, Object> eduMap) {
		// TODO Auto-generated method stub
		System.out.println("이력서DAO에서 보내는 출력문");
		int result = sqlSessionTemplate.insert("apply_mapper.saveEducationInfo", eduMap);
		
		return result;
	}

	@Override
	public int saveEducationInfo(ResumeEducationForm educationForm) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("apply_mapper.saveEducationInfo", educationForm);
		
		return result;
	}

	@Override
	public int saveEducationInfo(List<ResumeEducationForm> educationForm) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.insert("apply_mapper.saveEducationInfo", educationForm);
		
		return result;
	}
	
	
	
}
