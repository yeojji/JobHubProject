package com.jobhub.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

@Controller
@RequestMapping("/admin")
public class AdminMailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	 @ResponseBody
	    public ResponseEntity<String> sendMail(@RequestParam("email") String email) {
	        try {
	            String subject = "Jobhub 합격 안내";
	            String content = "Jobhub 합격을 축하드립니다. 채용관련 문의는 02-999-999를 통해 가능합니다.";
	            String from = "jobhub2024@naver.com";

	            MimeMessage mimeMessage = mailSender.createMimeMessage();
	            MimeMessageHelper mailHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
	            mailHelper.setFrom(from);
	            mailHelper.setTo(email);
	            mailHelper.setSubject(subject);
	            mailHelper.setText(content, true);

	            mailSender.send(mimeMessage);

	            return ResponseEntity.ok("이메일이 성공적으로 발송되었습니다.");
	        } catch (Exception e) {
	            e.printStackTrace();
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("이메일 발송 중 오류가 발생했습니다.");
	        }
	    }
	}