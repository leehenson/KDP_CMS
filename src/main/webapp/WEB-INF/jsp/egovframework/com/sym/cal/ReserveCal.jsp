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

</head>

<body>

<div id="calendarBody">
</div>

<script>
	/* tbody 밑에 append 하는 구조*/
	
	/* 현재 날짜와 현재 달에 1일의 날짜 객체 생성*/
	var date = new Date(); // 날짜 객체 생성
	var y = date.getFullYear(); // 현재 연도	
	var m = date.getMonth(); // 현재 월
	var d = date.getDate(); // 현재 일
	
	// 현재 년(y)월(m)의 1일(1)의 요일.
	var theDate = new Date(y, m, 1);
	//요일
	var theDay = theDate.getDay();
	
	/* 현재 월의 마지막 일 */
	// 1월부터 12월까지의 마지막 일을 배열화
	var last = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	// 4년마다 있는 윤년 계산 후 마지막 일 29로 수정
	if( y%4 && y%100!=0 || y%400==0 ){
		lastDate = last[1] = 29;
	}
	// 현재 월의 마지막 일
	var lastDate = last[m];
	
	/* 달력에 필요한 행의 개수 */
	// theDay(빈 칸의 수), lastDate(월의 전체 일수)
	var row = Math.ceil((theDay+lastDate)/7);
	
	var calendar = "";
	// 달력에 표기되는 일의 초기값
	var dNum = 1;
	for( var i=1; i<=row; i++){ // 행 만들기
		calendar += "<tr>";
		for( var k=1; k<=7; k++ ){ // 열 만들기
			// 월 1일 이전 + 월 마지막일 이후 = 빈 칸
			if( i==1 && k<=theDay || dNum>lastDate){
				calendar += "<td> &nbsp; </td>";
			}else{
				var tdClass = "";
				if(dNum == d)
					tdClass = "today";
				else
					tdClass = "";
				
				if(k==1)
					tdClass += "sun";
				
				calendar += "<td class = ' " + tdClass + "'>"
				+"<strong class='date'>" + dNum + "</strong>"
				+"<ul class='schedule RW'>"
				+"<li class='closed'><a href='#none' class='eModal'> 10:00 ~ 11:00 </a> </li>"
				+"<li class='open'><a href='#none' class='eModal'> 10:00 ~ 11:00 </a> </li>"
				+"<li class='closed'><a href='#none' class='eModal'> 10:00 ~ 11:00 </a> </li>"
				+"</ul>"
				+"</td>";
				dNum++;
			}
		}
		calendar += "</tr>";
	}
	
	$('#calendarBody').append(calendar);
</script>

</body>
</html>
