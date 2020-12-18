<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="./template/link.jsp"></c:import>
<link href="./resources/css/common.css" rel="stylesheet" type="text/css">
<head>
<title>index</title>
<meta charset="utf-8">
<body>
	<c:import url="./template/header.jsp"></c:import>
   
	<section id="container">
        <div class="album">
         	<img class="album-img" alt="" style="width=100%;height=100%;object-fit:scale-down;"  src="${pageContext.request.contextPath}/resources/images/album2.png">
      	</div>
      	
		<c:import url="./template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="./template/footer.jsp"></c:import>

	<script src="./resources/js/common.js"> </script>

</body>
</html>