<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/twitterLink.jsp"></c:import>
<link href="../resources/css/twitter/twitterHome.css" rel="stylesheet" type="text/css">
<title>Twitter</title>
</head>
<body>
	
		<section id="container">
			<div class="twitter-left">
				<div class="twitter-left-in">
					<ul>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/joinLogo.png" width="30px"></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/home.png" width="20px"><b>홈</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/hashtag.png" width="20px"><b>탐색하기</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/bell.png" width="20px"><b>알림</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/post.png" width="25px"><b>쪽지</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/mark.png" width="20px"><b>북마크</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/list.png" width="20px"><b>리스트</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/profile.png" width="25px"><b>프로필</b></div></a>
						<a href=""><div class="left-in-div"><img alt="" src="${pageContext.request.contextPath}/resources/images/more.png" width="25px"><b>더 보기</b></div></a>
					</ul>
						<input type="button" id="write-btn" class="write-btn" value="트윗">
				</div>
			</div>
			<div id ="twitterHome" class="twitter-center">
				<c:forEach items="${list}" var="vo">
		  			<tr>
		  				<td>${vo.num}</td>
		  				<td><a class="board-title" href="${board}Select?num=${vo.num}">${vo.contents}</a></td>
		  				<td>${vo.regDate}</td>
		  			</tr>
		  		</c:forEach>
			</div>
			<div class="twitter-right">
				<div class="twitter-search">
					<input class="twitter-search-input" type="text" placeholder="트위터 검색">
				</div>
				<div class="twitter-trend">
					<div class="trend-div">
						<p class="trend-div-p"><b>나를 위한 트렌드</b></p>
					</div>
					<div class="trend-div div-css">
						<p class="trend-p">트렌드1</p>
					</div>
					<div class="trend-div div-css">
						<p class="trend-p">트렌드2</p>
					</div>
					<div class="trend-div div-css">
						<p class="trend-p">트렌드3</p>
					</div>
					<div class="trend-div div-css">
						<p class="trend-p">트렌드4</p>
					</div>
					<div class="trend-div div-css">
						<p class="trend-p">트렌드5</p>
					</div>
					
				</div>
			</div>
			
			<c:import url="./twitterWrite.jsp"></c:import>  
		</section>
	
<script>
	$(".twitter-center").scrollTop($(".twitter-center")[0].scrollHeight);


    $('.modal').hide();
	$('#write-btn').click(function(){
		$(".modal").show();
	});
	function close_pop(flag) {
        $('.modal').hide();
    };

</script>

</body>
</html>