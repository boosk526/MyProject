<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/twitterLink.jsp"></c:import>
<link href="../resources/css/twitter/twitterLogin.css" rel="stylesheet" type="text/css">
<title>Twitter</title>
</head>
<body>
	
		<section id="container">
		  	<form action="./twitterLogin" method="post">
				<div class="twitter-login">
					<div class="login-tt">
						<img alt="" src="${pageContext.request.contextPath}/resources/images/joinLogo.png" width="40px">	
					</div>
					<b>트위터 로그인</b>
				</div>
				<div class="twitter-login-form">
					<div class="join-input">
						<input class="input-css" type="text" placeholder="Id">
						<input class="input-css" type="text" placeholder="Password">
					</div>
					<a href="">
						<div class="login-button">
							로그인
						</div>
					</a>
				</div>
			</form>
		</section>
	
</body>
</html>