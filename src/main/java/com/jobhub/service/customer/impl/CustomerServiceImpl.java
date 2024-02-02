package com.jobhub.service.customer.impl;

import java.util.List;

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
	public List<Customer> findCustomerList() {
		// TODO Auto-generated method stub
		List<Customer> customerList = customerDAO.findCustomerList();
		
		
		return customerList;
	}

	@Override
	public Customer findLoginCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		Customer loginCustomer = customerDAO.findLoginCustomer(customer);
		return loginCustomer;
	}

	

	
}
