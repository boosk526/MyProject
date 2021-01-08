<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/twitterLink.jsp"></c:import>
<link href="../resources/css/twitter/twitterJoin.css" rel="stylesheet" type="text/css">
<title>Twitter</title>
</head>
<body>
	
		<div class="tw-join-box">
			<div class="tw-join">
				<div class="join-logo">
					<img alt="" src="${pageContext.request.contextPath}/resources/images/joinLogo.png" width="30px">
				</div>
				<div class="join-cr">
					<b>계정을 생성하세요</b>
				</div>
				<div class="join-input">
					<input class="input-css" type="text" placeholder="Id">
				</div>
				<div class="join-input">
					<input class="input-css" type="text" placeholder="Password">
				</div>
				<div class="join-input">
					<input class="input-css" type="text" placeholder="Name">
				</div>
				<div class="join-input">
					<input class="input-css" type="text" placeholder="Phone">
				</div>
				<div class="join-input">
					<input class="input-css" type="text" placeholder="Birth">
				</div>
				<a href="">
					<div class="join-button">
						가입
					</div>
				</a>
				<a href="http://localhost/twitter/twitterMain">
					<div class="exit-button">
						취소
					</div>
				</a>
			</div>
		</div>
	
</body>
</html>