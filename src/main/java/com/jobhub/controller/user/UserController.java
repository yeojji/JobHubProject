package com.jobhub.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "user_mypage/mypage";
	}
	
	
}
