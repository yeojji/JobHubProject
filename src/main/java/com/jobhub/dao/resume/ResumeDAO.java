package com.jobhub.dao.resume;
import java.util.List;

import com.jobhub.dto.resume.Resume;
import com.jobhub.dto.resume.ResumeSearchCondition;

public interface ResumeDAO {
	
	// 이력서id 생성
	public String selectNextResumeId();
	
	// 이력서 저장
	public int saveResume(Resume resume);

	// 이력서ID로 검색
	public Resume findResumeByResumeId(String resumeId);
    
	// 이력서 목록 가져오기
	public List<Resume> findResumeList();
	
	// 사용자ID로 이력서 목록 가져오기
	public List<Resume> findResumesByUserId(String userId);
	
	// 검색 조건에 따른 이력서 목록
	public List<Resume> findResumeListBySearchCondition(ResumeSearchCondition resumeSearchCondition);
	
	//직무아이디로 찾기
	public Resume findResumeByCareerId(String careerId);
	
	// 이력서 수정
	public int modifyResume(Resume resume);
	
	// 관리자 페이지 내 이력서 수정
	public int updateResume(Resume resume);
	
	 // 이력서 삭제
    public int deleteResume(String resumeId);
    
}
