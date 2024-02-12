package com.jobhub.dto.resume;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ApplyFileForm {

	List<MultipartFile> data;

}
