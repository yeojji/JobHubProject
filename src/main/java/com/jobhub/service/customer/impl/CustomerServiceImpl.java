package com.jobhub.service.customer.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.customer.CustomerDAO;
import com.jobhub.dto.customer.Customer;
import com.jobhub.service.customer.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO customerDAO;
	
	@Override
	public int saveUser(Customer customer) {
		// TODO Auto-generated method stub
		int result = customerDAO.saveUser(customer);
		return result;
	}

	

}
