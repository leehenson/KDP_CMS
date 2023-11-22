<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 | Jupyter NoteBook 이용 안내 </title>
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
	    	<h2 class="vision-ai-text"> Jupyter NoteBook </h2> 
		      	<div class="additional-text">
				        인공지능 모델을 개발할 수 있는 환경을 다양한 인프라에서 실행 가능하도록 제공
		      	</div>
	    </div>
		    
		    <div class="button-container">
	      		<button class="button-style" onclick="loginConfirmJpt()">이용 신청하기</button>
		    </div>
		
			<div class="subTitle-container">
	    			<h2 class="subTitle-text"> AI 개발 가속화 및 단순화 </h2> 
				       <p class="sub-add-text"> K-디지털플랫폼 서버 내에 구축된 주피터 시스템을 사용하여 개인 브라우저에서 인공지능 모델 개발 환경을 구축할 수 있습니다. </p>
	   	 	</div>
		
	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Jupyter noteBook_01.png' />" alt="Jupyter noteBook_01" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 편리한 웹 환경 제공 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	Jupyter NoteBook 원본 웹 애플리케이션으로
			        	<br>
			        	프로그래밍 언어 코드를 반복, 구현 및 문서화 할 수 있는
			        	<br>
			        	환경을 제공합니다.
			       	</p>
	    		</div>
    		</div>

	    	<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Jupyter noteBook_02.png' />" alt="Jupyter noteBook_02" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 다양한 AI 응용을 위한 파이썬 주피터 노트북</h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	탐색적 데이터 분석(EDA), 데이터 정리 및 변환,
			        	<br>
			        	데이터 시각화, 통계 모델링, 기계학습(ML), 딥러닝(DL) 등
			        	<br>
			        	모든 종류의 데이터 과학 작업에 사용할 수 있습니다.
			       	</p>
	    		</div>
    		</div>
    		
    		<div class="content-container">
				<div class="image-boxes">
				  	<div class="image-box">
					    <img src="<c:url value='/images/egovframework/com/uat/sol/Jupyter noteBook_03.png' />" alt="Jupyter noteBook_03" />
		  			</div>
	      		</div>
	     		<div class="content-description">
		        	<h2 class="content-description1"> 컨테이너 친화적 환경 </h2>
		        	<p class="underbar">ㅡ</p>
			        <p class="content-description2">
			        	다중 이용자가 동시에 Oauth, PAM 등 다양한 인증 방식을 통해
			        	<br>
			        	개인 브라우저로 접근하여 인공지능 모델을 개발할 수 있습니다.
			        	<br>
			        	Kubernetes를 통한 Scalable 컨테이너 친화적 환경을 제공하여
			        	<br>
			        	다양한 인프라에서 실행 가능합니다.
			       	</p>
	    		</div>
    		</div>
    		
	</form>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>
