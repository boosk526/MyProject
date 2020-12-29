<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/discography.css" rel="stylesheet" type="text/css">
<head>
<title>profile</title>
<meta charset="utf-8">
<body>
	<c:import url="../template/header.jsp"></c:import>
   
	<section id="container">
      	
      	<nav class="scroll-up">
	      	<div class="scroll-div">
	      		up
	      	</div>
      	</nav>
      	
      	<div class="discography-name">
      		<b>DISCOGRAPHY</b>
      	</div>
      	
      	<div class="discography-album">
      		<ul class="caption-style">
				<li class="album-all min-bor">
					<img src="${pageContext.request.contextPath}/resources/images/album3.png" alt="" width="330px">
					<div class="caption">
						<div class="blur"></div>
						<div class="caption-text">
							3RD MINI ALBUM<br>
	      					<h3>MINISODE1 : BLUE HOUR</h3>
						</div>
					</div>
				</li>
				<li class="album-all">
					<img src="${pageContext.request.contextPath}/resources/images/album4.png" alt="" width="330px">
					<div class="caption">
						<div class="blur"></div>
						<div class="caption-text">
							2RD MINI ALBUM<br>
	      					<h3>꿈의 장 : ETERNITY</h3>
						</div>
					</div>
				</li>
				<li class="album-all">
					<img src="${pageContext.request.contextPath}/resources/images/album5.png" alt="" width="330px">
					<div class="caption">
						<div class="blur"></div>
						<div class="caption-text">
							1ST FULL-LENGTH ALBUM<br>
	      					<h3>꿈의 장 : MAGIC</h3>
						</div>
					</div>
				</li>
				<li class="album-all">
					<img src="${pageContext.request.contextPath}/resources/images/album2.png" alt="" width="330px">
					<div class="caption">
						<div class="blur"></div>
						<div class="caption-text">
							1ST MINI ALBUM<br>
	      					<h3>꿈의 장 : STAR</h3>
						</div>
					</div>
				</li>
			</ul>
   
      	</div>
		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>

</body>
</html>