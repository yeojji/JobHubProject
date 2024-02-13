package com.jobhub.controller.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobhub.dto.employee.Employee;
import com.jobhub.service.apply.ApplyService;

@Controller
public class EmployeeController {

	@Autowired
	ApplyService applyService;

	@RequestMapping("/people")
	public String people(Model model, Employee emp) {

		List<Employee> empList = applyService.findEmployeeList();

		model.addAttribute("empList", empList);
		return "employee/people";
	}
}
