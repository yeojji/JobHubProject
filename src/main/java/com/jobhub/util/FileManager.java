package com.jobhub.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.jobhub.dto.util.FileInfo;

@Component
public class FileManager {
	private static String fileDirectoryPath = "d:/fileStorage/";  //파일 저장되는 폴더 경로
	private static String fileUrlPath = "/fileStorage/";	//DB에 넣어놓고 나중에 브라우저에서 접근할때 경로
	
	public FileInfo storeFile(MultipartFile file) throws IllegalStateException, IOException {
		
		FileInfo fileInfo = new FileInfo();
		
		fileInfo.setOriginalFileName(file.getOriginalFilename());
		fileInfo.setFileSize(file.getSize());
		fileInfo.setFilePath(fileUrlPath);
		
		String extension = extractExtension(file.getOriginalFilename());
		//png jpg jpeg gif xlsx hwp
		//fileInfo.setFileExtension(extractExtension(file.getOriginalFilename()));  //바로쓰기
		fileInfo.setFileExtension(extension);
		String fileName = createFileName(file.getOriginalFilename());
		fileInfo.setFileName(fileName);
		
		file.transferTo(new File( fileDirectoryPath + fileInfo.getFileName() ));
		//fullPath 폴더+파일명+확장자
		
		return fileInfo;
	}
	
	//private String createFileName(String extension) {
	private String createFileName(String originalFileName) {
		//String fileName = UUID.randomUUID().toString() + "." + extension;
		String fileName = UUID.randomUUID().toString() + "." + extractExtension(originalFileName);
		return fileName;
	}
	
	private String extractExtension(String fileName) {
		int dotIndex = fileName.lastIndexOf("."); // .의 위치
		String extension = fileName.substring(dotIndex + 1); // .jpg .다음위치부터~
		return extension;
	}

}
