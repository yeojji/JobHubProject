package com.jobhub.dao.customer.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.customer.CustomerDAO;
import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.customer.CustomerSearchCondition;
import com.jobhub.dto.jobposting.Job;
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
	@Override
	public List<Customer> findCustomerList() {
		List<Customer> customerList = sqlSessionTemplate.selectList("user_mapper.findCustomerList");
		return customerList;
	}
	@Override
	public List<Customer> findCustomerListBySearchCondition(CustomerSearchCondition customerSearchCondition) {
		List<Customer> customerList = sqlSessionTemplate.selectList("user_mapper.findCustomerListBySearchCondition", customerSearchCondition);
		return customerList;
	}
	


}


