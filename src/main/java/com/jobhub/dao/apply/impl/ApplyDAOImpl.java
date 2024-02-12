package com.jobhub.dao.apply.impl;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.apply.ApplyDAO;
import com.jobhub.dto.util.FileInfo;

@Repository
public class ApplyDAOImpl implements ApplyDAO{
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int saveCareerInfo(Map<String, Object> hashMap) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("apply_mapper.saveCareerInfo", hashMap);
		
		return result;
	}

	@Override
	public int saveCertificateInfo(Map<String, Object> hashMap) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("apply_mapper.saveCertificateInfo", hashMap);
		
		return result;
	}

	@Override
	public int saveFileInfo(FileInfo fileInfo) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("apply_mapper.saveFileInfo", fileInfo);
		
		return result;
	}

}
