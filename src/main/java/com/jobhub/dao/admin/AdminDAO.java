package com.jobhub.dao.admin;

import java.util.List;

import com.jobhub.dto.admin.Admin;
import com.jobhub.dto.admin.AdminProfile;
import com.jobhub.dto.admin.AdminSearchCondition;
import com.jobhub.dto.employee.Employee;
import com.jobhub.dto.employee.EmployeeProfile;
import com.jobhub.dto.employee.EmployeeSearchCondition;

public interface AdminDAO {
	
	public Admin findLoginAdmin(Admin admin);
	
	public int saveAdmin(Admin admin);
	
	public int saveAdminProfile(AdminProfile adminProfile);
	
	public List<Admin> findAdminList();
	
	public Admin findAdminByAdminId(String id);
	
	public List<Admin> findAdminListBySearchCondition(AdminSearchCondition adminSearchCondition);
	
	public List<Admin> findAdminListByPermissionCode(String PermissionCode);
	
	public int saveEmployeeProfile(EmployeeProfile employeeProfile);
	
	public List<EmployeeProfile> findEmployeeProfileByName(String name);
	
	public List<Employee> findEmployeeList();
	
	public List<Employee> findEmployeeListByJobsId(String jobsId);
	
	public List<Employee> findEmployeeListBySearchCondition(EmployeeSearchCondition employeeSearchCondition);
	
}
