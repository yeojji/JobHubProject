package com.jobhub.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jobhub.service.customer.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	
	
	
}
