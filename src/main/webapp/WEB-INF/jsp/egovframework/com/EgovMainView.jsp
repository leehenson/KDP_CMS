<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><spring:message
		code="comSymMnuMpm.mainView.mainViewTitle" /></title>

<!-- 행정안전부 공통서비스 테스트 사이트 -->
<script language="javascript"
	src="<c:url value='/js/egovframework/com/main.js' />"></script>

<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>" ></script>

<!-- <!-- 메인 배너 부분 css -->
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value='/css/egovframework/com/header_style.css' />"> --%>

<!-- 메인 바디 부분 css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/main_body.css' />">
	

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script language="javascript">
	function chk_all(val) {

		var arr_chk = document.getElementsByName("chk");

		if (val == "Y") {

			for (i = 0; i < arr_chk.length; i++) {
				arr_chk[i].checked = true;
			}
		} else if (val == "N") {
			for (i = 0; i < arr_chk.length; i++) {
				arr_chk[i].checked = false;
			}
		}
	}
</script>
</head>

<body topmargin="0" leftmargin="0">

	<!-- header -->
	<c:import url="./head.jsp" />

	<!-- contents -->
	<div>
		<!-- 메인 배너 이미지 들어가는 div id -->
		<div id="visual-slider-main">
			<div>
	       		<div class="main-view">
		          <ul>
		            <li><img src="<c:url value='../../../images/egovframework/com/uat/uia/main_banner_01.png' />" /></li>
		            <li><img src="<c:url value='../../../images/egovframework/com/uat/uia/application_header_background.png' />" /></li>
		            <li><img src="<c:url value='../../../images/egovframework/com/uat/uia/solution_header_background.png' />" /></li>		            
		          </ul>
		        </div>
		    </div>
<!-- 			<div class="inner"> -->
<!-- 				<div class="visual-txt"> -->
<!-- 					추후 배너에 이동 버튼 생성하려면 여기에 내용 적기 -->
<!-- 					<h2> -->
<!-- 						카카오는 새로운 연결을 통해<br> 더 편리하고 즐거운 세상을 꿈꿉니다. -->
<!-- 					</h2> -->
<!-- 					<a href="#" class="btn_more">자세히 보기</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
		<!--visual-slider end-->


		<div class="container-lg">
			<div class="row">
				<div class="col-lg-4 align-self-center">
					<h2 class="sol_title">솔루션</h2>
					<h2 class="sol_sub_title"> Solution </h2>
					<p class="sol_bar"> ㅡ </p>
					<p class="sol_info"> K-디지털 플랫폼을 통한 </p>
					<p class="sol_info"> 다양한 솔루션 제공 </p>
					
<!-- 					<div class="index-reference-nav d-none d-lg-flex"> -->
<!-- 						<div class="swiper-button-prev swiper-button-disabled" -->
<!-- 							tabindex="-1" aria-label="Previous slide" -->
<!-- 							aria-controls="swiper-wrapper-22688e14b676f4f7" -->
<!-- 							aria-disabled="true"> -->

<!-- 							<i class="icon-arr-page left">prev</i> -->
<!-- 						</div> -->

<!-- 						<div class="swiper-button-next" tabindex="0" -->
<!-- 							aria-label="Next slide" -->
<!-- 							aria-controls="swiper-wrapper-22688e14b676f4f7" -->
<!-- 							aria-disabled="false"> -->
<!-- 							<i class="icon-arr-page right">next</i> -->
<!-- 						</div> -->
<!-- 					</div> -->
				</div>

				<div class="col-lg-8">
					<div id="index-reference-slide"
						class="swiper-container swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
						
						<ul class="swiper-wrapper" id="swiper-wrapper-22688e14b676f4f7"
							aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
							
							
							<!-- vision AI -->
							<li class="swiper-slide swiper-slide-active" role="group"
								aria-label="1 / 4" style="width: 300.195px; margin-right: 32px;">
								<div class="box">
										 <!-- 추후 경로 수정 -->
								<a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>">
									<p class="sol_img">
										<img
											src="<c:url value='/images/egovframework/com/uat/uia/Vision_AI_3x.png' />"
											alt="">
									</p>
								</a>
								</div>
							</li>
							
							<!-- ChatBot AI -->
							<li class="swiper-slide swiper-slide-next" role="group"
								aria-label="2 / 4" style="width: 300.195px; margin-right: 32px;">
								<div class="box">	
										 <!-- 추후 경로 수정 -->
								<a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>">
									<p class="sol_img">
										<img
											src="<c:url value='/images/egovframework/com/uat/uia/ChatBot_AI_3x.png' />"
											alt="">
									</p>									
								</a>
								</div>
							</li>
							
							<!-- Stable Diffusion -->
							<li class="swiper-slide" role="group" aria-label="3 / 4"
								style="width: 300.195px; margin-right: 32px;">
								<div class="box">
										 <!-- 추후 경로 수정 -->
								<a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>">
									<p class="sol_img">
										<img
											src="<c:url value='/images/egovframework/com/uat/uia/Stable_Diffusion_3x.png' />"
											alt="">
									</p>
								</a>
								</div>
							</li>

							<!-- Jupyter notebook -->
							<li class="swiper-slide" role="group" aria-label="4 / 4"
								style="width: 300.195px; margin-right: 32px;">
								<div class="box">
										 <!-- 추후 경로 수정 -->
								<a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>">
									<p class="sol_img">
										<img
											src="<c:url value='/images/egovframework/com/uat/uia/Jupyter_noteBook_3x.png' />"
											alt="">
									</p>
								</a>
								</div>
							</li>

						</ul>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
					
					<div class="index-reference-pagination d-block d-lg-none">
						<div
							class="swiper-pagination swiper-pagination-progressbar swiper-pagination-horizontal">
							<span class="swiper-pagination-progressbar-fill"
								style="transform: translate3d(0px, 0px, 0px) scaleX(0.333333) scaleY(1); transition-duration: 300ms;"></span>
						</div>
						<div class="index-reference-nav">
							<div class="swiper-button-prev swiper-button-disabled"
								tabindex="-1" aria-label="Previous slide"
								aria-controls="swiper-wrapper-22688e14b676f4f7"
								aria-disabled="true">
								<i class="icon-arr-page left">prev</i>
							</div>
							<div class="swiper-button-next" tabindex="0"
								aria-label="Next slide"
								aria-controls="swiper-wrapper-22688e14b676f4f7"
								aria-disabled="false">
								<i class="icon-arr-page right">next</i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


<!-- 				<div class="mp_top"> -->
<!-- 						<div class="l" style="width: 100% !important"> -->
<!-- 							left layout -->
<!-- 							<h3 class="m_tit01 mt15">SOLUTIONS</h3> -->
<%-- 							<spring:message code="comSymMnuMpm.mainView.selectCommuMasterListPortlet"/> --%>
<!-- 								<div style="height: 250px"> -->
<%-- 									<c:import url="/cop/cmy/selectCommuMasterListPortlet.do" /> --%>
<!-- 								</div> -->
<%-- 							<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.selectBlogListPortlet"/></h3> <!-- 생성된 블로그 목록 --> --%>
<!-- 								<div style="display:none"> style="height:181px" -->
<%-- 									<c:import url="/cop/bbs/selectBlogListPortlet.do" /> --%>
<!-- 								</div> -->
<!-- 						</div> -->

<!-- 				<div class="r">right layout -->
<!-- 					<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.deptSchdulManageMainList"/></h3><!-- 부서일정관리 -->
<!-- 						<div style="height:150px"> -->
<%-- 						<c:import charEncoding="utf-8" url="/cop/smt/sdm/EgovDeptSchdulManageMainList.do" ></c:import> --%>
<!-- 						</div> -->

<!-- 					<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.indvdlSchdulManageMainList"/></h3><!-- 나의일정관리 -->
<!-- 						<div style="height:150px"> -->
<%-- 						<c:import charEncoding="utf-8" url="/cop/smt/sim/EgovIndvdlSchdulManageMainList.do" ></c:import> --%>
<!-- 							<tr> -->
<!-- 								<td> -->
<!-- 									여기에 일정 목록이 들어감 -- KDP CMS -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 						</div> -->

<%-- 					<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.exchangeRateInformation"/></h3> <!-- 환율정보 --> --%>
<!-- 					<iframe src="http://fx.kebhana.com/fxportal/jsp/RS/DEPLOY_EXRATE/fxrate_all.html" width="100%" height="181" border="0" frameborder="no" scrolling="no" marginwidth="0" hspace="0" vspace="0"></iframe> -->
<!-- 				</div> -->

<%-- 						<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.getBannerImage"/></h3><!-- 배너 --> --%>
<!-- 						<div class="mp_bn"> -->
<%-- 							<c:import url="/uss/ion/bnr/getBannerImage.do" charEncoding="utf-8"> --%>
<%-- 								<c:param name="atchFileId" value="${banner.bannerImageFile}" /> --%>
<%-- 							</c:import> --%>
<!-- 						</div> -->
<!-- 				</div> -->
	</div>

	<script>
		$('.main-view>ul>li').hide();
		$('.main-view>ul>li:first-child').show();
	
		setInterval(function(){
		    $('.main-view>ul>li:first-child').fadeOut()
		    .next().fadeIn().end(1500)	// 페이드인/아웃 속도 조절
		    .appendTo('.main-view>ul');
		},3000); // 전환 속도
	</script>

	<!-- bottom -->
	<diV>
		<c:import url="./main_bottom.jsp" />
	</div>
</body>
</html>
