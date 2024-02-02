package com.jobhub.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.common.CommonCode;
import com.jobhub.dto.admin.Admin;
import com.jobhub.service.admin.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	
	@RequestMapping
	public String admin(HttpSession session) {
		
		if(session == null || session.getAttribute("loginId") == null){
			return "redirect:/admin/login";
		}
		return "admin/adminMain";
	}

	// 로그인
	@GetMapping("/login")
	public String login() {
		return "admin/login";
	}
	
	@PostMapping("/login")
	public String loginProcess(@ModelAttribute Admin admin, HttpSession session) {  
		
		System.out.println(admin);
		
		//로그인 정보 (id, pw)
		//로그인 로직처리 - Service
		
		User loginUser = userService.isValidAdminLogin(user); //id pw
		
		//loginUser.getUserType().equals(CommonCode.USER_USERTYPE_CUSTOMER)
		if(loginUser == null || !(loginUser.getUserType().equals(CommonCode.USER_USERTYPE_ADMIN)) ) { //정보가 안맞는 경우
								  
			//  id pw 일치 X  || 일치O 고객 아이디
			return "admin/login";  //로그인 실패
		}
		
		//로그인 정보 처리
		session.setAttribute("loginId", loginUser.getId()); //로그인한 사용자의 id를 세션에 저장
		
		return "redirect:/admin";
	}

	
	// 관리자 승인 요청
	@GetMapping("/admin/adminJoinRequest")
	public String adminJoinRequest() {
		
		return "admin/adminJoinRequest";
	}
	
	


	
}
