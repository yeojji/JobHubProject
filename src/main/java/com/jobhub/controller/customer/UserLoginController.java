package com.jobhub.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.service.customer.CustomerService;

@Controller
public class UserLoginController {
	
	@Autowired
	CustomerService customerService;

	
	@RequestMapping("/sign-up")
	public String signUp() {
		return "login/signup";
	}
}
