
<%
	/**
* @Class Name : EgovArticleList.jsp
* @Description : EgovArticleList 화면
* @Modification Information
* @
* @  수정일             수정자                   수정내용
* @ -------    --------    ---------------------------
* @ 2009.02.01   박정규              최초 생성
*   2016.06.13   김연호              표준프레임워크 v3.6 개선
*   2018.06.15   신용호              페이징 처리 오류 개선
*  @author 공통서비스팀
*  @since 2009.02.01
*  @version 1.0
*  @see
*
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="pageTitle">
	<spring:message code="comCopBbs.articleVO.title" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<title>순천대학교 K-디지털플랫폼 | 교육 지원 안내</title>
<!-- 게시글 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/bootstrap.css' />">
<!-- <link type="text/css" rel="stylesheet" -->
<%-- 	href="<c:url value='/css/egovframework/com/myPage.css?after' />"> --%>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/eduapplist.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/solIntro.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/com.css' />">
<script type="text/javascript"
	src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>"></script>
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet"
	type="text/css">
<script src="/js/egovframework/com/loginConfirm.js"></script>
<c:choose>
	<c:when test="${preview == 'true'}">
		<script type="text/javascript">
			/*********************************************************
			 * 초기화
			 ******************************************************** */
			function fn_egov_init() {
				// 첫 입력란에 포커스..
				document.articleForm.searchCnd.focus();
			}

			/*********************************************************
			 * 페이징 처리 함수
			 ******************************************************** */
			function fn_egov_select_linkPage(pageNo) {
			}
			/*********************************************************
			 * 조회 처리 함수
			 ******************************************************** */
			function fn_egov_search_article() {
			}
			/* ********************************************************
			 * 상세회면 처리 함수
			 ******************************************************** */
			function fn_egov_inquire_articledetail(bbsId, nttId) {
				alert('test');
				return true;
			}
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			/*********************************************************
			 * 초기화
			 ******************************************************** */
			// 			function fn_egov_init() {
			// 				// 첫 입력란에 포커스..
			// 				document.articleForm.searchCnd.focus();
			// 			}
			/*********************************************************
			 * 페이징 처리 함수
			 ******************************************************** */
			function fn_egov_select_linkPage(pageNo) {
				document.articleForm.pageIndex.value = pageNo;
				document.articleForm.action = "<c:url value='/cop/bbs/selectArticleList.do'/>";
				document.articleForm.submit();
			}
			/*********************************************************
			 * 조회 처리 함수
			 ******************************************************** */
			function fn_egov_search_article() {
				document.articleForm.pageIndex.value = 1;
				document.articleForm.submit();
			}
			/* ********************************************************
			 * 상세회면 처리 함수
			 ******************************************************** */
			function fn_egov_inquire_articledetail(bbsId, nttId) {
				// 사이트 키값(siteId) 셋팅.
				document.articleForm.bbsId.bbsId.value = bbsId;
				document.articleForm.nttId.value = nttId;
				document.articleForm.action = "<c:url value='/cop/bbs/selectArticleDetail.do'/>";
				document.articleForm.submit();
			}
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

	<!-- header -->
	<c:import url="../../head.jsp" />

	<form>
		<!-- 상단 -->
		<div class="EduIntroHeader">
			<div class="inner">
				<div class="solText">
					<h2>교육 지원</h2>
					<p style="padding-top:0px;">순천대학교 K-디지털플랫폼은 폭넓은 분야의 요구사항을 충족할 수 있는 솔루션을 제공합니다.</p>
				</div>
			</div>
		</div>

		<div class="container">
			<h2 class="vision-ai-text">GPU Server</h2>
			<div class="additional-text" style="padding-top: 60px;"> 병렬 연산에 최적화된 GPU 서버의 고성능 컴퓨팅 파워를 제공하는 서비스</div>
		</div>

		<div class="button-container" style="margin-top: 60px">
			<button class="button-style" onclick="loginConfirmEdu()">이용 신청하기</button>
		</div>
						
		<div class="subTitle-container">
			<h2 class="subTitle-text"> 여러 개의 고성능 연산을 동시에 처리할 수 있는 서버</h2>
			<p class="sub-add-text">딥러닝, 인공지능(AI), 자율주행, HPC 등 고성능 컴퓨팅에 적합한 서버입니다.</p>
		</div>

		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_01.png' />"
						alt="eduSupport_01.png" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">대규모 병렬 연산 기능</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					Graphics Processing Unit(GPU)는
					<br>
					대규모 연산을 동시에 처리하는 데 최적화된 컴퓨팅 자원입니다.
					<br>
					GPU 병렬 컴퓨팅을 통해 원하는 데이터를 신속 정확하게 얻을 수 있습니다.
					<br>
					데이터 분석, 머신러닝과 같이 단위 시간당 처리량이 많이 필요한 작업에 적합합니다.
				</p>
			</div>
		</div>

		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_02.png' />"
						alt="eduSupport_02" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">고성능 GPU의 높은 활용도</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					GPU는 이미지 프로세싱, 렌더링, 과학 연산, 머신 러닝 등 적용할 수 있는 영역이 광범위합니다.
					<br>
					최신 GPU를 K-디지털플랫폼만의 최적화된 구성으로 제공해
					<br>
					빠르고 안정적인 컴퓨팅 환경을 누릴 수 있습니다.
				</p>
			</div>
		</div>

		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_03.png' />"
						alt="eduSupport_03" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">간편한 설치 및 구성</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					GPU 설치 및 구성에 필수인
					<br>
					최신 GPU 드라이버를 기본으로 제공합니다.
					<br>
					이를 통해 간편하게 GPU 환경을 구성하고 이용할 수 있습니다.
				</p>
			</div>
		</div>
		
		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_04.png' />"
						alt="eduSupport_04" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">자유로운 GPU 확장</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					서버를 생성하거나 필요할 때 GPU 자원을
					<br>
					자유롭게 늘리거나 줄일 수 있습니다.
					<br>
					기본 저장 공간 외 추가 용량이 필요한 경우에도
					<br>
					간편하게 스토리지를 추가하여 용량을 확장할 수 있습니다.
				</p>
			</div>
		</div>

		<div class="container" style="padding-top: 100px;">
			<h2 class="vision-ai-text">컨테이너(Container)</h2>
			<div class="additional-text" style="padding-top: 60px;"> 컨테이너화 된 애플리케이션을 손쉽게 배포 및 관리할 수 있는 서비스</div>
		</div>

		<div class="button-container">
			<a href="<c:url value='/com/cop/bbs/EgovEduApp.do'/>"
				class="button-style">이용 신청하기</a>
		</div>
		

		<div class="subTitle-container">
			<h2 class="subTitle-text"> 컨테이너 오케스트레이션 서비스</h2>
			<p class="sub-add-text">컨테이너 배포, 관리, 확장 등 컨테이너를 사용하는데 필요한 작업을 자동화하여 효율 및 편리함을 높여줍니다.</p>
		</div>

		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_05.png' />"
						alt="eduSupport_05.png" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">쉬운 배포 및 관리</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					작업자 노드와 관리형 제어 영역 간에 안전한 통신을 제공하고,
					<br>
					작업자 노드를 빠르게 프로비저닝하여 애플리케이션을 확장할 수 있습니다.
					<br>
					또한, 온디맨드(On-demand) 업그레이드 및 패치를 제공합니다.
				</p>
			</div>
		</div>
		
		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_06.png' />"
						alt="eduSupport_06.png" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">표준 환경 호환성</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					표준 환경을 준수하는 서비스로
					<br>
					K-디지털플랫폼에서 관리하는 애플리케이션은
					<br>
					표준 컨테이너 환경에서 관리하는 애플리케이션과 호환됩니다.
				</p>
			</div>
		</div>
		
		<div class="content-container">
			<div class="image-boxes">
				<div class="image-box">
					<img
						src="<c:url value='/images/egovframework/com/uat/eduIntro/eduSupport_07.png' />"
						alt="eduSupport_07.png" />
				</div>
			</div>
			<div class="content-description">
				<h2 class="content-description1">컨테이너 상태 모니터링</h2>
				<p class="underbar">ㅡ</p>
				<p class="content-description2">
					표준 컨테이너 상태를 모니터링해
					<br>
					서버가 다운되면 자동으로 재시작하는 등
					<br>
					상황에 따라 필요한 작업을 자동으로 실행하여
					<br>
					안정적인 컨테이너 운영을 돕습니다.
				</p>
			</div>
		</div>

	</form>


	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>