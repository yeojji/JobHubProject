package com.jobhub.service.apply;

import java.util.Map;

public interface ApplyService {
	public int saveCareerInfo(Map<String, Object> hashMap);
	
	public int saveCertificateInfo(Map<String, Object> hashMap);

}
