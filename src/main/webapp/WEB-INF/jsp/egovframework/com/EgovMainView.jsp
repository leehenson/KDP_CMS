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
<title>순천대학교 K-디지털 플랫폼</title>

<!-- 행정안전부 공통서비스 테스트 사이트 -->
<script language="javascript"
	src="<c:url value='/js/egovframework/com/main.js' />"></script>

<script type="text/javascript"
	src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>"></script>

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

<style>@-webkit-keyframes marqueeAnimation-8716406 {100%
{transform:translateX(-2219px)}}</style>

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
						<li><img class="main-banner"
							src="<c:url value='/images/egovframework/com/uat/uia/main_banner_01.png' />" /></li>
						<li><img class="main-banner"
							src="<c:url value='/images/egovframework/com/uat/uia/main_banner_02.png' />" /></li>
						<li><img class="main-banner"
							src="<c:url value='/images/egovframework/com/uat/uia/main_banner_03.png' />" /></li>
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
					<h2 class="main_title">솔루션</h2>
					<h2 class="main_sub_title">Solution</h2>
					<p class="main_underbar">ㅡ</p>
					<p class="main_section_info">K-디지털 플랫폼을 통한</p>
					<p class="main_section_info">다양한 솔루션 제공</p>

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
									<a href="<c:url value='/sol/vsn/showSolVsn.do' />">
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
									<a href="<c:url value='/sol/cht/showSolCht.do' />">
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
									<a href="<c:url value='/sol/sd/showSolSd.do' />">
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
									<a href="<c:url value='/sol/jpt/showSolJpt.do' />">
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

					<!-- 					<div class="index-reference-pagination d-block d-lg-none"> -->
					<!-- 						<div -->
					<!-- 							class="swiper-pagination swiper-pagination-progressbar swiper-pagination-horizontal"> -->
					<!-- 							<span class="swiper-pagination-progressbar-fill" -->
					<!-- 								style="transform: translate3d(0px, 0px, 0px) scaleX(0.333333) scaleY(1); transition-duration: 300ms;"></span> -->
					<!-- 						</div> -->
					<!-- 						<div class="index-reference-nav"> -->
					<!-- 							<div class="swiper-button-prev swiper-button-disabled" -->
					<!-- 								tabindex="-1" aria-label="Previous slide" -->
					<!-- 								aria-controls="swiper-wrapper-22688e14b676f4f7" -->
					<!-- 								aria-disabled="true"> -->
					<!-- 								<i class="icon-arr-page left">prev</i> -->
					<!-- 							</div> -->
					<!-- 							<div class="swiper-button-next" tabindex="0" -->
					<!-- 								aria-label="Next slide" -->
					<!-- 								aria-controls="swiper-wrapper-22688e14b676f4f7" -->
					<!-- 								aria-disabled="false"> -->
					<!-- 								<i class="icon-arr-page right">next</i> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->

				</div>
			</div>
		</div>


		<section id="index-news" class="swiper-slide swiper-slide-active"
			role="group" aria-label="5 / 7">
			<div class="container-lg">
				<div class="row align-items-center">
					<div class="col-lg-4">
						<h2 class="main_title">
							소식
						</h2>
						<h2 class="main_sub_title">KDP News</h2>
						<p class="main_underbar">ㅡ</p>
						<p class="notice_ment">K-디지털 플랫폼의</p>
						<p class="notice_ment_2">소식을 확인해 보세요</p>
						<a class="btn" href="<c:url value='/cop/bbs/selectArticleList.do'/>"> MORE </a>
					</div>
					<div class="col-lg-8">
						<ul>
							<li><a href="/promotion/newsletter/0000003437">
									<div class="row">
										<strong class="col-auto">뉴스레터</strong>
										<div class="col">
											<h3 class="text-truncate">K-디지털플랫폼 이용 사례 10월호</h3>
											<p class="txt-line">K-디지털플랫폼의 월간 레퍼런스 2023년 9월호가&nbsp;발행
												되었습니다. 많은 관심 부탁 드립니다. K-디지털플랫폼의 월간 레퍼런스 2023년 9월호가&nbsp;발행
												되었습니다. 많은 관심 부탁 드립니다.</p>
										</div>
										<div class="col-auto">
											<img
												src="https://www.sysmate.co.kr/data/upload/boardThumb/981522ab49074d1d879dd713e721fd60(290x240).jpg"
												alt="" width="180">
										</div>
									</div>
							</a></li>
							<li><a href="/promotion/newsletter/0000003421">
									<div class="row">
										<strong class="col-auto">뉴스레터</strong>
										<div class="col">
											<h3 class="text-truncate">뉴스레터 2023년 11월호</h3>
											<p class="txt-line">KDP의 2023년 10월 뉴스레터가 발행 되었습니다. 순천시
												감사장 수상 소식 및 나라장터종합쇼핑몰 제품 라인업 소개 내용입니다. 많은 관심 부탁 드립니다.</p>
										</div>
										<div class="col-auto">
											<img
												src="https://www.sysmate.co.kr/data/upload/boardThumb/7611a9712c2640f6b3c1a0573559479c(290x240).jpg"
												alt="" width="180">
										</div>
									</div>
							</a></li>
							<li><a href="/promotion/notice/0000003413">
									<div class="row">
										<strong class="col-auto">기업공지</strong>
										<div class="col">
											<h3 class="text-truncate">순천대학교, K-디지털플랫폼 출시 "지역 디지털 특화
												기여"</h3>
											<p class="txt-line">안녕하세요. 순천대학교 K-디지털플랫폼입니다.&nbsp;
												순천대학교가 순천시로부터&nbsp; 학생 및 교직원의 정신건강 증진 실천에 적극 기여한 공로를 인정받아
												감사장을 받았습니다.&nbsp; 정신건강 진단 교육 키오스크(MENTAL CARE KIOSK
												Series)&nbsp; 시스메이트와 사단법인 대한정신의료기관협회가 협력하여 개발한 멘탈 헬스케어 서비스로
												△기관 안내 △마음건강 자가 검진 △질환별 정보 △두뇌교육게임 △병원 안내 △관리자 페이지 등 7개의 기능을
												제공하며&nbsp; 공인된 심리분석 척도에 따라 자가검진 후 결과는 카카오톡으로 전송할 수 있으며, 간편하게
												상담예약까지 진행할 수 있습니다.&nbsp; 시스메이트는 디지털사이니지 전문 기업으로써 정신건강 서비스
												활성화 사업에&nbsp;앞장서며 전 국민이 언제든 필요한 정신건강서비스를 이용할 수 있는 서비스 제공에
												노력하겠습니다.&nbsp; 감사합니다. 관련 기사 보러가기 2023년 10월 12일 주식회사 시스메이트
												드림&nbsp; &nbsp;</p>
										</div>
										<div class="col-auto"></div>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>



		<!-- 				<div class="mp_top"> -->
		<!-- 						<div class="l" style="width: 100% !important"> -->
		<!-- 					left layout -->
		<!-- 							<h3 class="m_tit01 mt15">SOLUTIONS</h3> -->
		<%-- 							<spring:message code="comSymMnuMpm.mainView.selectCommuMasterListPortlet"/> --%>
		<!-- 								<div style="height: 250px"> -->
		<%-- 									<c:import url="/cop/cmy/selectCommuMasterListPortlet.do" /> --%>
		<!-- 								</div> -->

		<!-- 생성된 블로그 목록 -->
		<%-- 							<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.selectBlogListPortlet"/></h3>--%>
		<!-- 								<div style="display:none"> style="height:181px" -->
		<%-- 									<c:import url="/cop/bbs/selectBlogListPortlet.do" /> --%>
		<!-- 								</div> -->
		<!-- 						</div> -->

		<!-- 				<div class="r"> -->
		<!-- 				right layout -->
		<!-- 부서일정관리 -->
		<%-- 					<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.deptSchdulManageMainList"/></h3>--%>
		<!-- 						<div style="height:150px"> -->
		<%-- 							<c:import charEncoding="utf-8" url="/cop/smt/sdm/EgovDeptSchdulManageMainList.do" ></c:import> --%>
		<!-- 						</div> -->

		<!-- 나의일정관리 -->
		<%-- 						<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.indvdlSchdulManageMainList"/></h3> --%>
		<!-- 						<div style="height:150px"> -->
		<%-- 							<c:import charEncoding="utf-8" url="/cop/smt/sim/EgovIndvdlSchdulManageMainList.do" ></c:import> --%>
		<!-- 							<tr> -->
		<!-- 								<td> -->
		<!-- 									여기에 일정 목록이 들어감 -- KDP CMS -->
		<!-- 								</td> -->
		<!-- 							</tr> -->
		<!-- 						</div> -->

		<!-- 					<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.exchangeRateInformation"/></h3> 환율정보 -->
		<!-- 					<iframe src="http://fx.kebhana.com/fxportal/jsp/RS/DEPLOY_EXRATE/fxrate_all.html" width="100%" height="181" border="0" frameborder="no" scrolling="no" marginwidth="0" hspace="0" vspace="0"></iframe> -->
		<!-- 				</div> -->

		<!-- 배너 -->
		<%-- 						<h3 class="m_tit01 mt15"><spring:message code="comSymMnuMpm.mainView.getBannerImage"/></h3> --%>
		<!-- 						<div class="mp_bn"> -->
		<%-- 							<c:import url="/uss/ion/bnr/getBannerImage.do" charEncoding="utf-8"> --%>
		<%-- 								<c:param name="atchFileId" value="${banner.bannerImageFile}" /> --%>
		<%-- 							</c:import> --%>
		<!-- 						</div> -->
		
		<div class="marquee_wrap">
		<div class="marquee_row">
					<div class="partners_wrap">
					<div class="partners">
						<h2 class="main_title">
							협약기업
						</h2>
						<h2 class="main_sub_title">Partners</h2>
						<p class="main_underbar">ㅡ</p>
					</div>
			<div style="width: 100000px; transform: translateX(0px); animation: 21.7036s linear 0.5s infinite normal none running marqueeAnimation-8716406;" class="js-marquee-wrapper">
				<div class="js-marquee" style="margin-right: 0px; float: left;">
	                <div class="marquee_top">
	                    <ul class="marquee_list">
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/SCNU_3x.png' />" alt="국립순천대학교"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Suncheon_3x.png' />" alt="순천시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Yeosu_3x.png' />" alt="여수시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Gwangyang_3x.png' />" style="max-width: 9rem" alt="광양시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Goheung_3x.png' />" style="max-width: 8rem" alt="고흥군"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/YGPA_3x.png' />" alt="여수광양항만공사"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Hanyeong_univ_3x.png' />" alt="한영대학교"></li>	                        
	                     </ul>
	                </div>
	            </div>
				<div class="js-marquee" style="margin-right: 0px; float: left;">
	                <div class="marquee_top">
	                    <ul class="marquee_list">
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/SCNU_3x.png' />" alt="국립순천대학교"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Suncheon_3x.png' />" alt="순천시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Yeosu_3x.png' />" alt="여수시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Gwangyang_3x.png' />" style="max-width: 9rem" alt="광양시"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Goheung_3x.png' />" style="max-width: 8rem" alt="고흥군"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/YGPA_3x.png' />" alt="여수광양항만공사"></li>
	                    	<li><img src="<c:url value='/images/egovframework/com/uat/partners/Hanyeong_univ_3x.png' />" alt="한영대학교"></li>
	                     </ul>
	                </div>
	            </div>
			</div>
			</div>
        </div>
		</div>
		
		
		
	</div>

	<!-- bottom -->
	<c:import url="./main_bottom.jsp" />

	<script>
		$('.main-view>ul>li').hide();
		$('.main-view>ul>li:first-child').show();

		setInterval(function() {
			$('.main-view>ul>li:first-child').fadeOut().next().fadeIn(1000)
					.end(10000) // 페이드인/아웃 속도 조절
					.appendTo('.main-view>ul');
		}, 7000); // 전환 속도
	</script>

</body>
</html>