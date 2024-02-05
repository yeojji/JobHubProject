package com.jobhub.controller.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.dto.customer.Customer;
import com.jobhub.service.customer.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	
	@PostMapping("/login")
	public String loginProcess(@ModelAttribute Customer customer, HttpSession session) {
		
		System.out.println(customer.getUserId());
		
		
		Customer loginCustomer = customerService.findLoginCustomer(customer);
		
		session.setAttribute("loginId", loginCustomer.getUserId());
		
		System.out.println(customer);
		
		
		return "main/mainpage";
	}

	

	@GetMapping("/notice_info")
	public String notice_info_page() {
		return "customer/notice_info";
	}
	
	@GetMapping("/scrap")
	public String scrap_page() {
		return "customer/scrap_page";
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		
		List<Customer> customerList = customerService.findCustomerList();
		
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("email", session.getAttribute("email"));
		model.addAttribute("birth", session.getAttribute("birth"));
		model.addAttribute("phone", session.getAttribute("phone"));
		
		System.out.println(session.getAttribute("name"));
		
		return "customer/mypage";
	}
	
	
	
	
	
	
}
