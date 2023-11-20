
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
<title> 순천대학교 K-디지털플랫폼 | 갤러리 </title>
<!-- 게시글 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/myPage.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/board.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/gallery.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/com.css' />">
<script type="text/javascript"
	src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>"></script>
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet"
	type="text/css">
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
	<div class="BoardHeader">
		<div class="inner"></div>
	</div>

	<!-- javascript warning tag  -->
	<noscript class="noScriptTitle">
		<spring:message code="common.noScriptTitle.msg" />
	</noscript>

	<!-- 게시판 탭 -->
	<div class="board-tab">
		<ul class="box-tab">
			<li><a class="" id="g-tab"
				href="<c:url value='/cop/bbs/selectArticleList.do'/>">공지사항</a></li>
			<li><a class="on" id="g-tab"
				href="<c:url value='/cop/bbs/selectGalleyList.do'/>">갤러리</a></li>
			<li><a class="" id="p-tab"
				href="<c:url value='/cop/bbs/selectResourceList.do'/>">자료실</a></li>
		</ul>
	</div>

	<!-- 게시판 목록 시작 -->
	<div id="bo_list">
		<h1
			style="width: 100%; border-bottom: 2px solid lightgray; padding-bottom: 5px; margin-bottom: 40px;">
			<span
				style="font-size: 26px; border-bottom: 4px solid #004483; padding-bottom: 3px;">
				공지사항 </span>
		</h1>

		<!-- 게시판 페이지 정보 및 버튼 시작 -->
		<div id="gal_sch_wrap">
			<div id="bo_list_total">
				<span>Total 10건</span> 1 페이지
			</div>

			<!-- 게시판 검색 시작  -->
			<div class="sch_wrap">
				<div class="bo_sch">
					<form class="sch_form" name="fsearch" method="get">
						<div>
							<input type="hidden" name="bo_table" value="notice"> <input
								type="hidden" name="sca" value=""> <input type="hidden"
								name="sop" value="and"> <select name="sfl" id="sfl">
								<option value="wr_subject">제목</option>
								<option value="wr_content">내용</option>
								<option value="wr_subject||wr_content">제목+내용</option>
								<option value="wr_name,1">글쓴이</option>
								<option value="wr_name,0">글쓴이(코)</option>
							</select>
						</div>

						<div class="sch_bar">
							<input type="text" name="stx" value="" required="" id="stx"
								class="sch_input" size="25" maxlength="20"
								placeholder=" 검색어를 입력해주세요">
							<button type="submit" value="검색" class="sch_btn">
								<i class="fa fa-search" aria-hidden="true"></i> <span
									class="sound_only">검색</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 게시판 페이지 정보 및 버튼 끝 -->

		<form name="fboardlist" id="fboardlist"
			action="http://skkukdp.re.kr/bbs/board_list_update.php"
			onsubmit="return fboardlist_submit(this);" method="post">

			<input type="hidden" name="bo_table" value="notice"> <input
				type="hidden" name="sfl" value=""> <input type="hidden"
				name="stx" value=""> <input type="hidden" name="spt"
				value=""> <input type="hidden" name="sca" value="">
			<input type="hidden" name="sst" value="wr_num, wr_reply"> <input
				type="hidden" name="sod" value=""> <input type="hidden"
				name="page" value="1"> <input type="hidden" name="sw"
				value="">

			<div id="bo_btn_top">

				<!-- 갤러리 게시판 -->
				<div class="gallery">
					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip01_laptop.png' />">
						<div class="gallery-item-info">
							<h3>노트북(임대)</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 102</p>
							<p>날짜: 11-01</p>
						</div>
					</div>

					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip02_AR_Glasses.png' />">
						<div class="gallery-item-info">
							<h3>AR글래스</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 82</p>
							<p>날짜: 11-02</p>
						</div>
					</div>

					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip03_Oculus1.png' />">
						<div class="gallery-item-info">
							<h3>VR_Oculus1</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 65</p>
							<p>날짜: 11-03</p>
						</div>
					</div>

					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip04_Oculus2.png' />">
						<div class="gallery-item-info">
							<h3>VR_Oculus2</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 78</p>
							<p>날짜: 11-04</p>
						</div>
					</div>

					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip05_ViveFullSet1.png' />">
						<div class="gallery-item-info">
							<h3>Vive Pro1</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 67</p>
							<p>날짜: 11-05</p>
						</div>
					</div>

					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip06_ViveFullSet2.png' />">
						<div class="gallery-item-info">
							<h3>Vive Pro2</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 39</p>
							<p>날짜: 11-06</p>
						</div>
					</div>
					
					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip07_drone1.png' />">
						<div class="gallery-item-info">
							<h3>Drone1</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 88</p>
							<p>날짜: 11-07</p>
						</div>
					</div>
					
					<div class="gallery-item">
						<img
							src="<c:url value='/images/egovframework/com/uat/intro/equip08_drone2.png' />">
						<div class="gallery-item-info">
							<h3>Drone2</h3>
							<p>작성자: 관리자</p>
							<p>조회수: 56</p>
							<p>날짜: 11-08</p>
						</div>
					</div>
				</div>

				<!-- 페이지 -->
			</div>
		</form>

		<!-- 게시판 검색 시작 -->
<!-- 		<div class="sch_wrap"> -->
<!-- 			<div class="bo_sch"> -->
<!-- 				<form class="sch_form" name="fsearch" method="get"> -->
<!-- 					<div> -->
<!-- 						<input type="hidden" name="bo_table" value="notice"> <input -->
<!-- 							type="hidden" name="sca" value=""> <input type="hidden" -->
<!-- 							name="sop" value="and"> <select name="sfl" id="sfl"> -->
<!-- 							<option value="wr_subject">제목</option> -->
<!-- 							<option value="wr_content">내용</option> -->
<!-- 							<option value="wr_subject||wr_content">제목+내용</option> -->
<!-- 							<option value="wr_name,1">글쓴이</option> -->
<!-- 							<option value="wr_name,0">글쓴이(코)</option> -->
<!-- 						</select> -->
<!-- 					</div> -->

<!-- 					<div class="sch_bar"> -->
<!-- 						<input type="text" name="stx" value="" required="" id="stx" -->
<!-- 							class="sch_input" size="25" maxlength="20" -->
<!-- 							placeholder=" 검색어를 입력해주세요"> -->
<!-- 						<button type="submit" value="검색" class="sch_btn"> -->
<!-- 							<i class="fa fa-search" aria-hidden="true"></i> <span -->
<!-- 								class="sound_only">검색</span> -->
<!-- 						</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 			<div class="bo_sch_bg"></div> -->
<!-- 		</div> -->
		<script>
			jQuery(function($) {
				// 게시판 검색
				$(".btn_bo_sch").on("click", function() {
					$(".bo_sch_wrap").toggle();
				})
				$('.bo_sch_bg, .bo_sch_cls').click(function() {
					$('.bo_sch_wrap').hide();
				});
			});
		</script>
		<!-- 게시판 검색 끝 -->
	</div>
	<!-- 게시판 목록 끝 -->

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>