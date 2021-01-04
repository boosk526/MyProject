<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/board/boardUpdate.css" rel="stylesheet" type="text/css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<section id="container">
		<div class="write-form">
			<form action="./${board}Update" method="post" enctype="multipart/form-data">
			    <div class="form-write">
					<div class="form-group">
						<label for="title">Title:</label>
						<input type="text" class="form-tw" id="title" value="${vo.title}" name="title" required="required">
				    </div>
				    <div>
					 	<label for="writer">Writer:</label>
			     		<input type="text" class="form-tw form-ww" id="writer" value="${vo.writer}" readonly="readonly" name="writer" required="required">
				    </div>
			  		<div>
				    	<div class="write-contents">${vo.contents}</div>
				    </div>
				    <div class="write-file">
						<label for="files">File</label>
						<input type="file" class="file-control" name="files" value="${file.file}">
						<input type="file" class="file-control" name="files" value="${file.file}">
					</div>
				</div>
			    
			   	<div class="submit-btn">
				    <input type="hidden" id="num" name="num" value="${vo.num}">
					<input type="button" id="exit" class="btn-exit" value="취소">
					<button type="submit" class="btn-submit">수정</button>
				</div>
		  	</form>
	  	</div>
			<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>
	

<script type="text/javascript">

	$('.write-contents').summernote({
	    height: 300
	});
	
	$('write-contents').summernote('code','${vo.contents}');
	
 	$("#exit").click(function() {
		location.href="./${board}Select?num=${vo.num}";
	});
</script>

</body>
</html>