<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/member/memberPage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>

   <section id="container">
		<div class="member-page">
			<h3>Member Page</h3>
			<table class="member-table">
				<tr>
					<th>Id :</th> <td>${member.id}</td>
				</tr>
				<tr>
					<th>Name :</th> <td>${member.name}</td>
				</tr>
				<c:forEach items="${member.roles}" var="memberRoleVO">
					<tr>
						<th>Role :</th> <td>${memberRoleVO.role}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="member-logout">
				<a href="${pageContext.request.contextPath}/member/memberLogout">Logout</a>
			</div>
		</div>
		
        <c:import url="../template/menu.jsp"></c:import>  
     
   </section>
   
        <c:import url="../template/footer.jsp"></c:import>
   
      <script src="../resources/js/common.js"> </script>
      

</body>
</html>