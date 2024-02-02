package com.jobhub.dao.admin.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jobhub.dao.admin.AdminDAO;
import com.jobhub.dto.admin.Admin;
import com.jobhub.dto.admin.AdminSearchCondition;
import com.jobhub.dto.employee.Employee;
import com.jobhub.dto.employee.EmployeeProfile;
import com.jobhub.dto.employee.EmployeeSearchCondition;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public Admin findLoginAdmin(Admin admin) {
		System.out.println("AdimDao findLoginAdmin 메소드 호출");
		
		Admin loginAdmin = sqlSessionTemplate.selectOne("admin_mapper.findLoginAdmin", admin);
		return loginAdmin;
		
	}

	@Override
	public int saveAdmin(Admin admin) {
		//DB에 Admin 저장
		int result = sqlSessionTemplate.insert("admin_mapper.saveAdmin", admin);
		return result;
	}

	@Override
	public List<Admin> findAdminList() {
		List<Admin> adminList = sqlSessionTemplate.selectList("admin_mapper.findAdminList");
		return adminList;
	}

	@Override
	public Admin findAdminByAdminId(String id) {
		Admin admin = sqlSessionTemplate.selectOne("admin_mapper.findAdminByAdminId", id);
		return admin;
	}

	@Override
	public List<Admin> findAdminListBySearchCondition(AdminSearchCondition adminSearchCondition) {
		List<Admin> adminList = sqlSessionTemplate.selectList("admin_mapper.findAdminListBySearchCondition");
		return adminList;
	}

	
	//permissionCode로 조회
	@Override
	public List<Admin> findAdminListByPermissionCode(String permissionCode) {
		List<Admin> adminList = sqlSessionTemplate.selectList("admin_mapper.findAdminListByPermissionCode", permissionCode);
		return adminList;
	}
	
	@Override
	public int saveEmployeeProfile(EmployeeProfile employeeProfile) {
		int result = sqlSessionTemplate.insert("admin_mapper.saveEmployeeProfile", employeeProfile);
		return result;
	}

	@Override
	public List<EmployeeProfile> findEmployeeProfileByName(String name) {
		List<EmployeeProfile> employeeProfileList = sqlSessionTemplate.selectList("admin_mapper.findEmployeeProfileByName");
		return employeeProfileList;
	}

	@Override
	public List<Employee> findEmployeeList() {
		List<Employee> employeeList = sqlSessionTemplate.selectList("admin_mapper.findEmployeeList");
		return employeeList;
	}

	@Override
	public List<Employee> findEmployeeListByJobsId(String jobsId) {
		List<Employee> employeeList = sqlSessionTemplate.selectList("admin_mapper.findEmployeeListByJobsId", jobsId);
		return employeeList;
	}

	@Override
	public List<Employee> findEmployeeListBySearchCondition(EmployeeSearchCondition employeeSearchCondition) {
		List<Employee> employeeList = sqlSessionTemplate.selectList("admin_mapper.findEmployeeListBySearchCondition");
		return employeeList;
	}

	
	
	
	
}
