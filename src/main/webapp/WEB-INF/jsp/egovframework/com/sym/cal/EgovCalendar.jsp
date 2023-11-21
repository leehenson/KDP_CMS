<!DOCTYPE html>
<%
 /**
  * @Class Name  : EgovCalendar.jsp
  * @Description : EgovCalendar 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.10.13   이중호              최초 생성
  *
  *  @author 공통서비스팀
  *  @since 2009.10.13
  *  @version 1.0
  *  @see
  *
  */
%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="ko">
<head>
<title>달력</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/sym/cal/cal.css' />" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/qna.css' />">
<script type="text/javaScript" language="javascript">
<!--

/* ********************************************************
 * 초기화
 ******************************************************** */
function fnInit(){
	var varParam        = window.dialogArguments;
	var varForm			= document.all["Form"];
	var pForm			= parent.document.all["pForm"];
	if (varParam.sDate) {
		var sDate = varParam.sDate;
		if(sDate.length == 10) {
			if(pForm.init.value != "OK") {
				pForm.init.value  = "OK";
				varForm.action      = "<c:url value='/sym/cal/callCal.do'/>";
				varForm.year.value  = sDate.substr(0,4);
				varForm.month.value = sDate.substr(5,2);
				varForm.submit();
			}
		}
	}
}

/* ********************************************************
 * 연월변경
 ******************************************************** */
function fnChangeCalendar(year, month){
	var varForm			= document.all["Form"];
	varForm.action      = "<c:url value='/sym/cal/callCal.do'/>";
	varForm.year.value  = year;
	varForm.month.value = month;
	varForm.submit();
}

/* ********************************************************
 * 결과연월일 반환
 ******************************************************** */
function fnReturnDay(day){
	var retVal   = new Object();
	var sYear    = "0000"+document.Form.year.value;
	var sMonth   = "00"+document.Form.month.value;
	var sDay     = "00"+day;
	retVal.year  = sYear.substr(sYear.length-4,4);
	retVal.month = sMonth.substr(sMonth.length-2,2);
	retVal.day   = sDay.substr(sDay.length-2,2);
	retVal.sDate = retVal.year + retVal.month + retVal.day;
	retVal.vDate = retVal.year + "-" + retVal.month + "-" + retVal.day;
	parent.window.returnValue = retVal;
	parent.window.close();
}
-->
</script>
<title> 순천대학교 K-디지털플랫폼 | 공유 시설 이용 신청 </title>
</head>

<!--
<body onLoad=javascript:fnInit();>
 -->
<body>

	<!-- header -->
		<c:import url="../../head.jsp" />
		<div class="KDPHeader">
			<div class="inner">
				<div class="KDPText">
					<h2> 공유 및 개방 </h2>
				</div>
			</div>
		</div>

<div id="cal-wrap">

<form name="Form" action ="<c:url value='/sym/cal/callCal.do'/>" method="post">
<input type="hidden" name="init" value="${init}" />
<input type="hidden" name="year" value="${resultList[0].year}" />
<input type="hidden" name="month" value="${resultList[0].month}" />
<input type="hidden" name="day" />
	<table cellpadding="1" class="table-line">
	 <thead>
	  <tr>
	    <th class="title" width="36" nowrap colspan=1>
	    	<a href="javascript:fnChangeCalendar(${resultList[0].year-1},${resultList[0].month});"  style="selector-dummy:expression(this.hideFocus=false);cursor:pointer;cursor:hand;">
	    		<img src="<c:url value='/images/egovframework/com/sym/cal/icon_pre_year.gif' />" alt="이전년도">
	    	</a>
	    </th>
	    <th class="title" width="36" nowrap colspan=1>
	    	<a href="javascript:fnChangeCalendar(${resultList[0].year},${resultList[0].month-1});"  style="selector-dummy:expression(this.hideFocus=false);cursor:pointer;cursor:hand;">
	    		<img src="<c:url value='/images/egovframework/com/sym/cal/icon_pre_month.gif' />" alt="이전달">
	    	</a>
	    </th>
	    <th class="title" width="108" nowrap colspan=3>${resultList[0].year}년${resultList[0].month}월</th>
	    <th class="title" width="36" nowrap colspan=1>
	    	<a href="javascript:fnChangeCalendar(${resultList[0].year},${resultList[0].month+1});"  style="selector-dummy:expression(this.hideFocus=false);cursor:pointer;cursor:hand;">
	    		<img src="<c:url value='/images/egovframework/com/sym/cal/icon_aft_month.gif' />" alt="다음달">
	    	</a>
	    </th>
	    <th class="title" width="36" nowrap colspan=1>
	    	<a href="javascript:fnChangeCalendar(${resultList[0].year+1},${resultList[0].month});"  style="selector-dummy:expression(this.hideFocus=false);cursor:pointer;cursor:hand;"><img src="<c:url value='/images/egovframework/com/sym/cal/icon_aft_year.gif' />" alt="다음년도"></a>
	  </tr>
	  <tr>
	    <th class="title" width="36" nowrap style="color: red;">일</th>
	    <th class="title" width="36" nowrap>월</th>
	    <th class="title" width="36" nowrap>화</th>
	    <th class="title" width="36" nowrap>수</th>
	    <th class="title" width="36" nowrap>목</th>
	    <th class="title" width="36" nowrap>금</th>
	    <th class="title" width="36" nowrap style="color: blue;">토</th>
	  </tr>
	 </thead>
	 <tbody>
		<tr>
	 		<c:forEach var="result" items="${resultList}" varStatus="status">
				<c:choose>
				<c:when test='${result.day == ""}'>
			 		<c:choose>
			 		<c:when test='${result.weeks != 6}'>
						<td></td>
					</c:when>
					</c:choose>
				</c:when>
				<c:otherwise>
			 		<c:choose>
			 		<c:when test='${result.restAt == "Y" }'>
					    <td class="lt_text3" nowrap STYLE="color:red;" onClick="javascript:fnReturnDay(${result.day});">
					    	${result.day}
					    </td>
					</c:when>
					<c:otherwise>
					    <td class="lt_text3" nowrap STYLE="color:black;" onClick="javascript:fnReturnDay(${result.day});">
					    	${result.day}
					    	
						    	<!-- Add a conditional statement for the div -->
								<c:if test="${result.day eq 9}">
								    <div class="share-regist-btn nextCoding">
								      <a href="#"> NextCoding </a>
								    </div>
								</c:if>
								<!-- Add a conditional statement for the div -->
								<c:if test="${result.day eq 9}">
								    <div class="share-regist-btn XR-VR">
								      <a href="#"> XR/VR 강의장 </a>
								    </div>
								</c:if>
					    </td>
					</c:otherwise>
					</c:choose>
			 		<c:choose>
			 		<c:when test='${result.week == 7}'>
					    <c:out value="</tr>" escapeXml="false"/>
					    <c:out value="<tr>" escapeXml="false"/>
					</c:when>
					</c:choose>
				</c:otherwise>
				</c:choose>
			</c:forEach>
		</tr>
	 </tbody>
	</table>
</form>

</div>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>
