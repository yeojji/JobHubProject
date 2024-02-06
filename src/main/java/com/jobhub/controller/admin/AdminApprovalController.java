package com.jobhub.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminApprovalController {

	
	// 관리자 승인 요청 페이지
	@GetMapping("/admin/joinApproval")
	public String joinApproval() {
		return "admin/joinApproval";
	}
	
	
	
}
