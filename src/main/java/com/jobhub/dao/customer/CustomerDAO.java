package com.jobhub.dao.customer;

import java.util.List;

import com.jobhub.dto.customer.Customer;

public interface CustomerDAO {
	
	public List<Customer> findCustomerList();
	
	public Customer findLoginCustomer (Customer customer);
}
