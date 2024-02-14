package com.jobhub.controller.customer;

import java.beans.Encoder;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.customer.Scrap;
import com.jobhub.dto.employee.EmployeeJobsInfo;
import com.jobhub.dto.jobposting.Description;
import com.jobhub.dto.jobposting.FAQs;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.dto.jobposting.Notice;
import com.jobhub.dto.jobposting.PostingSearchCondition;
import com.jobhub.dto.resume.Resume;
import com.jobhub.service.admin.AdminService;
import com.jobhub.service.customer.CustomerService;
import com.jobhub.service.jobposting.JobpostingService;

import oracle.sql.CharacterSet;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	JobpostingService jobpostingService;
	
	@Autowired
    private SqlSession sqlSession;
	
	
	@GetMapping("/login")
	public String login() {
		return "login/login";
	}
	
	private List<EmployeeJobsInfo> getRandomEmployeeJobsInfos(List<EmployeeJobsInfo> employeeList, int count) {
	    List<EmployeeJobsInfo> randomEmployeeInfos = new ArrayList<>();
	    Random random = new Random();
	    int listSize = employeeList.size();
	    
	    // 중복된 인덱스를 방지하기 위한 Set
	    Set<Integer> selectedIndices = new HashSet<>();
	    
	    for (int i = 0; i < count && i < listSize; i++) {
	        int randomIndex;

	        do {
	            randomIndex = random.nextInt(listSize);
	        } while (selectedIndices.contains(randomIndex));

	        selectedIndices.add(randomIndex);

	        randomEmployeeInfos.add(employeeList.get(randomIndex));
	    }
	    return randomEmployeeInfos;
	}

	@GetMapping("/")
	public String main(Model model) {
	    List<EmployeeJobsInfo> employeeJobsInfoList = jobpostingService.findEmployeeJobsInfoList();
	    List<EmployeeJobsInfo> randomEmployeeInfos = getRandomEmployeeJobsInfos(employeeJobsInfoList, 3);
	    
	    List<Job> findJobsNameByLevel1List = jobpostingService.findJobsNameByLevel1List();
	    
	    model.addAttribute("employeeInfoList",  randomEmployeeInfos);
	    
	    model.addAttribute("findJobsName", findJobsNameByLevel1List);

	    return "main/mainpage";
	}
	
	

	
	@PostMapping("/login")
	public String loginProcess(@ModelAttribute Customer customer, HttpSession session,  Model model) {
		
		Customer loginUser = customerService.findLoginCustomer(customer);
		
		if(loginUser == null || !(customer.getUserId().equals(loginUser.getUserId()))|| 
				!(customer.getPassword().equals(loginUser.getPassword())) || loginUser.getCustomerStatus().equals("2")) {
			
			
			model.addAttribute("msg", "로그인 정보가 맞지 않습니다");
			
			return "login/login";
			
			
		}else {
			
			session.setAttribute("loginId", loginUser.getUserId());
			session.setAttribute("loginPw", loginUser.getPassword());
			
			return "redirect:/";
			
		}

	}
	
	@PostMapping("/logout")
	public String logoutProcess(HttpServletRequest request, HttpSession session) {
		
		session.removeAttribute("loginId");
		
		return  "redirect:/";
	}
	
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model, Customer customer) {
		
		String findCustomer = (String)session.getAttribute("loginId");
		
		Customer customerInfo = customerService.findCustomerInfo(findCustomer);

		List<Resume> resumeList = customerService.customerResumeList(findCustomer);
		
		model.addAttribute("resumeList", resumeList);
		model.addAttribute("userId", customerInfo.getUserId());
		model.addAttribute("name", customerInfo.getName());
		model.addAttribute("email", customerInfo.getEmail());
		model.addAttribute("birth", customerInfo.getBirth());
		model.addAttribute("phone", customerInfo.getPhone());
		
	
		return "customer/mypage";
		
		
	}
	
	
	
	
	@GetMapping("/scrap_page")
	public String scrap_page(HttpSession session,Customer customer, 
			Model model,Scrap scrap) {
		
		String findCustomer = (String)session.getAttribute("loginId");
		
		session.getAttribute(findCustomer);
		
		List<Scrap> scrapList = customerService.customerScarpList(findCustomer);
		System.out.println(scrapList);
		if (!scrapList.isEmpty()) {
		    Scrap firstScrap = scrapList.get(0); 
		    String postingId = firstScrap.getPostingId(); 
		    List<Notice> noticeList = customerService.scrapNoticeInfo(postingId);
		    model.addAttribute("noticeList", noticeList);
		} else {
			
		}
		model.addAttribute("scrapList",scrapList);
		
		return "customer/scrap_page";
	}
	
	
	@GetMapping("/showScrapNoticeInfo")
	public String scrapNoticeInfo(@RequestParam(name="postingId")String postingId, HttpSession session, Customer customer, Model model) {
		
		String findCustomer = (String)session.getAttribute("loginId");
		
		session.getAttribute(findCustomer);
		
		List<Scrap> scrapList = customerService.customerScarpList(findCustomer);
		List<Notice> noticeList = customerService.scrapNoticeInfo(postingId);
		model.addAttribute("scrapList",scrapList);
		model.addAttribute("noticeList", noticeList);
		
		return "customer/scrap_page";
	}
	
	@GetMapping("/scrapNotice")
	public String scrapNotice(@RequestParam(name="postingId")String postingId,
			@RequestParam(name="userId")String userId, Scrap scrap) {

		scrap.setPostingId(postingId);
		scrap.setUserId(userId);
		scrap.setScrapStatus("1");
		
		int result = customerService.scrapNotice(scrap);
		
		if(result >0) {
			return "redirect:/customer/notice_by_career";		
		}else {
			return "/";
		}
		
	}
	
	@GetMapping("/deleteAllScrap")
	public String deleteAllScrap(HttpSession session,Customer customer, Scrap scrap) {
		
		String findCustomer = (String)session.getAttribute("loginId");
		
		scrap.setScrapStatus("2");
	    int result = customerService.removeCustomerScrapList(findCustomer);

	    
	    if (result > 0) {
	        return "redirect:/customer/notice_by_career";
	    } else {
	    	
	        return "/"; 
	    }
	}
	
	@GetMapping("/deleteScrapItem")
	public String deleteScrapItem(@RequestParam(name = "scrapId") String scrapId,
							@RequestParam(name = "postingId") String postingId,
							Scrap scrap) {
		System.out.println(scrapId);
		System.out.println(postingId);
		scrap.setScrapStatus("2");
		int result = customerService.removeCustomerScrapItem(scrapId);
		System.out.println(result);
		
		if(result > 0) {
			customerService.removeCustomerScrapItemByPostingId(postingId);
			
			return "redirect:/customer/notice_by_career";
		}else {
			return "/";
		}
		
	}
	
	
	
	@PostMapping("/mypage/modifyCustomerInfo")
	public String modifyCustomerInfo(Customer customer, Model model) {
		
		int result = customerService.modifyCustomerInfo(customer);
		
		if(result >0) {
			
			return "redirect:/customer/mypage";
		}else {
			
			
		}
		return "main/mainpage";
	}
	
	@PostMapping("/mypage/modifyPw")
	public String modifyCustomerPw(HttpSession session, Customer customer, Model model,
			HttpServletRequest request) {
		
		
		int result = customerService.modifyCustomerPw(customer);
		
		if(result > 0) {
			session.removeAttribute("loginId");
			session.removeAttribute("loginPw");
			return "redirect:/login";
		}else {
			
			model.addAttribute("error", "비밀번호 수정에 실패하였습니다.");
			return "customer/mypage";
		}
		
	}
	
	
	@PostMapping("/mypage/remove")
	public String removeCustomer(HttpSession session, Customer customer, Model model, HttpServletRequest request) {
		customer.setCustomerStatus("2");
		int result = customerService.removeCustomer(customer);
		
		if(result > 0) {
			session.removeAttribute("loginId");
			session.removeAttribute("loginPw");
			
			return "redirect:/";
		}else {
			model.addAttribute("msg", "삭제 실패");
			return "customer/mypage";
		}

		
	}
	
	
	

	//jobs
	//jobsMain
	
	@GetMapping("/customer/notice_by_career")
	public String showAllNotice(Model model,  String keyword ) {
		
		List<Job> jobList = jobpostingService.findJobList();
		//List<Jobposting> jobpostingList = jobpostingService.findJobpostingList();
		//List<Jobposting> jobpostingNameList = jobpostingService.findPostingAndJobNameList();
		
		List<Jobposting> jobpostingNameList = jobpostingService.findPostingAndJobNameListBySearchCondition(keyword);
		
		model.addAttribute("jobList" , jobList);
		//model.addAttribute("jobpostingList" , jobpostingList);
		model.addAttribute("jobpostingNameList" , jobpostingNameList);
		
		
		
		model.addAttribute("postingCount",sqlSession.selectOne("jobPosting_mapper.findPostingCountOpen"));
		
		return "customer/notice_by_career";
	}
	
	//jobs category 별로 화면 바뀌는 거
	@GetMapping("/list")
	public String list( Model model , @RequestParam String jobsCateName ) throws UnsupportedEncodingException {
		
		
		List<Jobposting>  jobpostingList = jobpostingService.findPostingListByjobscatename(jobsCateName);
		List<Job> jobList = jobpostingService.findJobList();
		
		for(Job job : jobList) {
			job.setJobsNameEncoded(java.net.URLEncoder.encode(job.getJobsName(), "UTF-8"));
		}
		
		List<Jobposting> jobpostingNameList = jobpostingService.findPostingAndJobNameList();
		
		model.addAttribute("postingCount",sqlSession.selectOne("jobPosting_mapper.findPostingCountByCate",jobsCateName));
		
		model.addAttribute("jobpostingList",jobpostingList);
		model.addAttribute("jobList" , jobList);
		model.addAttribute("jobpostingNameList" , jobpostingNameList);
		
		return "customer/list";
	}

@GetMapping("/customer/notice_by_career")
public String showAllNotice(HttpSession session, Jobposting postingId,
		 Customer userId, Model model, PostingSearchCondition postingSearchCondition,Scrap scrap) {
   
	String findCustomer = (String)session.getAttribute("loginId");
	session.getAttribute(findCustomer);
	
	
	model.addAttribute("loginId", findCustomer);
	System.out.println(findCustomer);
   List<Job> jobList = jobpostingService.findJobList();
   List<Jobposting> jobpostingList = jobpostingService.findJobpostingList();
   List<Jobposting> jobpostingNameList = jobpostingService.findPostingAndJobNameList();
   
   model.addAttribute("jobList" , jobList);
   model.addAttribute("jobpostingList" , jobpostingList);
   model.addAttribute("jobpostingNameList" , jobpostingNameList);
   
   model.addAttribute("postingCount",sqlSession.selectOne("jobPosting_mapper.findPostingCountOpen"));
   
   if(session.getAttribute(findCustomer) != null) {
   List<Scrap> scrapList = customerService.customerScarpList(findCustomer);

   System.out.println(scrapList);
   model.addAttribute("scrapList", scrapList);
   }
   return "customer/notice_by_career";
}

//jobs category 별로 화면 바뀌는 거
@GetMapping("/list")
public String list(@RequestParam String jobsCateName, Model model) {
	  
   List<Jobposting>  jobpostingList = jobpostingService.findPostingListByjobscatename(jobsCateName);
   List<Job> jobList = jobpostingService.findJobList();
   List<Jobposting> jobpostingNameList = jobpostingService.findPostingAndJobNameList();
   
   model.addAttribute("postingCount",sqlSession.selectOne("jobPosting_mapper.findPostingCountByCate",jobsCateName));
   
   model.addAttribute("jobpostingList",jobpostingList);
   model.addAttribute("jobList" , jobList);
   model.addAttribute("jobpostingNameList" , jobpostingNameList);
   
   return "customer/list";
}

//jobs 제목 누르면 상세보기 페이지
@GetMapping("/jobsDescription")
public String jobsDescription(@RequestParam String postingId, Model model, HttpSession session) {
   
	String loginId = (String)session.getAttribute("loginId");
	session.getAttribute(loginId);
	model.addAttribute("loginId", loginId);
	
   Jobposting jobposting = jobpostingService.findPostingBypostingId(postingId);
   Description description = jobpostingService.findDescriptionBypostingId(postingId);
   
   System.out.println(jobposting + "공고");
   System.out.println(description + "공고상세");
   
   model.addAttribute("postingId", jobposting.getPostingId());
   model.addAttribute("jobposting", jobposting);
   model.addAttribute("description", description);
   
   return "customer/jobsDescription";
}
   

//faqs
//faqs 메인
@GetMapping("/cus/faqs")
public String showFaqs(Model model) {
   List<FAQs> faqsList = jobpostingService.findFaqsList();
   model.addAttribute("faqsList" , faqsList);
   return "customer/faqs";
}








//   @GetMapping("/notice_info")
//   public String showNoticeInfo() {
//      return "customer/notice_info";
//   }

}