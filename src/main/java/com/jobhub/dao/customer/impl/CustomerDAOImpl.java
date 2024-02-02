package com.jobhub.dao.customer.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.customer.CustomerDAO;
import com.jobhub.dto.customer.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int saveUser(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = sqlSessionTemplate.insert("login_mapper.saveUser", customer);
		return result;
	}


	
}
