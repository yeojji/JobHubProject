package com.jobhub.dao.customer;

import java.util.List;

import com.jobhub.dto.customer.Customer;

public interface CustomerDAO {

	public int saveUser(Customer customer);

	public Customer findCustomerInfo(String userId);
	
	public Customer findLoginCustomer (Customer customer);
	
	public int modifyCustomerInfo(Customer customer);
	
	public int modifyCustomerPw(Customer customer);
	
	public int removeCustomer(Customer customer);
}
