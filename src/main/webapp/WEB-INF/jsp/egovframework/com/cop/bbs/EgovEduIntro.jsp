
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
<title>교육 지원 안내</title>
<!-- 게시글 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/myPage.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/eduapplist.css?after' />">
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
	<div class="EduIntroHeader">
		<div class="inner">
			<div class="KDPText">
				<h3>교육 지원 안내</h3>
			</div>
		</div>
	</div>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>