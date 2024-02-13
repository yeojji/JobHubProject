package com.jobhub.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.admin.AdminDAO;
import com.jobhub.dto.admin.Admin;
import com.jobhub.dto.admin.AdminProfile;
import com.jobhub.dto.admin.AdminSearchCondition;
import com.jobhub.dto.employee.Employee;
import com.jobhub.dto.employee.EmployeeProfile;
import com.jobhub.dto.employee.EmployeeSearchCondition;
import com.jobhub.service.admin.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO adminDAO;

	@Override
	public Admin isValidAdminLogin(Admin admin) {
		// Controller 가 넘겨준 id, pw 하고 DB 에 일치하는 id, pw 있는지 확인
		System.out.println("AdminServiceImpl isValidLogin 메소드 호출");

		Admin loginAdmin = adminDAO.findLoginAdmin(admin);

		// 있다? return user;
		// 없다? return null;
		return loginAdmin;
	}

	@Override
	public int saveAdmin(Admin admin) {
		int result = adminDAO.saveAdmin(admin);
		return result;
	}

	@Override
	public List<Admin> findAdminList() {
		List<Admin> adminList = adminDAO.findAdminList();
		return adminList;
	}

	@Override
	public List<Admin> findAdminListBySearchCondition(AdminSearchCondition adminSearchCondition) {
		List<Admin> adminList = adminDAO.findAdminListBySearchCondition(adminSearchCondition);
		return adminList;
	}

	@Override
	public boolean isDuplicatedId(String id) {
		// TODO Auto-generated method stub
		// PK 기준으로 해당 데이터를 조회(read / select)
		/*
		 * UserSearchCondition userSearchCondition = new UserSearchCondition();
		 * userSearchCondition.setId(id); userSearchCondition.setSearchKeyword(id);
		 * List<User> userList =
		 * userDAO.findUserListBySearchCondition(userSearchCondition); userList.get(0);
		 * userList.size()==0
		 */
		Admin admin = adminDAO.findAdminByAdminId(id);
		if (admin == null) {
			return false; // return 0;
		} else {
			return true; // return 1;
		}
	}

	@Override
	public int saveAdminProfile(AdminProfile adminProfile) {
		int result = adminDAO.saveAdminProfile(adminProfile);
		return result;
	}

	@Override
	public Admin findAdminByAdminId(String id) {
		Admin admin = adminDAO.findAdminByAdminId(id);
		return admin;
	}

	@Override
	public List<Admin> findAdminListByPermissionCode(String permissionCode) {
		List<Admin> adminList = adminDAO.findAdminListByPermissionCode(permissionCode);
		return adminList;
	}

	@Override
	public int saveEmployeeProfile(EmployeeProfile employeeProfile) {
		int result = adminDAO.saveEmployeeProfile(employeeProfile);
		return result;
	}

	@Override
	public List<EmployeeProfile> findEmployeeProfileByName(String name) {
		List<EmployeeProfile> employeeProfileList = adminDAO.findEmployeeProfileByName(name);
		return employeeProfileList;
	}

	@Override
	public List<Employee> findEmployeeList() {
		List<Employee> employeeList = adminDAO.findEmployeeList();
		return employeeList;
	}

	@Override
	public List<Employee> findEmployeeListByJobsId(String jobsId) {
		List<Employee> employeeList = adminDAO.findEmployeeListByJobsId(jobsId);
		return employeeList;
	}

	@Override
	public List<Employee> findEmployeeListBySearchCondition(EmployeeSearchCondition employeeSearchCondition) {
		List<Employee> employeeList = adminDAO.findEmployeeListBySearchCondition(employeeSearchCondition);
		return employeeList;
	}

}
