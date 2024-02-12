package com.jobhub.service.apply.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.apply.ApplyDAO;
import com.jobhub.dto.util.FileInfo;
import com.jobhub.service.apply.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService{

	@Autowired
	ApplyDAO applyDAO;
	
	@Override
	public int saveCareerInfo(Map<String, Object> hashMap) {
		// TODO Auto-generated method stub

		int result = applyDAO.saveCareerInfo(hashMap);
		
		return result;
	}

	@Override
	public int saveCertificateInfo(Map<String, Object> hashMap) {
		// TODO Auto-generated method stub
		
		int result = applyDAO.saveCertificateInfo(hashMap);
		
		return result;
	}

	@Override
	public int saveFileInfo(FileInfo fileInfo) {
		// TODO Auto-generated method stub
		
		int result = applyDAO.saveFileInfo(fileInfo);
		
		return result;
	}

}
