
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
<title> 순천대학교 K-디지털플랫폼 | 공지사항 </title>
<!-- 게시글 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/myPage.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/board.css?after' />">
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
		<div class="inner">
			<!-- 			<div class="KDPText"> -->
			<!-- 				<h2> 게시판 </h2> -->
			<!-- 			</div> -->
		</div>
	</div>

	<!-- javascript warning tag  -->
	<noscript class="noScriptTitle">
		<spring:message code="common.noScriptTitle.msg" />
	</noscript>

	<!-- 게시판 탭 -->
	<div class="board-tab">
		<ul class="box-tab">
			<li><a class="on" id="p-tab"
				href="<c:url value='/cop/bbs/selectArticleList.do'/>">공지사항</a></li>
			<li><a class="" id="g-tab" href="<c:url value='/cop/bbs/GalleryList.do'/>">갤러리</a></li>
			<li><a class="" id="g-tab"
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
		<div id="total_sch_wrap">
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

		<form name="fboardlist" id="fboardlist" action="#"
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


				<div class="tbl_head01 tbl_wrap">
					<table>
						<caption>공지사항 목록</caption>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">글쓴이</th>
								<th scope="col td_num">조회수</th>
								<th scope="col">날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr class=" even">
								<td class="td_num2">10</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> [K-디지털 플랫폼] 1인 미디어실 체험 후기 영상 </a> <i
											class="fa fa-download" aria-hidden="true"></i><i
											class="fa fa-link" aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">98</td>
								<td class="td_datetime">11-16</td>

							</tr>
							<tr class=" ">
								<td class="td_num2">9</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> [순천대학교] Microsoft 재직자와 함께하는 비전공자를 위한 커리어 개발
											토크 </a> <i class="fa fa-link" aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">82</td>
								<td class="td_datetime">11-11</td>

							</tr>
							<tr class=" even">
								<td class="td_num2">8</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> 메타버스를 위한 HoloLens2(홀로렌즈) 재직자 교육 </a> <i
											class="fa fa-link" aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">70</td>
								<td class="td_datetime">10-27</td>

							</tr>
							<tr class=" ">
								<td class="td_num2">7</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> K-디지털 플랫폼 디지털확산 세미나 'Meet, AI' </a> <i
											class="fa fa-link" aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">83</td>
								<td class="td_datetime">10-01</td>

							</tr>
							<tr class=" even">
								<td class="td_num2">6</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> 2023 순천대학교 산학협력 협약식 </a> <i class="fa fa-heart"
											aria-hidden="true"></i><i class="fa fa-link"
											aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">118</td>
								<td class="td_datetime">09-20</td>

							</tr>
							<tr class=" ">
								<td class="td_num2">5</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> 의료/헬스케어 VR 기술 시연 </a> <i class="fa fa-heart"
											aria-hidden="true"></i><i class="fa fa-link"
											aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">175</td>
								<td class="td_datetime">08-25</td>

							</tr>
							<tr class=" even">
								<td class="td_num2">4</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> [순천대학교] 메타버스 기초 소양 과정 교육 </a> <i
											class="fa fa-heart" aria-hidden="true"></i><i
											class="fa fa-link" aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">127</td>
								<td class="td_datetime">08-08</td>

							</tr>
							<tr class=" ">
								<td class="td_num2">3</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> 2022 K-디지털 플랫폼 개소식 </a> <i class="fa fa-heart"
											aria-hidden="true"></i><i class="fa fa-link"
											aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">123</td>
								<td class="td_datetime">07-20</td>

							</tr>
							<tr class="even">
								<td class="td_num2">2</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> K-디지털 플랫폼 예약 시 필독 사항 </a> <i class="fa fa-heart"
											aria-hidden="true"></i><i class="fa fa-download"
											aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">132</td>
								<td class="td_datetime">07-13</td>

							</tr>
							<tr class="">
								<td class="td_num2">1</td>

								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> K-디지털 트레이닝 홈페이지 개설 </a> <i class="fa fa-heart"
											aria-hidden="true"></i><i class="fa fa-link"
											aria-hidden="true"></i>
									</div>
								</td>
								<td class="td_name sv_use"><span class="sv_member">관리자</span></td>
								<td class="td_num">163</td>
								<td class="td_datetime">07-01</td>

							</tr>
						</tbody>
					</table>
				</div>
				<!-- 페이지 -->
			</div>
		</form>


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


	<!-- 전자정부프레임워크 틀 -->
	<!-- 	<div class="board"> -->
	<!-- 		<form name="articleForm" -->
	<%-- 			action="<c:url value='/cop/bbs/selectArticleList.do'/>" method="post" --%>
	<!-- 			onSubmit="fn_egov_search_article(); return false;"> -->
	<%-- 			<h1>${pageTitle} --%>
	<%-- 				<spring:message code="title.list" /> --%>
	<!-- 				( -->
	<%-- 				<c:out value="${boardMasterVO.bbsNm}" /> --%>
	<!-- 				) -->
	<!-- 			</h1> -->
	<!-- 게시글 목록 -->
	<!-- 하단 버튼 -->
	<!-- 			<div class="search_box" -->
	<%-- 				title="<spring:message code="common.searchCondition.msg" />"> --%>
	<!-- 				<ul> -->
	<!-- 					<li><select name="searchCnd" -->
	<%-- 						title="<spring:message code="title.searchCondition" /> <spring:message code="input.cSelect" />"> --%>
	<!-- 							<option value="0" -->
	<%-- 								<c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if>><spring:message --%>
	<%-- 									code="comCopBbs.articleVO.list.nttSj" /></option> --%>
	<!-- 글 제목  -->
	<!-- 							<option value="1" -->
	<%-- 								<c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if>><spring:message --%>
	<%-- 									code="comCopBbs.articleVO.list.nttCn" /></option> --%>
	<!-- 글 내용 -->
	<!-- 							<option value="2" -->
	<%-- 								<c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if>><spring:message --%>
	<%-- 									code="table.reger" /></option> --%>
	<!-- 작성자 -->
	<!-- 					</select></li> -->
	<!-- 					검색키워드 및 조회버튼 -->
	<!-- 					<li><input class="s_input" name="searchWrd" type="text" -->
	<!-- 						size="35" -->
	<%-- 						title="<spring:message code="title.search" /> <spring:message code="input.input" />" --%>
	<%-- 						value='<c:out value="${searchVO.searchWrd}"/>' maxlength="155"> --%>
	<!-- 						<input type="submit" class="s_btn" -->
	<%-- 						value="<spring:message code="button.inquire" />" --%>
	<%-- 						title="<spring:message code="title.inquire" /> <spring:message code="input.button" />" /> --%>
	<!-- 조회 -->
	<%-- <c:if test="${preview != 'true'}"> --%>

	<!-- 							<span class="btn_b"><a -->
	<%-- 								href="<c:url value='/cop/bbs/insertArticleView.do?bbsId=${boardMasterVO.bbsId}' />" --%>
	<%-- 								title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message --%>
	<%-- 										code="button.create" /></a></span> --%>
	<!-- 등록 -->
	<%-- 						</c:if></li> --%>
	<!-- 				</ul> -->
	<!-- 			</div> -->
	<%-- 			<input name="bbsId" type="hidden" value="${boardMasterVO.bbsId}"> --%>
	<!-- 			<input name="pageIndex" type="hidden" value=""> -->
	<!-- 		</form> -->

	<!-- 목록영역 -->
	<!-- 		<table class="board_list" -->
	<%-- 			summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />"> --%>
	<%-- 			<caption>${pageTitle} --%>
	<%-- 				<spring:message code="title.list" /> --%>
	<%-- 			</caption> --%>
	<%-- 			<colgroup> --%>
	<%-- 				<col style="width: 9%;"> --%>
	<%-- 				<col style="width: 40%;"> --%>
	<%-- 				<col style="width: 13%;"> --%>
	<%-- 				<col style="width: 13%;"> --%>
	<%-- 				<col style="width: 13%;"> --%>
	<%-- 			</colgroup> --%>
	<!-- 			<thead> -->
	<!-- 				<tr> -->
	<%-- 					<th><spring:message code="table.num" /></th> --%>
	<!-- 번호 -->
	<%-- 					<th class="board_th_link"><spring:message --%>
	<%-- 							code="comCopBbs.articleVO.list.nttSj" /></th> --%>
	<!-- 글 제목  -->
	<%-- 					<th><spring:message code="table.reger" /></th> --%>
	<!-- 작성자명 -->
	<%-- 					<th><spring:message code="table.regdate" /></th> --%>
	<!-- 작성시각 -->
	<%-- 					<th><spring:message code="comCopBbs.articleVO.list.inqireCo" /></th> --%>
	<!-- 조회수  -->
	<!-- 				</tr> -->
	<!-- 			</thead> -->
	<!-- 			<tbody class="ov"> -->

	<!-- 공지사항 본문 -->
	<%-- 				<c:forEach items="${noticeList}" var="noticeInfo" varStatus="status"> --%>
	<!-- 					<tr> -->
	<!-- 						<td><img -->
	<%-- 							src="<c:url value='/images/egovframework/com/cop/bbs/icon_notice.png'/>" --%>
	<!-- 							alt="notice"></td> -->
	<!-- 						<td class="bold"> -->
	<!-- 							<form name="subForm" method="post" -->
	<%-- 								action="<c:url value='/cop/bbs/selectArticleDetail.do'/>"> --%>
	<!-- 								<input name="nttId" type="hidden" -->
	<%-- 									value="<c:out value="${noticeInfo.nttId}"/>"> <input --%>
	<!-- 									name="bbsId" type="hidden" -->
	<%-- 									value="<c:out value="${noticeInfo.bbsId}"/>"> <input --%>
	<!-- 									name="pageIndex" type="hidden" -->
	<%-- 									value="<c:out value='${searchVO.pageIndex}'/>" /> <span --%>
	<!-- 									class="link"><input type="submit" -->
	<%-- 									value="<c:out value='${fn:substring(noticeInfo.nttSj, 0, 40)}'/><c:if test="${noticeInfo.commentCo != ''}">	<c:out value='[${noticeInfo.commentCo}]'/></c:if>" --%>
	<!-- 									style="border: 0px solid #e0e0e0;"> </span> -->
	<!-- 							</form> -->
	<!-- 						</td> -->
	<%-- 						<td><c:out value='${noticeInfo.frstRegisterNm}' /></td> --%>
	<%-- 						<td><c:out value='${noticeInfo.frstRegisterPnttm}' /></td> --%>
	<%-- 						<td><c:out value='${noticeInfo.inqireCo}' /></td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:forEach> --%>
	<!-- 게시글 본문 -->
	<%-- 				<c:forEach items="${resultList}" var="resultInfo" varStatus="status"> --%>
	<!-- 					<tr> -->
	<%-- 						<td><c:out --%>
	<%-- 								value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}" /></td> --%>

	<%-- 						<c:choose> --%>
	<%-- 							<c:when test="${resultInfo.sjBoldAt == 'Y'}"> --%>
	<!-- 								제목 Bold인 경우  -->
	<!-- 								<td class="bold"> -->
	<!-- 									<form name="subForm" method="post" -->
	<%-- 										action="<c:url value='/cop/bbs/selectArticleDetail.do'/>"> --%>
	<!-- 										<input name="nttId" type="hidden" -->
	<%-- 											value="<c:out value="${resultInfo.nttId}"/>"> <input --%>
	<!-- 											name="bbsId" type="hidden" -->
	<%-- 											value="<c:out value="${resultInfo.bbsId}"/>"> <input --%>
	<!-- 											name="pageIndex" type="hidden" -->
	<%-- 											value="<c:out value='${searchVO.pageIndex}'/>" /> <span --%>
	<%-- 											class="link"><c:if test="${resultInfo.replyLc!=0}"> --%>
	<%-- 												<c:forEach begin="0" end="${resultInfo.replyLc}" step="1">&nbsp;	</c:forEach> --%>
	<!-- 												<img -->
	<%-- 													src="<c:url value='/images/egovframework/com/cop/bbs/icon_reply.png'/>" --%>
	<!-- 													alt="secret"> -->
	<%-- 											</c:if><input type="submit" --%>
	<%-- 											value="<c:out value='${fn:substring(resultInfo.nttSj, 0, 40)}'/><c:if test="${resultInfo.commentCo != ''}">	<c:out value='[${resultInfo.commentCo}]'/></c:if>" --%>
	<!-- 											style="border: 0px solid #e0e0e0;"></span> -->
	<!-- 									</form> -->
	<!-- 								</td> -->
	<%-- 							</c:when> --%>
	<%-- 							<c:when --%>
	<%-- 								test="${resultInfo.secretAt == 'Y' && sessionUniqId != resultInfo.frstRegisterId}"> --%>
	<!--비밀글이며 작성자가 본인이 아닌 경우(클릭 불가) -->
	<%-- 								<td class="left"><c:if test="${resultInfo.replyLc!=0}"> --%>
	<%-- 										<c:forEach begin="0" end="${resultInfo.replyLc}" step="1"> --%>
	<%-- </c:forEach> --%>
	<%-- 									</c:if> <img --%>
	<%-- 									src="<c:url value='/images/egovframework/com/cop/bbs/icon_lock.png'/>" --%>
	<%-- 									alt="secret">&nbsp;<c:out --%>
	<%-- 										value='${fn:substring(resultInfo.nttSj, 0, 40)}' /> <c:if --%>
	<%-- 										test="${resultInfo.commentCo != ''}"> --%>
	<%-- 										<c:out value='[${resultInfo.commentCo}]' /> --%>
	<%-- 									</c:if></td> --%>
	<%-- 							</c:when> --%>
	<%-- 							<c:otherwise> --%>
	<!-- 								나머지 경우 -->
	<%-- 								<td class="left"><c:choose> --%>
	<%-- 										<c:when test="${preview == 'true'}"> --%>
	<!-- 											<input name="nttId" type="hidden" -->
	<%-- 												value="<c:out value="${resultInfo.nttId}"/>"> --%>
	<!-- 											<input name="bbsId" type="hidden" -->
	<%-- 												value="<c:out value="${resultInfo.bbsId}"/>"> --%>
	<!-- 											<input name="pageIndex" type="hidden" -->
	<%-- 												value="<c:out value='${searchVO.pageIndex}'/>" /> --%>
	<%-- 											<span class="link"><c:if --%>
	<%-- 													test="${resultInfo.replyLc!=0}"> --%>
	<%-- 													<c:forEach begin="0" end="${resultInfo.replyLc}" step="1">&nbsp;	</c:forEach> --%>
	<!-- 													<img -->
	<%-- 														src="<c:url value='/images/egovframework/com/cop/bbs/icon_reply.png'/>" --%>
	<!-- 														alt="secret"> -->
	<%-- 												</c:if><input type="submit" --%>
	<%-- 												value="<c:out value='${fn:substring(resultInfo.nttSj, 0, 40)}'/><c:if test="${resultInfo.commentCo != ''}">	<c:out value='[${resultInfo.commentCo}]'/></c:if>" --%>
	<!-- 												style="border: 0px solid #e0e0e0;"></span> -->
	<%-- 										</c:when> --%>
	<%-- 										<c:otherwise> --%>
	<!-- 											<form name="subForm" method="post" -->
	<%-- 												action="<c:url value='/cop/bbs/selectArticleDetail.do'/>"> --%>
	<!-- 												<input name="nttId" type="hidden" -->
	<%-- 													value="<c:out value="${resultInfo.nttId}"/>"> <input --%>
	<!-- 													name="bbsId" type="hidden" -->
	<%-- 													value="<c:out value="${resultInfo.bbsId}"/>"> <input --%>
	<!-- 													name="pageIndex" type="hidden" -->
	<%-- 													value="<c:out value='${searchVO.pageIndex}'/>" /> <span --%>
	<%-- 													class="link"><c:if test="${resultInfo.replyLc!=0}"> --%>
	<%-- 														<c:forEach begin="0" end="${resultInfo.replyLc}" step="1">&nbsp;	</c:forEach> --%>
	<!-- 														<img -->
	<%-- 															src="<c:url value='/images/egovframework/com/cop/bbs/icon_reply.png'/>" --%>
	<!-- 															alt="secret"> -->
	<%-- 													</c:if><input type="submit" --%>
	<%-- 													value="<c:out value='${fn:substring(resultInfo.nttSj, 0, 40)}'/><c:if test="${resultInfo.commentCo != ''}">	<c:out value='[${resultInfo.commentCo}]'/></c:if>" --%>
	<!-- 													style="border: 0px solid #e0e0e0;"></span> -->
	<!-- 											</form> -->
	<%-- 										</c:otherwise> --%>
	<%-- 									</c:choose></td> --%>
	<%-- 							</c:otherwise> --%>
	<%-- 						</c:choose> --%>
	<%-- 						<td><c:out value='${resultInfo.frstRegisterNm}' /></td> --%>
	<%-- 						<td><c:out value='${resultInfo.frstRegisterPnttm}' /></td> --%>
	<%-- 						<td><c:out value='${resultInfo.inqireCo}' /></td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:forEach> --%>

	<%-- 				<c:if test="${fn:length(resultList) == 0}"> --%>
	<!-- 글이 없는 경우 -->
	<!-- 					<tr> -->
	<%-- 						<td colspan="5"><spring:message code="common.nodata.msg" /></td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:if> --%>
	<!-- 			</tbody> -->
	<!-- 		</table> -->

	<!-- paging navigation -->
	<!-- 	<div class="pagination"> -->
	<!-- 		<ul> -->
	<%-- 		<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_linkPage"/> --%>
	<!-- 		</ul> -->
	<!-- 	</div> -->

	<!-- 등록버튼 -->
	<!-- 	<div class="btn"> -->
	<!-- 		<span class="btn_s"><a href="<c:url value='/cop/bbs/insertBBSMasterView.do' />"  title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message code="button.create" /></a></span> -->
	<!-- 	</div> -->

	<!-- 	</div> -->

	<!-- 	<input name="nttId" type="hidden" value="0"> -->
	<%-- 	<input name="bbsId" type="hidden" value="${boardMasterVO.bbsId}"> --%>
	<!-- 	<input name="pageIndex" type="hidden" -->
	<%-- 		value="<c:out value='${searchVO.pageIndex}'/>"> --%>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>