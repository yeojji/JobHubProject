package com.jobhub.dao.customer.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.customer.CustomerDAO;
import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.customer.Scrap;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Notice;
import com.jobhub.dto.resume.Resume;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public Customer findCustomerInfo(String userId) {
		// TODO Auto-generated method stub
		
		Customer findCustomerInfo = sqlSessionTemplate.selectOne("user_mapper.findCustomerInfo", userId);
		
		return findCustomerInfo;
	}
	@Override
	public int saveUser(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("login_mapper.saveUser", customer);
		return result;
	}

	@Override
	public Customer findLoginCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		Customer loginCustomer = sqlSessionTemplate.selectOne("user_mapper.findLoginCustomer", customer);
		return loginCustomer;
	}
	
	
	@Override
	public int modifyCustomerInfo(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.update("user_mapper.modifyCustomerInfo",customer);
		
		
		return result;
	}
	@Override
	public int modifyCustomerPw(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.update("user_mapper.modifyCustomerPw", customer);
		
		
		return result;
	}
	@Override
	public int removeCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.update("user_mapper.removeCustomer", customer);
		
		return result;
	}
//	@Override
//	public int savePosting(Scrap scarpId) {
//		// TODO Auto-generated method stub
//		int result = sqlSessionTemplate.insert("user_mapper.scrap",scarpId);
//		return result;
//	}
	
	@Override
	public List<Scrap> customerScarpList(String userId) {
		// TODO Auto-generated method stub
		List<Scrap> scrapList = sqlSessionTemplate.selectList("user_mapper.customerScarpList",  userId);
		
		return scrapList;
	}
	@Override
	public int removeCustomerScrapList(String userId) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("user_mapper.removeCustomerScrapList", userId);
		
		return result;
	}
	@Override
	public List<Notice> scrapNoticeInfo(String scrapId) {
		// TODO Auto-generated method stub
		List<Notice> noticeList = sqlSessionTemplate.selectList("user_mapper.scrapNoticeInfo",scrapId);
		
		return noticeList;
	}
	@Override
	public int removeCustomerScrapItem(String scrapId) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.delete("user_mapper.removeCustomerScrapItem", scrapId);
		
		return result;
	}
	@Override
	public int removeCustomerScrapItemByPostingId(String postingId) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.delete("user_mapper.removeCustomerScrapItemByPostingId", postingId);
		
		return result;
	}
	@Override
	public int scrapNotice(Scrap scrapId) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("user_mapper.scrapNotice", scrapId);
		
		return result;
	}
	@Override
	public List<Resume> customerResumeList(String userId) {
		// TODO Auto-generated method stub
		
		List<Resume> resumeList = sqlSessionTemplate.selectList("resume_mapper.findResumesByUserId", userId);
		
		return resumeList;
	}
	@Override
	public String pwCheck(String userId) throws Exception {
		// TODO Auto-generated method stub
		
		String pwCheck = sqlSessionTemplate.selectOne("user_mapper.pwCheck", userId);
		
		return pwCheck;
	}
	@Override
	public void pwUpdate(String userId, String hashedPw) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userPw", hashedPw);
		sqlSessionTemplate.update("user_mapper.pwUpdate", map);
		
	}
	
	


}


