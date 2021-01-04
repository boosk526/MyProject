<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/info/discographyDetailEternity.css" rel="stylesheet" type="text/css">
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
			<img class="disc-album-img" src="${pageContext.request.contextPath}/resources/images/album4.png">
			<div class="disc-album-tt">
				<div class="disc-album-3rd"><h3>2ND MINI ALBUM</h3></div>
				<span class="disc-album-sode1"><h1>꿈의 장: <br>ETERNITY</h1></span>
			</div>
			<div class="disc-album-con">
				<div>
					신인상 10관왕에 빛나는 그룹 투모로우바이투게더가 5월 18일 두 번째<br> 미니 앨범 ‘꿈의 장: ETERNITY’를 발매한다.<br>
				</div>
				<div class="dics-con-2">
				‘꿈의 장: ETERNITY’는 데뷔 앨범 ‘꿈의 장: STAR’, 정규 1집<br> ‘꿈의 장: MAGIC’에 이어 나와 다르면서도 닮은 친구들을 만난 소년들이<br>
				겪는 경험을 이야기로 풀어냈다. 현실이라는 벽에 부딪히고, 친구들과<br> 갈등을 경험하기도 하지만, 우리가 함께했던 시간만큼은 영원하기를<br>
				바라는 소년들의 간절한 마음이 담겨 있다.
				</div>
				<div>
					이번 앨범에는 1번 트랙 ‘Drama’를 시작으로 타이틀곡 ‘세계가 불타버린<br> 밤, 우린… (Can’t You See Me?)’, 리메이크곡 ‘샴푸의 요정’, 다섯 멤버의<br>
					첫 자작곡 ‘거울 속의 미로’, 개성 있는 가사가 돋보이는 ‘동물원을 빠져나온<br> 퓨마’, 실험적인 느낌을 주는 ‘Eternally’까지 총 6곡이 수록되어 있다.
				</div>
			</div>
		</div>
		<div class="disc-mv">
			<div class="disc-mv-tt">
				<h1>VIDEO</h1>
			</div>
			<div class="disc-mv-vd">
				<iframe class="mv-iframe" name="iframe_a" src="https://www.youtube.com/embed/ImTgS5OXgbU" allowfullscreen></iframe>
			</div>
			<div class="disc-mv-vd-tt">
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/cMFHUTJ13Ys">'세계가 불타버린 밤, 우린...' MV</a></b></span> 
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/ImTgS5OXgbU">'동물원을 빠져나온 퓨마' MV</a></b></span>
			</div>
		</div>
		<div class="disc-pt">
			<div class="disc-pt-tt">
				<h1>PHOTO</h1>
			</div>
			<div class="disc-pt-pt">
				<img alt="" src="${pageContext.request.contextPath}/resources/images/eternity.jpg" width="500px" height="800px">
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
						<span class="disc-track-2">Drama&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’29”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">2</span>
						<span class="disc-track-2">세계가 불타버린 밤, 우린...(Can't You See Me?)&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’21”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">3</span>
						<span class="disc-track-2">샴푸의 요정&nbsp;&nbsp;</span>
						<span class="disc-track-3">4’27”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">4</span>
						<span class="disc-track-2">거울 속의 미로&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’46”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">5</span>
						<span class="disc-track-2">동물원을 빠져나온 퓨마&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’25”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">6</span>
						<span class="disc-track-2">Eternally&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’37”</span>
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