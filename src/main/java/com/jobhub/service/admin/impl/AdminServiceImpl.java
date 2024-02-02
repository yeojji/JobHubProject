package com.jobhub.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jobhub.dao.user.UserDAO;
import com.jobhub.dto.admin.Admin;
import com.jobhub.dto.admin.AdminProfile;
import com.jobhub.dto.admin.AdminSearchCondition;
import com.jobhub.service.admin.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public Admin isValidAdminLogin(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int saveAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Admin> findAdminList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Admin> findAdminListBySearchCondition(AdminSearchCondition adminSearchCondition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isDuplicatedId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int saveAdminProfile(AdminProfile adminProfile) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public AdminProfile findAdminProfileByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}
