<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/discographyDetailStar.css" rel="stylesheet" type="text/css">
<head>
<title>profile</title>
<meta charset="utf-8">
<body>
	<c:import url="../template/header.jsp"></c:import>
   
	<section id="container">
      	<nav class="scroll-up">
	      	<div class="scroll-div">
	      		up
	      	</div>
		</nav>
		
		<div class="disc-album">
			<a href="${pageContext.request.contextPath}/info/discography"><div class="dis-album-back"></div></a>
			<img class="disc-album-img" src="${pageContext.request.contextPath}/resources/images/album2.png">
			<div class="disc-album-tt">
				<div class="disc-album-3rd"><h3>3RD MINI ALBUM</h3></div>
				<span class="disc-album-sode1"><h1>꿈의 장: STAR</h1></span>
			</div>
			<div class="disc-album-con">
				<div>
					투모로우바이투게더는 ‘꿈의 장’을 통해 소년의 이야기를 전한다.<br>유년에서 소년으로 성장하는 소년들이 서로 만나 하나의 꿈(ONE<br> DREAM)을 추구한다.<br>
				</div>
				<div class="dics-con-2">
					어린 시절 밤하늘의 별을 바라보며 느꼈던 가슴 벅찬 기분, 내일에 대한<br> 부푼 기대를 기억하는가?<br>
					별을 쫓는다는 것은 어린 시절의 꿈을 기억한다는 것이다. 별은 이들에게<br> 꿈의 다른 이름이다. ‘꿈의 장’은 소년들이 성장하는 과정에서 마주하는<br>
					경험을 중심으로 이야기를 풀어낸다.<br>
				</div>
				<div>
					첫 트랙 ‘Blue Orangeade’를 시작으로 마지막 트랙 ‘별의 낮잠’까지 총<br> 5곡이 실린 ‘꿈의 장: STAR’에서 투모로우바이투게더는 “너를 만난 기쁨과<br> 
					설렘”을 노래한다. 혼자서는 아무것도 할 수 없는 나지만, 너를 만나고<br> 우리가 함께라면 무언가를 해낼 수 있을 것 같다고 이야기한다.
				</div>
			</div>
		</div>
		<div class="disc-mv">
			<div class="disc-mv-tt">
				<h1>VIDEO</h1>
			</div>
			<div class="disc-mv-vd">
				<iframe class="mv-iframe" name="iframe_a" src="https://www.youtube.com/embed/W3iSnJ663II" allowfullscreen></iframe>
			</div>
			<div class="disc-mv-vd-tt">
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/W3iSnJ663II">'어느날 머리에서 뿔이 자랐다' MV</a></b></span> 
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/NaKrke1EL1A">'Cat & Dog' MV</a></b></span>
			</div>
		</div>
		
		<div class="disc-pt">
			<div class="disc-pt-tt">
				<h1>PHOTO</h1>
			</div>
			<div class="disc-pt-pt">
				<img alt="" src="${pageContext.request.contextPath}/resources/images/star.jpg" width="1100px" height="750px">
			</div>
		</div>
		<div class="disc-track">
			<div class="disc-track-tt">
				<h1>TRACK</h1>
			</div>
			<div class="disc-track-num">
				<div class="disc-track-tn">
					<div class="disc-track-m">
						<b><span class="disc-track-1">1</span>
						<span class="disc-track-2">Blue Orangeade&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’06”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">2</span>
						<span class="disc-track-2">어느날 머리에서 뿔이 자랐다 (CROWN) &nbsp;&nbsp;</span>
						<span class="disc-track-3">3’51”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">3</span>
						<span class="disc-track-2">Our Summer 3’30”&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’30”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">4</span>
						<span class="disc-track-2">Cat & Dog&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’08”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">5</span>
						<span class="disc-track-2">별의 낮잠&nbsp;&nbsp;</span>
						<span class="disc-track-3">4’03”</span>
						</b>
					</div>
				</div>
			</div>
		</div>
      
		<c:import url="../template/menu.jsp"></c:import>  
   
   </section>

	<c:import url="../template/footer.jsp"></c:import>

	<script src="../resources/js/common.js"> </script>

</body>
</html>