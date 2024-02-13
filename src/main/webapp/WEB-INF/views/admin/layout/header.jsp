<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Jobhub 관리자 페이지</title>
<link rel="stylesheet" href="/admin/css/admin.css">
<link rel="shortcut icon" href="/common/icon/jobhub_favicon.ico" type="image/x-icon">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://kit.fontawesome.com/b158a20f5c.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- header -->
	<header id="hd">
		<div id="hd_wrap">
			<h1>Jobhub 관리자 페이지</h1>
			<div id="logo">
				<a href="/admin"><img src="/admin/img/logo_wh_250x35.png"
					alt="Jobhub logo"></a>
			</div>
			<div id="tnb">
				<ul>
					<li>${loginId}님</li>
					<li><a href="/login" target="_blank">Jobhub바로가기</a></li>
					<li><a href="">마이페이지</a></li>
					<li id="tnb_logout"><a href="/admin/logout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</header>