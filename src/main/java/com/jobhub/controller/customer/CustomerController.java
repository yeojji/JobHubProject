package com.jobhub.controller.customer;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jobhub.dto.customer.Customer;
import com.jobhub.dto.customer.Scrap;
import com.jobhub.dto.employee.Employee;
import com.jobhub.dto.employee.EmployeeJobsInfo;
import com.jobhub.dto.jobposting.Job;
import com.jobhub.service.admin.AdminService;
import com.jobhub.dto.jobposting.Jobposting;
import com.jobhub.dto.jobposting.Notice;
import com.jobhub.service.customer.CustomerService;
import com.jobhub.service.jobposting.JobpostingService;

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

		
		model.addAttribute("userId", customerInfo.getUserId());
		model.addAttribute("name", customerInfo.getName());
		model.addAttribute("email", customerInfo.getEmail());
		model.addAttribute("birth", customerInfo.getBirth());
		model.addAttribute("phone", customerInfo.getPhone());
		
	
		return "customer/mypage";
		
		
	}
	
	@GetMapping("/notice_info")
	public String noticeInfo(HttpSession session, Model model, Jobposting jobposting) {
		
		// notice_by_career에서 선택한 공고 가져와서 공고 정보 보여주기~~~~~~~~~
		
		
		
		
		return "/customer/notice_info";
	}
	
	
	@GetMapping("/scrap_page")
	public String scrap_page(HttpSession session,Customer customer, Model model) {
		
		String findCustomer = (String)session.getAttribute("loginId");
		
		session.getAttribute(findCustomer);
		
		List<Scrap> scrapList = customerService.customerScarpList(findCustomer);
		System.out.println(scrapList);
		List<Notice> noticeList = customerService.scrapNoticeInfo(findCustomer);
		model.addAttribute("scrapList",scrapList);
		model.addAttribute("noticeList", noticeList);
		
		
		return "customer/scrap_page";
	}
	
	
	@GetMapping("/scrapNotice")
	public String scrapNotice(@RequestParam(name="postingId")String postingId,
			HttpSession session, Scrap scrap, 
			Customer customer, Model model) {
		String userId = (String) session.getAttribute("loginId");
		
		scrap.setPostingId(postingId);
		scrap.setUserId(userId);
		
		model.addAttribute("scrap", scrap.getScrapStatus());
		
		System.out.println(customer.getUserId());
		scrap.setScrapStatus("1");
		int result = customerService.scrapNotice(scrap);
		
		System.out.println(result);
		if(result >0) {
			return "redirect:/";		
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
	        return "redirect:/scrap_page";
	    } else {
	    	
	        return "/"; 
	    }
	}
	
	@GetMapping("/deleteScrapItem")
	public String deleteScrapItem(@RequestParam(name = "scrapId1") String scrapId,
							@RequestParam(name = "postingId1") String postingId,
							Scrap scrap) {
	
		scrap.setScrapStatus("2");
		int result = customerService.removeCustomerScrapItem(scrapId);
		
		
		if(result > 0) {
			customerService.removeCustomerScrapItemByPostingId(postingId);
			
			return "redirect:/scrap_page";
		}else {
			return "/";
		}
		
	}
	
	
	
	@PostMapping("/mypage/modifyCustomerInfo")
	public String modifyCustomerInfo(Customer customer, Model model) {
		
		int result = customerService.modifyCustomerInfo(customer);
		
		if(result >0) {
			
			return "redirect:/";
		}else {
			
			
		}
		return "main/mainpage";
	}
	
	@PostMapping("/mypage/modifyPw")
	public String modifyCustomerPw(HttpSession session, Customer customer, Model model,HttpServletRequest request) {
		
		
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
	
	
	
	@GetMapping("/customer/notice_by_career")
	public String showAllNotice(Model model, HttpServletRequest request) {
		System.out.println("get 요청");
		
		List<Job> jobList = jobpostingService.findJobList();
		List<Jobposting> jobpostingList = jobpostingService.findJobpostingList();
		
		model.addAttribute("jobList" , jobList);
		model.addAttribute("jobpostingList" , jobpostingList);
		
		
		System.out.println(model.getAttribute("jobpostingList"));
		
		
		model.addAttribute("postingCount",sqlSession.selectOne("jobPosting_mapper.findPostingCount"));
		
		return "customer/notice_by_career";
	}
	

	

}