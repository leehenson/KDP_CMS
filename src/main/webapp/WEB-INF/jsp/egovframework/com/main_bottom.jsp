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

<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/main_portal.css' />">
<link rel="shortcut icon" href="https://ssl.pstatic.net/sstatic/search/favicon/favicon_191118_pc.ico">

<title>순천대학교 K-디지털 플랫폼</title>
<!-- 아래메인 -->
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

	<div class="area_footer">
		<div class="sub_pack_btm">
			<a href="#" class="top" onclick="window.scrollTo(0,0); document.querySelector('#wrap a').focus(); return false;">
				<i class="spnew ico_top">맨위로</i>
			</a>
		</div>
		<div class="box_footer">
		
			<ul class="footer_link">
				<li class="point"><a
					href="/SCNU/cm/cntnts/cntntsView.do?mi=1264&amp;cntntsId=1082">개인정보처리방침</a></li>
				<li><a
					href="/SCNU/cm/cntnts/cntntsView.do?mi=1266&amp;cntntsId=1084">이메일주소무단수집거부</a></li>
				<li><a
					href="/SCNU/cm/cntnts/cntntsView.do?mi=1263&amp;cntntsId=1081">교직원행동강령</a></li>
				<li><a
					href="/SCNU/cm/cntnts/cntntsView.do?mi=1123&amp;cntntsId=1017">부패방지클린신고센터</a></li>
				<li><a
					href="/SCNU/na/ntt/selectNttList.do?mi=1278&amp;bbsId=1106">정책실명제</a></li>
				<li><a
					href="/SCNU/cm/cntnts/cntntsView.do?mi=1273&amp;cntntsId=1090">행정정보공개</a></li>
				<li><a
					href="/SCNU/na/ntt/selectNttList.do?mi=1262&amp;bbsId=1103">홈페이지
						의견올리기</a></li>
			</ul>


			<!-- 구글 웹사이트 번역 플러그인 [e] -->
			
			
			<div class="box_info">
					<img
						src="<c:url value='/images/egovframework/com/uat/uia/login_box_logo.png'/>"
						width=299px height=30px alt="순천대학교">
				<!-- 홈페이지 정보 -->
				<address>
					주소 : 57922 전라남도 순천시 중앙로 255(석현동) <span>대표전화 : 061-750-3114</span>
				</address>
				<!-- /홈페이지 정보 -->
				
				<p class="copyright">CopyrightⓒSunchon National University. All
					rights reserved.</p>

			</div>

			<!-- 190704 웹접근성 마크 추가
						<a class="mark" href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" target="_blank"><img src="/images/co/mark.gif" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)" title="국가 공인 인증기관 : 웹와치"/></a>
						// 190704 웹접근성 마크 추가-->
		</div>
	</div>


	<!--     <div id="new_footer"> -->
	<!--     	<ul> -->
	<%--         	<li style="float:left"><img src="<c:url value='/images/egovframework/com/cmm/main/bottom_logo.png' />" alt="안전행전부" /></li> --%>
	<%--     		<li style="font-size:11px; float:left; margin: 10px"><spring:message code="comSymMnuMpm.main_bottom.address"/></p> --%>
	<!--     		© Ministry of the Interior and Safety. All rights reserved.</li> -->
	<!--     	</ul> -->
	<!--     </div> -->
</body>
</html>