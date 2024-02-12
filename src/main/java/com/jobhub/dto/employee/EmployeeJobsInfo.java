package com.jobhub.dto.employee;

import lombok.Data;

@Data
public class EmployeeJobsInfo {
	
	String name;
	String jobsName;
	int jobs_id;
	int level;
	String rootName;
	
	 @Override
	    public String toString() {
	        return "EmployeeJobsInfo{" +
	                "employeeName='" + name + '\'' +
	                ", jobsName='" + jobsName + '\'' +
	                ", rootName='" + rootName + '\'' +
	                // 다른 필드들도 필요하다면 추가
	                '}';
	    }

}
