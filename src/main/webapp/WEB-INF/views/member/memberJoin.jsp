<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/member/memberJoin.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>

   <section id="container">
      <form:form modelAttribute="memberVO" id="frm" action="./memberJoin" enctype="multipart/form-data">
         <div class="member-join">
            <h3 class="join-tt">회원가입</h3>
             <div class="form-group">
                  <label for="id">Id</label>
                  <form:input path="id" class="form-control" id="id"/>
               <form:errors path="id" cssClass="error"></form:errors>
             </div>
             
             <div id="idResult"></div>
             <div class="form-group">
                  <label for="pw">Password</label>
                  <form:input path="pw" class="form-control" id="pw"/>
               <form:errors path="pw" cssClass="error"></form:errors>
             </div>
             
             <div class="form-group">
                  <label for="pw">Confirm Password</label>
                  <form:input path="pw2" class="form-control" id="pw"/>
               <form:errors path="pw2" cssClass="error"></form:errors>
             </div>
             
             <div id="pwResult"></div>
             <div class="form-group">
                  <label for="name">Name</label>
                  <form:input path="name" class="form-control" id="name"/>
               <form:errors path="name" cssClass="error"></form:errors>
             </div>
             
             <div class="form-group">
                  <label for="age">Age</label>
                  <form:input path="age" class="form-control" id="age"/>
               <form:errors path="age" cssClass="error"></form:errors>
             </div>
             <div class="form-group">
                  <label for="email">Email</label>
                  <form:input path="email" class="form-control" id="email"/>
               <form:errors path="email" cssClass="error"></form:errors>
             </div>
             
              <button type="submit" class="btn-join" id="join">Join</button>
           </div>
      </form:form>
        
        <c:import url="../template/menu.jsp"></c:import>  
     
   </section>
   
        <c:import url="../template/footer.jsp"></c:import>
   
      <script src="../resources/js/common.js"> </script>
</body>
</html>