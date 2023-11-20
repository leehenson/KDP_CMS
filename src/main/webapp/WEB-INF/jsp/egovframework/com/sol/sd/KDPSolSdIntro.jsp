<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 | Stable Diffusion 이용 안내 </title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/solIntro.css?after' />">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script>
		
	</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../head.jsp" />
	<form>
		<!-- 상단 -->
		<div class="solHeader">
			<div class="inner">
				<div class="solText">
					<h2>
						Solution
					</h2>
					<p> 순천대학교 K-디지털플랫폼은 폭넓은 분야의 요구사항을 충족할 수 있는 솔루션을 제공합니다.</p>
				</div>
			</div>
		</div>
		<!--visual-slider end-->
		
		<div class="container">
	    	<h2 class="vision-ai-text"> Stable Diffusion </h2> 
		      	<div class="additional-text">
				        텍스트 및 이미지 입력으로 사실적인 이미지를 생성할 수 있는 생성형 AI 서비스
		      	</div>
	    </div>
		    
		    <div class="button-container">
	      		<a href="<c:url value='/sol/sd/addSolSd.do' />" class="button-style">이용 신청하기</a>
		    </div>
		
			<div class="subTitle-container">
	    			<h2 class="subTitle-text"> Text-to-Image, Image-to-Image </h2> 
				       <p class="sub-add-text"> 텍스트 및 이미지 입력에 따라 자유롭게 AI 아트 이미지를 생성하여 활용할 수 있습니다. </p>
	   	 	</div>
		
	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Stable Diffusion_01.png' />" alt="Stable Diffusion_01" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 고품질 이미지 생성 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	K-디지털플랫폼의 Stable Diffusion은
			        	<br>
			        	상상하는 모든 것을 고품질 이미지로 빠르게 만들 수 있습니다.
			        	<br>
			        	텍스트나 이미지를 입력하면 손쉽게 생성할 수 있습니다.
			       	</p>
	    		</div>
    		</div>

	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Stable Diffusion_02.png' />" alt="Stable Diffusion_02" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> GPU 지원 및 빠른 생성 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	K-디지털플랫폼의 Stable Diffusion을 이용하면
			        	<br>
			        	복잡한 설치 과정을 생략할 수 있으며,
			        	<br>
			        	고가의 GPU 서버 혹은 고사양 서버가 없어도
			        	<br>
			        	빠른 이미지 생성 및 모델 학습이 가능합니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Stable Diffusion_03.png' />" alt="Stable Diffusion_03" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 다양한 확장 기능 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	- Inpainting : 이미지 내 일부분 편집
			        	<br>
			        	- Outpainting : 원본 이미지 외부로 이미지 확장
			        	<br>
			        	- Image-to-Image : 소스 이미지를 기반으로 새로운 이미지 생성
			       	</p>
	    		</div>
    		</div>
    	
	</form>
	
	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
	
</body>
</html>
