<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8">
            <title>Jobhub 관리자 페이지</title>
            <link rel="stylesheet" href="../../../../resources/admin/css/admin.css">
            <link rel="shortcut icon" href="../../../../resources/common/icon/jobhub_favicon.ico" type="image/x-icon">
            <script src="../../../../resources/common/js/jquery-1.8.3.min.js"></script>
            <script src="../../../../resources/common/js/jquery-ui-1.10.3.custom.js"></script>
            <script src="../../../../resources/common/js/common.js"></script>
            <script src="../../../../resources/common/js/categorylist.js"></script>
        </head>

        <body>
            <!-- header -->
            <header id="hd">
                <div id="hd_wrap">
                    <h1>Jobhub 관리자 페이지</h1>
                    <div id="logo"><a href="/admin/adminMain"><img
                                src="../../../../resources/admin/images/logo_wh_250x35.png" alt="Jobhub logo"></a></div>
                    <div id="tnb">
                        <ul>
                            <li>${adminName}님</li>
                            <li><a href="#" target="_blank">Jobhub바로가기</a></li>
                            <li><a href="/admin/mypage">마이페이지</a></li>
                            <li id="tnb_logout"><a href="#">로그아웃</a></li>
                        </ul>
                    </div>
                    