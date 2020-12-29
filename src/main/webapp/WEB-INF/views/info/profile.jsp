<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/profile.css" rel="stylesheet" type="text/css">
<head>
<title>profile</title>
<meta charset="utf-8">
<body>
	<c:import url="../template/header.jsp"></c:import>
   
	<section id="container">
      	<div class="profile-main">
      		<img class="profile-img" alt="" src="${pageContext.request.contextPath}/resources/images/profile.jpg">
      	
	      	<div class="profile-tt">
		      	<h3>ABOUT</h3>
		      	<h3>TOMORROW X TOGETHER</h3>	
	      	</div>
	      	
	      	<div class="profile-info">
	      		<span>수빈, 연준, 범규, 태현, 휴닝카이 다섯 멤버로 구성된</span><br>
	      		<span>투모로우바이투게더는 ‘서로 다른 너와 내가 하나의</span><br>
	      		<span>꿈으로 모여 함께 내일을 만들어간다'라는 뜻으로 하나의</span><br> 
	      		<span>꿈과 목표를 위해 함께 모인 소년들이 서로 시너지를</span><br>  
	      		<span>발휘하는 밝고 건강한 아이돌 그룹이다.</span>
	      	</div>
      	
	      	<div class="profile-mem">
	      		<div class="member">
	      			<h1>MEMBER</h1>
	      		</div>
		      		<img class="mem-sb" alt="" width="350px" src="${pageContext.request.contextPath}/resources/images/member-sb.jpg"><br>
		      		<img class="mem-yj" alt="" width="350px" src="${pageContext.request.contextPath}/resources/images/member-yj.jpg">
		      		<img class="mem-bg" alt="" width="350px" src="${pageContext.request.contextPath}/resources/images/member-bg.jpg"><br>
		      		<img class="mem-th" alt="" width="350px" src="${pageContext.request.contextPath}/resources/images/member-th.jpg">
		      		<img class="mem-hk" alt="" width="350px" src="${pageContext.request.contextPath}/resources/images/member-hk.jpg">
	      	</div>
	      		<div class="member-all member-info-sb">
	      			<div class="member-info"> 
	      				<img class="img-all img-sb" alt="" src="${pageContext.request.contextPath}/resources/images/member-sb.jpg">
	      				<dl class="info-all info-sb">
	      					<dt class="mem-info name-all name-sb"><h1>수빈</h1></dt>
	      					<dd class="mem-info">
	      						<ul>
	      							<li><b>생일: 2000년 12월 5일</b></li>
	      							<li><b>키: 185cm</b></li>
	      							<li><b>몸무게: 67kg​</b></li>
	      						</ul>
	      					</dd>
	      				</dl>
	      				<div class="info-back info-back-sb">
	      				</div>
	      			</div>
	      		</div>
	      			
	      		<div class="member-all member-info-yj">
	      			<div class="member-info"> 
	      				<img class="img-all img-yj" alt="" src="${pageContext.request.contextPath}/resources/images/member-yj.jpg">
	      				<dl class="info-all info-yj">
	      					<dt class="mem-info name-all name-yj"><h1>연준</h1></dt>
	      					<dd class="mem-info">
	      						<ul>
	      							<li><b>생일: 1999년 9월 13일</b></li>
	      							<li><b>키: 181.5cm</b></li>
	      							<li><b>몸무게: 62kg​</b></li>
	      						</ul>
	      					</dd>
	      				</dl>
	      				<div class="info-back info-back-yj">
	      				</div>
	      			</div>
	      		</div>
	      			
	      		<div class="member-all member-info-bg">
	      			<div class="member-info"> 
	      				<img class="img-all img-bg" alt="" src="${pageContext.request.contextPath}/resources/images/member-bg.jpg">
	      				<dl class="info-all info-bg">
	      					<dt class="mem-info name-all name-bg"><h1>범규</h1></dt>
	      					<dd class="mem-info">
	      						<ul>
	      							<li><b>생일: 2001년 3월 13일</b></li>
	      							<li><b>키: 180cm</b></li>
	      							<li><b>몸무게: 53kg​</b></li>
	      						</ul>
	      					</dd>
	      				</dl>
	      				<div class="info-back info-back-bg">
	      				</div>
	      			</div>
	      		</div>
	      			
	      		<div class="member-all member-info-th">
	      			<div class="member-info"> 
	      				<img class="img-all img-th" alt="" src="${pageContext.request.contextPath}/resources/images/member-th.jpg">
	      				<dl class="info-all info-th">
	      					<dt class="mem-info name-all name-th"><h1>태현</h1></dt>
	      					<dd class="mem-info">
	      						<ul>
	      							<li><b>생일: 2002년 2월 5일</b></li>
	      							<li><b>키: 177cm</b></li>
	      							<li><b>몸무게: 55kg​</b></li>
	      						</ul>
	      					</dd>
	      				</dl>
	      				<div class="info-back info-back-th">
	      				</div>
	      			</div>
	      		</div>
	      			
	      		<div class="member-all member-info-hk"> 
	      			<div class="member-info">
	      				<img class="img-all img-hk" alt="" src="${pageContext.request.contextPath}/resources/images/member-hk.jpg">
	      				<dl class="info-all info-hk">
	      					<dt class="mem-info name-all name-hk"><h1>휴닝카이</h1></dt>
	      					<dd class="mem-info">
	      						<ul>
	      							<li><b>생일: 2002년 8월 14일</b></li>
	      							<li><b>키: 183cm</b></li>
	      							<li><b>몸무게: 67kg​</b></li>
	      						</ul>
	      					</dd>
	      				</dl>
	      				<div class="info-back info-back-hk">
	      				</div>
	      			</div>
	      		</div>
	      		
		</div>
		
		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>

</body>
</html>