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
      	
      	<div class="discography-name">
      		<b>DISCOGRAPHY</b>
      	</div>
      	<div class="discography-album">
      		<img class="dis-album min-bor" alt="" src="${pageContext.request.contextPath}/resources/images/album3.png" width="330px">
      		<img class="dis-album" alt="" src="${pageContext.request.contextPath}/resources/images/album4.png" width="330px">
      		<img class="dis-album" alt="" src="${pageContext.request.contextPath}/resources/images/album5.png" width="330px">
      		<img class="dis-album" alt="" src="${pageContext.request.contextPath}/resources/images/album2.png" width="330px">
      	</div>
		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>

</body>
</html>