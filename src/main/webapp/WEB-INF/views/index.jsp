<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="./template/link.jsp"></c:import>
<link href="./resources/css/common.css" rel="stylesheet" type="text/css">
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<head>
<title>index</title>
<meta charset="utf-8">
</head>
<body>

	<c:import url="./template/header.jsp"></c:import>
   
	<section id="container">
	
		<div class="slider">
			<div>
				<img src="${pageContext.request.contextPath}/resources/images/main-1.png">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/resources/images/main-2.png">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/resources/images/main-3.png">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/resources/images/main-4.png">
			</div>
		</div>
		
      	<nav class="scroll-up">
	      	<div class="scroll-div">
	      		up
	      	</div>
      	</nav>
      	
		<c:import url="./template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="./template/footer.jsp"></c:import>

	<script src="./resources/js/common.js"> </script>
	

</body>
</html>