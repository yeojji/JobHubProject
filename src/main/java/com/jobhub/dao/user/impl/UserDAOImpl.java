package com.jobhub.dao.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
}
