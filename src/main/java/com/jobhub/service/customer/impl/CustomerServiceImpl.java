package com.jobhub.service.customer.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.customer.CustomerDAO;
import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.service.customer.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO customerDAO;
	

	
	@Override
	public Customer findCustomerInfo(String userId) {
		// TODO Auto-generated method stub
		Customer findCustomerInfo = customerDAO.findCustomerInfo(userId);
		
		return findCustomerInfo;
	}

	@Override
	public Customer findLoginCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		Customer loginCustomer = customerDAO.findLoginCustomer(customer);
		return loginCustomer;
	}

	public int saveUser(Customer customer) {
		// TODO Auto-generated method stub
		int result = customerDAO.saveUser(customer);
		return result;
	}

	@Override
	public int modifyCustomerInfo(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = customerDAO.modifyCustomerInfo(customer);
		
		
		return result;
	}

	@Override
	public int modifyCustomerPw(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = customerDAO.modifyCustomerPw(customer);
		
		return result;
	}

	@Override
	public int removeCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		int result = customerDAO.removeCustomer(customer);
		return result;
	}

	
}
