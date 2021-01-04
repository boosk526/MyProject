<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/info/discographyDetailMagic.css" rel="stylesheet" type="text/css">
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
			<img class="disc-album-img" src="${pageContext.request.contextPath}/resources/images/album5.png">
			<div class="disc-album-tt">
				<div class="disc-album-3rd"><h3>1ST FULL-LENGTH ALBUM</h3></div>
				<span class="disc-album-sode1"><h1>꿈의 장: MAGIC</h1></span>
			</div>
			<div class="disc-album-con">
				<div>
					투모로우바이투게더는 앨범 콘셉트인 ‘꿈의 장’을 통해 소년들이 성장하는<br> 과정에서 마주하는 경험들을 이야기로 풀어낸다.<br>
					데뷔 앨범 ‘꿈의 장: STAR’가 ‘너를 만난 기쁨과 설렘’을 표현했다면, 정규<br> 앨범 ‘꿈의 장: MAGIC’은 ‘마법 같은 모험담’을 담았다. 나와 다르면서도<br>
					닮은 친구들을 만난 소년들이 함께하며 벌어지는 마법 같은 순간들을<br> 그려낸다. 이들은 소년으로 성장하며 겪는 변화와 혼란, 폭발하는<br> 감정들을 함께 공유한다.
				</div>
				<div class="dics-con-2">
					이번 앨범은 우리의 세상 속 규칙은 우리가 만들고 싶다고 말하는 ‘New<br> Rules’, 타이틀곡 ‘9와 4분의 3 승강장에서 너를 기다려 (Run Away)’,<br>
					두렵지만 기분 좋은 순간을 롤러코스터에 빗댄 ‘간지러워 (Roller<br> Coaster)’, 천사와 악마 두 목소리가 내 머릿속에서 끝없이 싸움을 벌이는<br>
					‘Angel Or Devil’ 등 총 8개 트랙으로 구성됐다.
				</div>
			</div>
		</div>
		<div class="disc-mv">
			<div class="disc-mv-tt">
				<h1>VIDEO</h1>
			</div>
			<div class="disc-mv-vd">
				<iframe class="mv-iframe" name="iframe_a" src="https://www.youtube.com/embed/6yWPfUz0z94" allowfullscreen></iframe>
			</div>
			<div class="disc-mv-vd-tt">
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/6yWPfUz0z94">'9와 4분의 3 승강장에서 너를 기다려' MV</a></b></span> 
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/cfm97EKin4c">'Angel Or Devil' MV</a></b></span>
			</div>
		</div>
		<div class="disc-pt">
			<div class="disc-pt-tt">
				<h1>PHOTO</h1>
			</div>
			<div class="disc-pt-pt">
				<video src="${pageContext.request.contextPath}/resources/images/magic.mp4"  width="1000px" height="800px"></video>
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
						<span class="disc-track-2">New Rules&nbsp;&nbsp;</span>
						<span class="disc-track-3">2’55”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">2</span>
						<span class="disc-track-2">9와 4분의 3승강장에서 너를 기다려(Run Away)&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’32”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">3</span>
						<span class="disc-track-2">간지러워 (Roller Coaster)&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’34”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">4</span>
						<span class="disc-track-2">Poppin’ Star&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’13”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">5</span>
						<span class="disc-track-2">그냥 괴물을 살려두면 안 되는 걸까&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’51”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">6</span>
						<span class="disc-track-2">Magic Island&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’13”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">7</span>
						<span class="disc-track-2">20cm&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’37”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">8</span>
						<span class="disc-track-2">Angel Or Devil&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’52”</span>
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