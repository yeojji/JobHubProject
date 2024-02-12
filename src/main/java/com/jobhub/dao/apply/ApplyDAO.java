package com.jobhub.dao.apply;

import java.util.Map;

import com.jobhub.dto.util.FileInfo;

public interface ApplyDAO {
	
	public int saveCareerInfo(Map<String, Object> hashMap);
	
	public int saveCertificateInfo(Map<String, Object> hashMap);
	
	public int saveFileInfo(FileInfo fileInfo);

}
