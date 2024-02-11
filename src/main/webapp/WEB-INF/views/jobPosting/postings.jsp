<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 검색 연습 searchKeyword </h1>
	
	<form action="" method="get">
			<span>검색기준</span>
			
			<select name="searchOption" id="searchOption">
    <option value="title">제목</option>
    <option value="job_name">직무</option>
    <option value="employment_type">고용형태</option>
</select>
			
			
			<br>
			임시저장<input type="radio" name="status_type" value="S">
			노출<input type="radio" name="status_type" value="O">
			비노출<input type="radio" name="status_type" value="X">
		
			<br>
			정규직<input type="radio" name="employment_type" value="">
			인턴<input type="radio" name="employment_type" value="">
			계약직<input type="radio" name="employment_type" value="">
			무기계약직<input type="radio" name="employment_type" value="">
			<br> 
			
			
			<label>검색어 : </label> <input type="text" name="searchKeyword">
			<button type="submit">검색</button>
		</form>
	
	

	
	
</body>
</html>