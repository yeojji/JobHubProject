package com.jobhub.dto.api;

import lombok.Data;

@Data
public class ApiResponse {

	int resultCode;
	String msg;
	String data;
}
