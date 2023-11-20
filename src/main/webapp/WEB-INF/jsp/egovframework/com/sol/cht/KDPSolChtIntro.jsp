<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 </title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/solIntro.css?after' />">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
	    	<h2 class="vision-ai-text">ChatBot AI</h2> 
		      	<div class="additional-text">
		      		높은 정확성과 빠른 응답을 제공하는 고성능 ChatBot AI 엔진 서비스
		      	</div>
	    </div>
		    
		    <div class="button-container">
	      		<a href="<c:url value='/sol/cht/addSolCht.do' />" class="button-style">이용 신청하기</a>
		    </div>
		
			<div class="subTitle-container">
	    			<h2 class="subTitle-text"> 누구나 활용 가능한 고성능 챗봇 </h2> 
				       <p class="sub-add-text"> KDP의 데이터, 기술 노하우, NVIDIA 고성능 GPU 환경에서 개발된 챗봇을 손쉽게 만들어 다양한 서비스에 활용할 수 있습니다. </p>
	   	 	</div>
		
	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/ChatBot AI_01.png' />" alt="ChatBot AI_01" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 고성능 ChatBot AI 엔진 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	문맥, 문장, 단어 간
			        	<br>
			        	미세한 차이를 구분할 수 있고,
			        	<br>
			        	잘못 입력된 단어를
			        	<br>
			        	정확하게 인식할 수 있습니다.
			       	</p>
	    		</div>
    		</div>

	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/ChatBot AI_02.png' />" alt="ChatBot AI_02" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 다국어 지원 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	언어별 특징에 맞는
			        	<br>
			        	최적화된 알고리즘 모델을 기반으로
			        	<br>
			        	다양한 국가의 언어를 지원합니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/ChatBot AI_03.png' />" alt="ChatBot AI_03" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 자연어 처리 기술과 </h2>
		        	<h2 class="content-description1"> 머신러닝 기반 학습 알고리즘 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	KDP ChatBot AI에서 사용하는 NLU 엔진은
			        	<br>
			        	자연어 처리에 특화되어 있습니다.
			        	<br>
			        	NLU 엔진은 입력된 자연어를 품사, 어미, 형태소 등으로
			        	<br>
			        	분류하고 이를 맥락에 맞게 분석하여
			        	<br>
			        	가장 정확한 답변을 제공합니다.
			        	<br>
			        	또한 자가 학습 알고리즘이 적용되어 있어
			        	<br>
			        	지속적으로 엔진 성능이 향상됩니다.
			       	</p>
	    		</div>
    		</div>

	</form>

    <!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>
