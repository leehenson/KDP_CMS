
<%
	/**
 * @Class Name : EgovFaqList.jsp
 * @Description : EgovFaqList 화면
 * @Modification Information
 * @
 * @  수정일             수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01   박정규              최초 생성
 *   2016.06.13   김연호              표준프레임워크 v3.6 개선
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
	<spring:message code="comUssOlhFaq.faqVO.title" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<title>순천대학교 K-디지털 플랫폼</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/com.css' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/board.css' />">
<script type="text/javascript">
	/*********************************************************
	 * 초기화
	 ******************************************************** */
	// function fn_egov_init(){
	// 	// 첫 입력란에 포커스..
	// 	document.faqForm.searchCnd.focus();
	// }
	/*********************************************************
	 * 페이징 처리 함수
	 ******************************************************** */
	function fn_egov_select_linkPage(pageNo) {
		document.faqForm.pageIndex.value = pageNo;
		document.faqForm.action = "<c:url value='/uss/olh/faq/selectFaqList.do'/>";
		document.faqForm.submit();
	}
	/*********************************************************
	 * 조회 처리 함수
	 ******************************************************** */
	function fn_egov_search_faq() {
		document.faqForm.pageIndex.value = 1;
		document.faqForm.submit();
	}
	/* ********************************************************
	 * 상세회면 처리 함수
	 ******************************************************** */
	function fn_egov_inquire_faqdetail(faqId) {
		// 사이트 키값(siteId) 셋팅.
		document.faqForm.faqId.value = faqId;
		document.faqForm.action = "<c:url value='/uss/olh/faq/selectFaqDetail.do'/>";
		document.faqForm.submit();
	}
</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../../head.jsp" />
	<div class="FAQHeader">
		<div class="inner">
			<div class="KDPText">
				<h2>고객지원</h2>
			</div>
		</div>
	</div>

	<div class="FAQtext">FAQ</div>

	<!-- javascript warning tag  -->
	<noscript class="noScriptTitle">
		<spring:message code="common.noScriptTitle.msg" />
	</noscript>

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
				<span>Total 8건</span> 1 페이지
			</div>
			<!-- 게시판 검색 시작 -->
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
							<i class="fa fa-search" aria-hidden="true"></i>
							<span class="sound_only">검색</span>
						</button>
					</div>
						
<!-- 						<div class="sch_bar"> -->
						
<!-- 							<input id="stx" class="sch_input" name="searchWrd" type="text" size="25" -->
<%-- 							title="<spring:message code="title.search" /> <spring:message code="input.input" />" --%>
<%-- 							value='<c:out value="${searchVO.searchWrd}"/>' maxlength="155" --%>
<!-- 							required="" placeholder=" 검색어를 입력해주세요"> -->
							
<!-- 							<input type="submit" class="sch_btn" -->
<%--  							value="<spring:message code="button.inquire" />"  --%>
<%--  							title="<spring:message code="title.inquire" /> <spring:message code="input.button" />" />  --%>
<!-- 								<span class="btn_b"> -->
<%-- 									<a href="<c:url value='/uss/olh/faq/insertFaqView.do' />"  --%>
<%--  									title="<spring:message code="input.button" />"> --%>
<%--  									<spring:message code="input.button" /> --%>
<!--  									</a> -->
<!--  								</span> -->
<!-- 						</div> -->
					</form>
				</div>
			</div>
		</div>
		<!-- 게시판 페이지 정보 및 버튼 끝 -->

		<form name="faqForm" id="fboardlist"
			action="<c:url value='/uss/olh/faq/selectFaqList.do'/>"
			onsubmit="fn_egov_search_faq(); return false;" method="post">

<!-- 			<input type="hidden" name="bo_table" value="notice"> <input -->
<!-- 				type="hidden" name="sfl" value=""> <input type="hidden" -->
<!-- 				name="stx" value=""> <input type="hidden" name="spt" -->
<!-- 				value=""> <input type="hidden" name="sca" value=""> -->
<!-- 			<input type="hidden" name="sst" value="wr_num, wr_reply"> <input -->
<!-- 				type="hidden" name="sod" value=""> <input type="hidden" -->
<!-- 				name="page" value="1"> <input type="hidden" name="sw" -->
<!-- 				value=""> -->

			<div id="bo_btn_top">

				<div class="tbl_head01 tbl_wrap">
					<table>
						<caption>공지사항 목록</caption>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">카테고리</th>
								<th scope="col">제목</th>
							</tr>
						</thead>
						<tbody>

							<tr class=" even">
								<td class="td_num2">08</td>
								<td class="td_category">기타</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. [SMS] 발신번호 서류 인증은 어떻게 진행하나요? </a>
									</div>
								</td>
							</tr>

							<tr class=" ">
								<td class="td_num2">07</td>
								<td class="td_category">계정</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 계정(로그인 ID)를 찾을 수 없습니다. 어떻게 해야 하나요? </a>
									</div>
								</td>
							</tr>

							<tr class=" even">
								<td class="td_num2">06</td>
								<td class="td_category">솔루션</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 내 서버 이미지로 윈도우 서버 생성 시도 후 리부팅이 되지 않아 생성에
											실패했습니다. 어떻게 해야 하나요? </a>
									</div>
								</td>
							</tr>

							<tr class=" ">
								<td class="td_num2">05</td>
								<td class="td_category">솔루션</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 방화벽에서 허용할 Maps API 정보를 알 수 있을까요? </a>
									</div>
								</td>
							</tr>

							<tr class=" even">
								<td class="td_num2">04</td>
								<td class="td_category">솔루션</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. Maps API의 대표 계정은 무엇인가요? </a>
									</div>
								</td>
							</tr>

							<tr class=" ">
								<td class="td_num2">03</td>
								<td class="td_category">계정</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 회원(회사) 정보는 어떻게 변경할 수 있나요? </a>
									</div>
								</td>
							</tr>

							<tr class=" even">
								<td class="td_num2">02</td>
								<td class="td_category">솔루션</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 솔루션 이용은 어떻게 하나요? </a>
									</div>
								</td>
							</tr>

							<tr class=" ">
								<td class="td_num2">01</td>
								<td class="td_category">교육</td>
								<td class="td_subject" style="padding-left: 0px">
									<div class="bo_tit">
										<a href="#"> Q. 교육 활용을 위한 리소스 신청은 어떤 것들이 가능한가요? </a>
									</div>
								</td>
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


	<!-- 	<form name="faqForm" -->
	<%-- 		action="<c:url value='/uss/olh/faq/selectFaqList.do'/>" method="post" --%>
	<!-- 		onSubmit="fn_egov_search_faq(); return false;"> -->

	<!-- 		<div> -->
	<!-- 		<div class="board"> -->
	<%-- 			<h1>${pageTitle} --%>
	<%-- 				<spring:message code="title.list" /> --%>
	<!-- 			</h1> -->
	<!-- 			하단 버튼 -->
	<!-- 			<div class="search_box" -->
	<%-- 				title="<spring:message code="common.searchCondition.msg" />"> --%>
	<!-- 				<ul> -->
	<!-- 					<li><select name="searchCnd" -->
	<%-- 						title="<spring:message code="title.searchCondition" /> <spring:message code="input.cSelect" />"> --%>
	<!-- 							<option value="0" -->
	<%-- 								<c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if>><spring:message --%>
	<%-- 									code="comUssOlhFaq.faqVO.qestnSj" /></option> --%>
	<!-- 							질문제목 -->
	<!-- 					</select></li> -->
	<!-- 					검색키워드 및 조회버튼 -->
	<!-- 					<li><input class="s_input" name="searchWrd" type="text" -->
	<!-- 						size="35" -->
	<%-- 						title="<spring:message code="title.search" /> <spring:message code="input.input" />" --%>
	<%-- 						value='<c:out value="${searchVO.searchWrd}"/>' maxlength="155"> --%>
	<!-- 						<input type="submit" class="s_btn" -->
	<%-- 						value="<spring:message code="button.inquire" />" --%>
	<%-- 						title="<spring:message code="title.inquire" /> <spring:message code="input.button" />" /> --%>
	<!-- 						<span class="btn_b"><a -->
	<%-- 							href="<c:url value='/uss/olh/faq/insertFaqView.do' />" --%>
	<%-- 							title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message --%>
	<%-- 									code="button.create" /></a></span></li> --%>
	<!-- 				</ul> -->
	<!-- 			</div> -->

	<!-- 			목록영역 -->
	<!-- 			<table class="board_list" -->
	<%-- 				summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />"> --%>
	<%-- 				<caption>${pageTitle}<spring:message code="title.list" /> --%>
	<%-- 				</caption> --%>
	<%-- 				<colgroup> --%>
	<%-- 					<col style="width: 9%;"> --%>
	<%-- 					<col style="width: 40%;"> --%>
	<%-- 					<col style="width: 9%;"> --%>
	<%-- 					<col style="width: 13%;"> --%>
	<%-- 				</colgroup> --%>
	<!-- 				<thead> -->
	<!-- 					<tr> -->
	<%-- 						<th><spring:message code="table.num" /></th> --%>
	<!-- 						번호 -->
	<%-- 						<th class="board_th_link"><spring:message --%>
	<%-- 								code="comUssOlhFaq.faqVO.qestnSj" /></th> --%>
	<!-- 						질문제목 -->
	<%-- 						<th><spring:message code="comUssOlhFaq.faqVO.inqireCo" /></th> --%>
	<!-- 						조회수 -->
	<%-- 						<th><spring:message code="table.regdate" /></th> --%>
	<!-- 						등록일자 -->
	<!-- 					</tr> -->
	<!-- 				</thead> -->
	<!-- 				<tbody class="ov"> -->
	<%-- 					<c:if test="${fn:length(resultList) == 0}"> --%>
	<!-- 						<tr> -->
	<%-- 							<td colspan="4"><spring:message code="common.nodata.msg" /></td> --%>
	<!-- 						</tr> -->
	<%-- 					</c:if> --%>
	<%-- 					<c:forEach items="${resultList}" var="resultInfo" --%>
	<%-- 						varStatus="status"> --%>
	<!-- 						<tr> -->
	<%-- 							<td><c:out --%>
	<%-- 									value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}" /></td> --%>
	<!-- 							<td class="left"><a -->
	<%-- 								href="<c:url value='/uss/olh/faq/selectFaqDetail.do?faqId=${resultInfo.faqId}'/>" --%>
	<%-- 								onClick="fn_egov_inquire_faqdetail('<c:out value="${resultInfo.faqId}"/>');return false;"><c:out --%>
	<%-- 										value='${fn:substring(resultInfo.qestnSj, 0, 40)}' /></a></td> --%>
	<%-- 							<td><c:out value='${resultInfo.inqireCo}' /></td> --%>
	<%-- 							<td><c:out value='${resultInfo.frstRegisterPnttm}' /></td> --%>
	<!-- 						</tr> -->
	<%-- 					</c:forEach> --%>
	<!-- 				</tbody> -->
	<!-- 			</table> -->


	<!-- paging navigation -->
	<div class="pagination">
		<ul>
			<ui:pagination paginationInfo="${paginationInfo}" type="image"
				jsFunction="fn_egov_select_linkPage" />
		</ul>
	</div>
	<!-- 		</div> -->
	<!-- 	</div> -->

	<input name="faqId" type="hidden"
		value="<c:out value='${searchVO.faqId}'/>">
	<input name="pageIndex" type="hidden"
		value="<c:out value='${searchVO.pageIndex}'/>">
	<!-- 	</form> -->

	<!-- bottom -->
	<c:import url="../../../main_bottom.jsp" />

</body>
</html>