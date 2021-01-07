<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/twitterLink.jsp"></c:import>
<link href="../resources/css/twitter/twitterMain.css" rel="stylesheet" type="text/css">
<title>Twitter</title>
</head>
<body>
	
	<section id="container">
		<div class="main-left">
			<img class="main-left-img" alt="" src="${pageContext.request.contextPath}/resources/images/twitterMain.png">
			<div class="main-left-box">
				<div class="main-left-in left-in-up">
					<img alt="" src="${pageContext.request.contextPath}/resources/images/mainGlass.png" width="20px">				
					<span class="main-left-p"><b>관심사를 팔로우하세요.</b></span>
				</div>
				<div class="main-left-in">
					<img alt="" src="${pageContext.request.contextPath}/resources/images/mainPeople.png" width="25px">				
					<span class="main-left-p"><b>사람들이 무엇에 대해 이야기하고 있는<br>&emsp;&emsp;&ensp;지 알아보세요.</b></span>
				</div>
				<div class="main-left-in">
					<img alt="" src="${pageContext.request.contextPath}/resources/images/mainText.png" width="20px">				
					<span class="main-left-p"><b>대화에 참여하세요.</b></span>
				</div>
			</div>
		</div>
		<div class="main-right">
			<div class="main-right-text">
				<div class="text-in">
					<b>지금 전 세계에서 무슨 일이<br>일어나고 있는지 알아보세요</b>
				</div>
			</div>
			<div class="main-right-button">
				<div class="right-text">
					<b>오늘 트위터에 가입하세요.</b>
				</div>
				<span class="join-text">
					<div class="button-join">
						가입하기
					</div>
				</span>
				<a class="login-text" href="${pageContext.request.contextPath}/twitter/twitterLogin">
					<div class="button-login">
						로그인
					</div>
				</a>
			</div>
		</div>
		<c:import url="./twitterJoin.jsp"></c:import>  
	</section>
	
	<footer id="footer">
		<div class="footer-box">
			<ul class="footer-ul">
				<li class="footer-li"><a href="">소개</a></li>
				<li class="footer-li"><a href="">고객센터</a></li>
				<li class="footer-li"><a href="">이용약관</a></li>
				<li class="footer-li"><a href="">개인정보 처리방침</a></li>
				<li class="footer-li"><a href="">쿠키 정책</a></li>
				<li class="footer-li"><a href="">광고 정보</a></li>
				<li class="footer-li"><a href="">블로그</a></li>
				<li class="footer-li"><a href="">상태</a></li>
				<li class="footer-li"><a href="">채용</a></li>
				<li class="footer-li"><a href="">브랜드 리소스</a></li>
				<li class="footer-li"><a href="">광고</a></li>
				<li class="footer-li"><a href="">마케팅</a></li>
				<li class="footer-li"><a href="">비즈니스용 트위터</a></li>
				<li class="footer-li"><a href="">개발자</a></li>
				<li class="footer-li"><a href="">디렉터리</a></li>
				<li class="footer-li"><a href="">설정</a></li>
				<li class="footer-li">© 2021 Twitter, Inc.</li>
			</ul>
		</div>
	</footer>
	
	<script src="../resources/js/twitter.js"> </script>
	
</body>
</html>