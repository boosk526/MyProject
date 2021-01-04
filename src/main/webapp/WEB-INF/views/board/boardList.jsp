<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/board/boardList.css" rel="stylesheet" type="text/css">
<head>
<title>${board}List</title>
<meta charset="utf-8">
<body>
	<c:import url="../template/header.jsp"></c:import>
   
	<section id="container">
		<div class="board-table">
		  	<table>
		  		<tr class="title">
		  			<td>Num</td>
			  		<td>Title</td>
			  		<td>Writer</td>
			  		<td>Date</td>
			  		<td>Hit</td>
		  		</tr>
		  		
		  		<c:forEach items="${list}" var="vo">
		  			<tr>
		  				<td>${vo.num}</td>
		  				<td><a class="board-title" href="${board}Select?num=${vo.num}">${vo.title}</a></td>
		  				<td>${vo.writer}</td>
		  				<td>${vo.regDate}</td>
		  				<td>${vo.hit}</td>
		  			</tr>
		  		</c:forEach>
		  	</table>
	  	</div>

		<c:import url="../template/menu.jsp"></c:import>  
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>


</body>
</html>