<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>순천대학교 K-디지털 플랫폼</title>
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
					<p> 순천대학교 K-디지털플랫폼은 폭넓은 분야의 요구사항을 충족할 수 있는 솔루션을 제공합니다. </p>
				</div>
			</div>
		</div>
		<!--visual-slider end-->
		
		<div class="container">
	      	<div class="vision-ai-text">Jupyter Notebook</div>
	      	<div class="additional-text">
			        김또개 아리아 컴퓨터 아슬라 별하 함초롱하다 우리는 컴퓨터 컴퓨터 나비잠
			        아슬라 미리내 미리내 노트북 <br />포도 포도 옅구름 이플 미쁘다 도서관
			        미쁘다 바라꽃 함초롱하다 소로소록
	      	</div>
	    </div>
	    <div class="button-container">
      		<a href="<c:url value='/sol/jpt/addSolJpt.do' />" class="button-style">이용 신청하기</a>
	    </div>
		
	    <div class="content-container">
     		<div class="content-description">
	        	<h2 class="content-description1">비즈니스를 위한 AI</h2>
	        	<p class="underbar">ㅡ</p>
		        <p class="content-description2">
		          NVIDIA AI 플랫폼을 구동하는 엔터프라이즈급 소프트웨어인 NVIDIA AI
		          Enterprise는 데이터 사이언스를 가속화하고 프로덕션 준비를 마친 생성형
		          AI, 컴퓨터 비전, 음성 AI 등의 개발 및 배포를 간소화합니다. AI에서
				    비즈니스를 운영하는 엔터프라이즈는 NVIDIA AI Enterprise를 사용하여 AI
				    팀의 생산성을 향상하고 비즈니스 인사이트를 더 빠르게 얻습니다.
	       		</p>
    		</div>

			<div class="image-boxes">
			  	<div class="image-box">
				    <img src="image_1.jpg" alt="Image 1" />
				    <p>이미지 1</p>
	  			</div>
		        <div class="image-box">
					<img src="image_2.jpg" alt="Image 2" />
					<p>이미지 2</p>
		        </div>
      		</div>
    	</div>
	</form>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>
