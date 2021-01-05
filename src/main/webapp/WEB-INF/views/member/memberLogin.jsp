<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/member/memberLogin.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>

   <section id="container">
      <form action="./memberLogin" method="post">
         <div class="member-login">
            <h3 class="login-tt">로그인</h3>
            <div class="form-group">
                <label for="id"></label>
                <input type="text" class="form-control" id="id" placeholder="아이디" name="id">
             </div>
             
             <div class="form-group">
                <label for="pw"></label>
                <input type="password" class="form-control" id="pw" placeholder="비밀번호" name="pw">
             </div>
             
             <div class="checkbox">
                <label><input type="checkbox" name="remember"> Remember me</label>
             </div>
            <button type="submit" class="btn-login">Login</button>
            <h3 class="member-join"><a href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a></h3>
         </div>
      </form>
        
        <c:import url="../template/menu.jsp"></c:import>  
     
   </section>
   
        <c:import url="../template/footer.jsp"></c:import>
   
      <script src="../resources/js/common.js"> </script>
      
</body>
</html>