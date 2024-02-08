package com.jobhub.dto.util;

import lombok.Data;

@Data
public class FileInfo {

	int fileId;
	String fileName;
	String originalFileName;
	String filePath;
	String fileExtension;
	long fileSize;
}
