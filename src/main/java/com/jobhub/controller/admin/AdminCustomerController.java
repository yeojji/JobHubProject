package com.jobhub.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.customer.CustomerSearchCondition;
import com.jobhub.service.customer.CustomerService;
import com.jobhub.service.resume.ResumeService;
import com.jobhub.util.LoginManager;

@Controller
@RequestMapping("/admin")
public class AdminCustomerController {
	
	@Autowired
	ResumeService resumeService;

	@Autowired
	CustomerService customerService;

	@Autowired
	LoginManager loginManager;
	
	@GetMapping("/customers")
	public String users(Model model, @ModelAttribute CustomerSearchCondition customerSearchCondition) {
		System.out.println("Received customerSearchCondition: " + customerSearchCondition);
		List<Customer> customerList;
		
		// 검색 조건이 없을 때 전체 목록을 가져옴

				if (customerSearchCondition != null) {
					customerList = customerService.findCustomerListBySearchCondition(customerSearchCondition);
				} else {
					customerList = customerService.findCustomerList();
				}
				model.addAttribute("customerList", customerList);

				return "admin/userManagement";
			}
}
