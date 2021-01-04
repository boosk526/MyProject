<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/board/boardSelect.css" rel="stylesheet" type="text/css">
<head>
<meta charset="UTF-8">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

	<section id="container">
		<form action="" id="frm">
			<input type="hidden" value="${vo.num}" name="num">
		</form>
	
		<div class="board-select">
		
			<table>
				<tr class="tr-tw">
					<th><b>Title</b></th> 
					<td class="tw-tt">${vo.title}</td>
				</tr>
				<tr class="tr-tw">
					<th><b>Writer</b></th> 
					<td class="tw-tt">${vo.writer}</td>
				</tr>
				<tr class="tr-co">
					<td colspan="2" class="tr-co">${vo.contents}</td>
				</tr>
				<tr class="tr-fi">
					<th><b>Files</b></th>
				  	<c:forEach items="${vo.files}" var="file">
					  	<p><a href="${board}FileDown?fnum=${file.fnum}">${file.oriName}</a></p>
				  	</c:forEach>
				</tr>
			</table>
		  	
		  	<div class="button">
			  	<button class="btn" title="Update">Update</button>
			  	<button class="btn btn-color" title="Delete">Delete</button>
		  	</div>
	 		
 		</div>
	  <%-- 	<input type="button" class="btn btn-primary" value="Update" id="update">
	  	<input type="button" class="btn btn-danger" value="Delete" title="${vo.num}" id="del">
	  	<c:if test="${board ne 'notice'}">
  			<a href="./${board}Reply?num=${vo.num}" class="btn btn-info">Reply</a>
 		</c:if> --%>


		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>


<script type="text/javascript">
/* 	$("#update").click(function() {
		location.href="./${board}Update?num=${vo.num}";
	});

	$("#del").click(function() {
		//var num = $("#num").html();
		var num = $(this).attr("title");
		location.href="./${board}Delete?num="+num;
	}); */

	$(".go").click(function(){
		var board = '${board}';
		var t = $(this).attr("title");

		$("#frm").attr("action", board+t);
		
/*  		if(t=='Delete'){
			$("#frm").attr("method", "post");
		} */
		
		$("#frm").submit();
		
	});
</script>

</body>
</html>