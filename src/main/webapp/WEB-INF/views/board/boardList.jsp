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
		  		</tr>
		  		
		  		<c:forEach items="${list}" var="vo">
		  			<tr>
		  				<td>${vo.num}</td>
		  				<td><a class="board-title" href="${board}Select?num=${vo.num}">${vo.title}</a></td>
		  				<td>${vo.writer}</td>
		  				<td>${vo.regDate}</td>
		  			</tr>
		  		</c:forEach>
		  	</table>
	  	</div>
	  	
	  	<div class="btn-write">
	  		<!-- <button class="write-btn" title="Write">Write</button> -->
			<input type="button" id="write-btn" class="write-btn" value="Write">
	  	</div>
	  	<div class="page">
	   		<ul class="pagination">
	   			<c:if test="${pager.before}">
	   				 <li><a href="./noticeList?curPage=${pager.startNum-1}" class="list" title="${pager.startNum-1}">&lt</a></li>
	   			</c:if>
			  	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			  		 <li><a href="./noticeList?curPage=${i}" class="list" title="${i}">${i}</a></li>
			  	</c:forEach>
			  	<c:if test="${pager.after}">
	   				 <li><a href="./noticeList?curPage=${pager.lastNum+1}" class="list" title="${pager.lastNum+1}">&gt</a></li>
	   			</c:if>
			</ul>
		</div>
		
		<c:import url="../template/menu.jsp"></c:import>  
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>
	
<script type="text/javascript">

	$("#write-btn").click(function() {
		location.href="./${board}Write";
	});

</script>

</body>
</html>