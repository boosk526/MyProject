<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../template/link.jsp"></c:import>
<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/discographyDetailBlue.css" rel="stylesheet" type="text/css">
<head>
<title>Blue</title>
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
			<div class="disc-shape shape1"></div>
			<div class="disc-shape shape2"></div>
			<div class="disc-shape shape3"></div>
			<div class="disc-shape shape4"></div>
			<div class="disc-shape shape5"></div>
			
			<img class="disc-album-img" src="${pageContext.request.contextPath}/resources/images/album3.png">
			<div class="disc-album-tt">
				<div class="disc-album-3rd"><h3>3RD MINI ALBUM</h3></div>
				<span class="disc-album-sode1"><h1>MINISODE1 : <br>BLUE HOUR</h1></span>
			</div>
			<div class="disc-album-con">
				<div>
					그룹 투모로우바이투게더(수빈, 연준, 범규, 태현, 휴닝카이)가 10월 26일<br> 세 번째 미니 앨범 ‘minisode1 : Blue Hour’를 발매한다.
				</div>
				<div class="dics-con-2">
					지난 5월 미니 2집 ‘꿈의 장: ETERNITY’로 뛰어난 실력과 비주얼을<br> 재확인시킨 것은 물론, 음반과 음원 등에서 자체 최고 기록을 세우며<br> 새로운 성장의 아이콘으로 자리매김한 투모로우바이투게더.
				</div>
				<div>
					전 세계 50개 국가 및 지역의 아이튠즈 ‘톱 앨범’ 차트 1위, 미국 유명 방송<br> 라디오 디즈니(Radio Disney)가 발표한 ‘올해의 여름곡’ 선정 등 괄목할<br>
					만한 성과를 거두며 국내외에서 막강한 존재감을 입증한 다섯 멤버가<br> 이번에는 ‘청량 끝판왕’으로 돌아왔다. 데뷔 2년 차를 보내고 있는 2020년<br>
					현재, ‘코로나19’ 팬데믹이라는 경험해 보지 못한 상황 속에 다섯 멤버만이<br> 할 수 있는 이야기와 ‘투모로우바이투게더표 청량함’을 가득 담은<br>
					앨범으로 전 세계 팬들의 마음을 다시 한번 두드린다.
				</div>
			</div>
		</div>
		<div class="disc-mv">
			<div class="disc-mv-tt">
				<h1>VIDEO</h1>
			</div>
			<div class="disc-mv-vd">
				<iframe class="mv-iframe" name="iframe_a" src="https://www.youtube.com/embed/kwy0nR1_SBQ" allowfullscreen></iframe>
			</div>
			<div class="disc-mv-vd-tt">
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/Vd9QkWsd5p4">'5시 53분의 하늘에서 발견한 너와 나' MV</a></b></span> 
				<span><b><a target="iframe_a" href="https://www.youtube.com/embed/kwy0nR1_SBQ">'날씨를 잃어버렸어' MV</a></b></span>
			</div>
		</div>
		<div class="disc-art">
			<div class="disc-art-tt">
				<h1>PIXEL ART</h1>
			</div>
			<div class="disc-art-pt">
				<img alt="" src="${pageContext.request.contextPath}/resources/images/sode1.gif" width="500px" height="800px">
			</div>
		</div>
		<div class="disc-pt">
			<div class="disc-pt-tt">
				<h1>PHOTO</h1>
			</div>
			<div class="disc-pt-pt">
				<img alt="" src="${pageContext.request.contextPath}/resources/images/sode1-pt.jpg" width="500px" height="800px">
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
						<span class="disc-track-2">Ghosting&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’43”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">2</span>
						<span class="disc-track-2">5시 53분의 하늘에서 발견한 너와 나&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’29”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">3</span>
						<span class="disc-track-2">날씨를 잃어버렸어&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’30”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">4</span>
						<span class="disc-track-2">Wishlist&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’11”</span>
						</b>
					</div>
					<div class="disc-track-m">
						<b><span class="disc-track-1">5</span>
						<span class="disc-track-2">하굣길&nbsp;&nbsp;</span>
						<span class="disc-track-3">3’02”</span>
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