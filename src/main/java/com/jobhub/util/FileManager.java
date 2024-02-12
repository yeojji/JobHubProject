package com.jobhub.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.jobhub.dto.util.FileInfo;

@Component
public class FileManager {
    private static String fileDirectoryPath = "d:/fileStorage/";  // 파일 저장되는 폴더 경로
    private static String fileDirectoryUrl = "/fileStorage/";    // DB에 넣어놓고 나중에 브라우저에서 접근할 때 경로

    public List<FileInfo> storeFiles(List<MultipartFile> files) throws IllegalStateException, IOException {
        List<FileInfo> fileInfos = new ArrayList<>();
        for (MultipartFile file : files) {
            FileInfo fileInfo = new FileInfo();

            fileInfo.setOriginalFileName(file.getOriginalFilename());
            fileInfo.setFileSize(file.getSize());
            fileInfo.setFilePath(fileDirectoryUrl);

            String extension = extractExtension(file.getOriginalFilename());
            fileInfo.setFileExtension(extension);
            String fileName = createFileName(file.getOriginalFilename());
            fileInfo.setFileName(fileName);

            file.transferTo(new File(fileDirectoryPath + fileInfo.getFileName()));

            fileInfos.add(fileInfo);
        }
        return fileInfos;
    }

    private String createFileName(String originalFileName) {
        String fileName = UUID.randomUUID().toString() + "." + extractExtension(originalFileName);
        return fileName;
    }

    private String extractExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf(".");
        String extension = fileName.substring(dotIndex + 1);
        return extension;
    }
}
