package com.jobhub.service.admin;

import java.util.List;

import com.jobhub.dto.admin.Admin;
import com.jobhub.dto.admin.AdminProfile;
import com.jobhub.dto.admin.AdminSearchCondition;

public interface AdminService {
	//admin 생성, 로그인, 목록, 검색, 비밀번호 찾기
	
	
	public Admin isValidAdminLogin(Admin admin);
	
	public int saveAdmin(Admin admin); 
	
	public List<Admin> findAdminList();
	
	public List<Admin> findAdminListBySearchCondition(AdminSearchCondition adminSearchCondition);
	
	public boolean isDuplicatedId(String id);
	
	public int saveAdminProfile(AdminProfile adminProfile);
	
	public AdminProfile findAdminProfileByName(String name);
	
}

