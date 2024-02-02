package com.jobhub.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jobhub.dto.customer.Customer;
import com.jobhub.service.customer.CustomerService;

@Controller
public class UserLoginController {
	
	@Autowired
	CustomerService customerService;

	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping("/sign-up")
	public String signUp() {
		return "login/signup";
	}
	
	@PostMapping("/sign-up")
	public String signUpProcess(@ModelAttribute Customer customer) {
		
		System.out.println(customer);
		
		int result = customerService.saveUser(customer);
		
		if(result > 0) {
			return "redirect:/sign-up";
		}else {
			return "login/sign-up";
		}
	}
	
	
}
