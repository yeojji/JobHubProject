package com.jobhub.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.jobhub.service.admin.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@GetMapping("/admin")
	public String admin() {
		
		return "admin/login";
	}
	
	
	
}
