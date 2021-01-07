<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="${pageContext.request.contextPath}/resources/common.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

       <div class="footer-family-hover">
         <ul>
            <li class="footer-family-li"><b><a href="#">BIG HIT ENTERTAINMENT</a></b></li>
            <li class="footer-family-li"><b><a href="#">BIT HIT AUDITION</a></b></li>
            <li class="footer-family-li"><b><a href="#">WEVERSER SHOP</a></b></li>
            <li class="footer-family-li"><b><a href="#">WEVERSE</a></b></li>
         </ul>
      </div>
    
   <footer id="footer">
		<div class="footer-logo">
			<a href="${pageContext.request.contextPath}/twitter/twitterMain"><img alt="" src="${pageContext.request.contextPath}/resources/images/twitter-logo.png"></a>
         	<a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/images/insta-logo.png"></a>
        	<a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/images/fb-logo.png"></a>
        	<a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/images/yt-logo.png"></a>
      	</div>
      	<div class="footer-family">
         	<b class="family-sites">FAMILY SITES</b>
      	</div>
   
      	<div class="footer-r">
   			<c:choose>
	    		<c:when test="${not empty member}">
		            <b>COPYRIGHT © 2020 BIG HIT ENTERTAINMENT A<a href="${pageContext.request.contextPath}/member/memberPage">L</a>L RIGHTS RESERVED</b>
	    		</c:when>
				<c:otherwise>
					<b>COPYRIGHT © 2020 BIG HIT ENTERTAINMENT A<a href="${pageContext.request.contextPath}/member/memberLogin">L</a>L RIGHTS RESERVED</b>
	    		</c:otherwise>
	    	</c:choose>
   
         </div>
   
   </footer>