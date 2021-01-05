<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/board/boardWrite.css" rel="stylesheet" type="text/css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<section id="container">
		<div class="write-form">
			<form:form modelAttribute="boardVO" action="./${board}Write" enctype="multipart/form-data">
				<div class="form-write">
					<div class="form-group">
						<label for="title">Title</label>
						<!-- path: parameter Name -->
				   		<form:input path="title" class="form-tw"/>
				   		<form:errors path="title" cssClass="error"></form:errors>
				    </div>
				    
				     <div>
					 	<label for="writer">Writer</label>
					 	<form:input path="writer" class="form-tw form-ww" value="${member.id}" readonly="${member.id}"/>
					 	<form:errors path="writer" cssClass="error"></form:errors>
				    </div>
				    
			  		<div>
					 	<form:input path="contents" id="contents"/>
				    </div>
				    
				    <div class="write-file">
						<label class="file-control" for="files">File</label>
						<input type="file" class="file-control file-tt" name="files">
						<input type="file" class="file-control" name="files">
				    </div>
		
				</div>
				<div class="submit-btn">
					<button type="submit" class="btn-submit">Write</button>
				</div>
			</form:form>
		</div>

		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>
	
<script type="text/javascript">

	$('#contents').summernote({
	    height: 300
	});
	
</script>

</body>
</html>