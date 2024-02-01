package com.jobhub.dao.file.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileDAOImpl {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
}
