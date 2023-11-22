<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 | Vision AI 이용 안내 </title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/solIntro.css?after' />">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="/js/egovframework/com/loginConfirm.js"></script>
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
					<p> 순천대학교 K-디지털플랫폼은 폭넓은 분야의 요구사항을 충족할 수 있는 솔루션을 제공합니다. </p>
				</div>
			</div>
		</div>
		<!--visual-slider end-->
		
		<div class="container">
	    	<h2 class="vision-ai-text">Vision AI</h2> 
		      	<div class="additional-text">
				        이미지 속 사람 및 사물 등 객체를 인지하고 분석하는 서비스
		      	</div>
	    </div>
		    
		    <div class="button-container">
	      		<button class="button-style" onclick="loginConfirmVsn()">이용 신청하기</button>
		    </div>
		
			<div class="subTitle-container">
	    			<h2 class="subTitle-text"> 이미지 속 얼굴과 관련된 다양한 정보 제공 </h2> 
				       <p class="sub-add-text"> 이미지 속 사람의 얼굴을 감지하고, 특징 값을 추출하여 다양하게 활용할 수 있습니다. </p>
	   	 	</div>
		
	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Vison AI_01.png' />" alt="Vison AI_01" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 다양한 객체 식별 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	이미지나 영상 속의 사람뿐만 아니라
			        	<br>
			        	동물과 사물 같은 다양한 객체를 식별할 수 있습니다.
			        	<br>
			        	객체를 식별한 후 결괏값으로
			        	<br>
			        	객체 이름과 탐지 정확도(%)를 제공하고
			        	<br>
			        	이미지 속 객체에 바운딩 박스를 표시합니다.
			       	</p>
	    		</div>
    		</div>

	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Vison AI_02.png' />" alt="Vison AI_02" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 서버 없이 사용 가능한 간편 설치 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	Vision AI 모델을 사용하기 위해서는
			        	<br>
			        	설치 과정이 번거롭고 고가의 GPU 서버 혹은
			        	<br>
			        	고사양 서버가 필요합니다.
			        	<br>
			        	K-디지털플랫폼에서 제공하는 Vision AI 솔루션은
			        	<br>
			        	별도로 서버를 구매하지 않아도 사용할 수 있습니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Vison AI_03.png' />" alt="Vison AI_03" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 간편한 통합 모니터링 및 </h2>
		        	<h2 class="content-description1"> RESTful API 지원 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	Vision AI 모델을 사용하기 위해서는
			        	<br>
			        	설치 과정이 번거롭고 고가의 GPU 서버 혹은
			        	<br>
			        	고사양 서버가 필요합니다.
			        	<br>
			        	K-디지털플랫폼에서 제공하는 Vision AI 솔루션은
			        	<br>
			        	별도로 서버를 구매하지 않아도 사용할 수 있습니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="subTitle-container">
	    			<h2 class="subTitle-text"> 이미지 속 객체 식별 및 관련 정보 제공 </h2> 
				       <p class="sub-add-text"> 이미지 속 사람, 동물, 물건 등 다양한 객체를 식별하고 객체의 정보를 확인할 수 있습니다. </p>
	   	 	</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Vison AI_04.png' />" alt="Vison AI_04" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 정확한 얼굴 감지 기능 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	방대한 이미지 데이터베이스(Database)를 기반으로
			        	<br>
			        	정확한 얼굴 감지 기능을 제공합니다.
			        	<br>
			        	컴퓨터 비전(Vision) 정보를 활용하여
			        	<br>
			        	새로운 인터페이스로 사용할 수 있습니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Vison AI_05.png' />" alt="Vison AI_05" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 지속적인 성능 개선 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	성능을 자동으로 개선하는
			        	<br>
			        	머신 러닝(Machine Learning) 방법이 적용되어
			        	<br>
			        	서비스 성능이 지속적으로 개선됩니다.
			       	</p>
	    		</div>
    		</div>
		</form>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
	
</body>
</html>
