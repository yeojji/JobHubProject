package com.jobhub.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobhub.dto.api.ApiResponse;
import com.jobhub.dto.customer.Customer;
import com.jobhub.service.apply.ApplyService;
import com.jobhub.service.customer.CustomerService;

@Controller
public class UserLoginController {
	
	@Autowired
	CustomerService customerService;
	
	@Autowired
	ApplyService applyService;

	@RequestMapping("/sign-up")
	public String signUp() {
		return "login/signup";
	}
	
	@PostMapping("/sign-up")
	public String signUpProcess(@ModelAttribute Customer customer) {
		
		System.out.println(customer);
		
		int result = customerService.saveUser(customer);
		System.out.println(result);
		if(result > 0) {
			return "redirect:/login";
		}else {
			return "login/sign-up";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/customer/isDuplicatedId")
	public ApiResponse isDuplecatedId(@RequestBody String id) {
		
		System.out.println(id);
		
		boolean result = applyService.isDuplicatedId(id);
	
		ApiResponse res = new ApiResponse();
		
		if(result) {
			res.setResultCode(100);
			res.setMsg("중복입니다.");
			res.setData(id);
		}else {
			res.setResultCode(200);
			res.setMsg("사용가능합니다.");
			res.setData(id);
		}
		
		return res;
		
	}
	
	
}
