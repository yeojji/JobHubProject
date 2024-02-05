package com.jobhub.service.customer;
import java.util.List;

import com.jobhub.dto.customer.Customer;
public interface CustomerService {

	//customer 계정생성, 로그인, 목록, 검색, 비밀번호 찾기, 정보 수정
	
	public List<Customer> findCustomerList();
	
	public Customer findLoginCustomer (Customer customer);

	public int saveUser(Customer customer);

}
