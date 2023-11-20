
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
<title>교육 지원 신청 목록</title>
<!-- 게시글 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/eduapplist.css?after' />">
<script type="text/javascript"
	src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>"></script>
</head>
<body>

	<!-- header -->
	<c:import url="../../head.jsp" />
	<div class="EduIntroHeader">
		<div class="inner">
			<div class="KDPText">
				<h3>교육 지원 신청</h3>
			</div>
		</div>
	</div>

	<div class="main-container">

		<!-- 교육 신청  -->
		<main>
			<div class="training-content">
				<div class="search_box d_flex mt50">
					<select name="searchStat" title="검색조건" id="searchStat">
						<option value="allStat" selected="">상태(전체)</option>
						<option value="yStat">신청가능</option>
						<option value="nStat">신청불가</option>
					</select>
					<!-- <div data-ax5select=stat_cd id="stat_cd" title="상태 선택"></div> -->
					<select name="searchCondition" title="검색조건" id="searchCondition">
						<option value="edu_nm" selected="">교육명</option>
					</select> <input type="text" name="searchKeyword" id="searchKeyword"
						placeholder="검색어를 입력하세요."
						onkeypress="if(event.keyCode==13) edu.cmd.categoryView(1);">
					<button type="button" class="search_btn d_flex"
						onclick="edu.cmd.categoryView(1);">
						<span class="material-icons-outlined">검색</span>
					</button>
				</div>
			</div>
		</main>

		<article id="tab1-1" class="tab_content1 active">
			<table class="table_st2 mt30 responsive">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="20%">
					<col width="7%">
					<col width="8%">
					<col width="7%">
					<col width="7%">
					<col width="7%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>교육명</th>
						<th>교육시간</th>
						<th>교육대상</th>
						<th>접수기간</th>
						<th>정원</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="num">1</td>
						<td class="gubn">Vision AI</td>
						<!-- formattedDate가 start_app_period ~ end_app_period 범위 안에 있을 때 -->
						<td class="subject t_left">컴퓨터
								비전 기초와 응용</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">0</td>
						<td class="data">개인</td>
						<td class="data">2023-01-01 ~ 2023-01-31</td>
						<td class="data">2/50</td>
						<!-- formattedDate가 start_app_period ~ end_app_period 범위 안에 있을 때 -->
						<td class="go"><a
							href="/contents/edu/insertEduApplyForm.do?edu_id=70&amp;menuId=343"
							class="btn_st4" onclick="edu.cmd.insertChk(event)">신청하기</a></td>
					</tr>
					<tr>
						<td class="num">2</td>
						<td class="gubn">Jupyter Notebook</td>
						<!-- formattedDate가 start_app_period ~ end_app_period 범위 안에 있을 때 -->
						<td class="subject t_left">Jupyter
								Notebook으로 머신러닝</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">960</td>
						<td class="data">개인</td>
						<td class="data">2023-02-03 ~ 2023-02-27</td>
						<td class="data">0/30</td>
						<!-- formattedDate가 start_app_period ~ end_app_period 범위 안에 있을 때 -->
						<td class="go"><a
							href="/contents/edu/insertEduApplyForm.do?edu_id=87&amp;menuId=343"
							class="btn_st4" onclick="edu.cmd.insertChk(event)">신청하기</a></td>
					</tr>
					<tr>
						<td class="num">3</td>
						<td class="gubn">Stable Diffusion</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">Stable
								Diffusion을 활용한 이미지 생성</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">3</td>
						<td class="data">개인</td>
						<td class="data">2023-03-14 ~ 2023-03-30</td>
						<td class="data">20/20</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td>신청마감</td>
					</tr>
					<tr>
						<td class="num">4</td>
						<td class="gubn">ChatBot AI</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">챗봇
								AI 활용</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">100</td>
						<td class="data">개인</td>
						<td class="data">2023-04-03 ~ 2023-04-28</td>
						<td class="data">10/10</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td>신청마감</td>
					</tr>
					<tr>
						<td class="num">5</td>
						<td class="gubn">Object Detection</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">딥러닝
								기반 객체 인식</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">94</td>
						<td class="data">개인</td>
						<td class="data">2023-04-23 ~ 2023-09-11</td>
						<td class="data">8/10</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="go"><a
							href="/contents/edu/insertEduApplyForm.do?edu_id=70&amp;menuId=343"
							class="btn_st4" onclick="edu.cmd.insertChk(event)">신청하기</a></td>
					</tr>
					<tr>
						<td class="num">6</td>
						<td class="gubn">자바</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">자바
								프로그래밍</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">9</td>
						<td class="data">개인</td>
						<td class="data">2023-02-03 ~ 2023-09-27</td>
						<td class="data">21/21</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td>신청마감</td>
					</tr>
					<tr>
						<td class="num">7</td>
						<td class="gubn">파이썬</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">파이썬
								기초</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">45</td>
						<td class="data">개인</td>
						<td class="data">2023-03-23 ~ 2023-8-15</td>
						<td class="data">50/50</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td>신청마감</td>
					</tr>
					<tr>
						<td class="num">8</td>
						<td class="gubn">HTML</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">
								웹 개발 기초</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">9</td>
						<td class="data">개인</td>
						<td class="data">2023-6-23 ~ 2023-11-17</td>
						<td class="data">12/15</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="go"><a
							href="/contents/edu/insertEduApplyForm.do?edu_id=70&amp;menuId=343"
							class="btn_st4" onclick="edu.cmd.insertChk(event)">신청하기</a></td>
					</tr>
					<tr>
						<td class="num">9</td>
						<td class="gubn">CSS</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">HTML,
								CSS, JavaScript 활용</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">9</td>
						<td class="data">개인</td>
						<td class="data">2023-09-09 ~ 2023-10-14</td>
						<td class="data">13/15</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td>신청마감</td>
					</tr>
					<tr>
						<td class="num">10</td>
						<td class="gubn">JavaScript</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="subject t_left">웹
								개발 프로젝트</td>
						<!-- 나머지 부분은 생략 -->
						<td class="data">3</td>
						<td class="data">개인</td>
						<td class="data">2023-01-25 ~ 2023-06-28</td>
						<td class="data">11/11</td>
						<!-- nowDate가 end_app_period보다 이후일 때 -->
						<td class="go"><a
							href="/contents/edu/insertEduApplyForm.do?edu_id=70&amp;menuId=343"
							class="btn_st4" onclick="edu.cmd.insertChk(event)">신청하기</a></td>
					</tr>
				</tbody>
			</table>
		</article>
	</div>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>