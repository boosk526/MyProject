<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/twitterLink.jsp"></c:import>
<link href="../resources/css/twitter/twitterWrite.css" rel="stylesheet" type="text/css">
<title>Twitter</title>
</head>
<body>
	
		<section id="container">
			<form:form modelAttribute="twitterBoardVO" acenctype="multipart/form-data">
				<div class="modal">
					<div class="modal-con">
						<div class="write-exit">
							<div class="exit-cross" onClick="close_pop();">
								<div class="cross"></div>
							</div>
						</div>
						<div class="write-con">
							<textarea rows="11" cols="104" id="contents" name="contents"></textarea>
						</div>
						<div class="write-button">
							<button type="submit" class="btn-write">트윗</button>
						</div>
					</div>
				</div>
			</form:form>
		</section>
	
	<script>
		$('#contents').summernote({
		  height: 350,                 // set editor height
		  minHeight: null,             // set minimum height of editor
		  maxHeight: null,             // set maximum height of editor
		});
		
	</script>

</body>
</html>