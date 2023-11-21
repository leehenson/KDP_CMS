<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="egovframework.com.cmm.util.EgovUserDetailsHelper"%>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script language="text/javascript"
	src="<c:url value='/js/egovframework/com/main.js' />"></script>

<!-- 메인 페이지 헤더 css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/header_style.css' />">
<!-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/main_portal.css' />"> -->
<script type="text/javascript">
	function fn_main_headPageMove(menuNo, url){
		document.selectOne.menuNo.value=menuNo;
		document.selectOne.chkURL.value=url;
	    document.selectOne.action = "<c:url value='/sym/mnu/mpm/EgovMainMenuIndex.do'/>";
	    document.selectOne.submit();
	}

	function actionLogout()
	{
		document.selectOne.action = "<c:url value='/uat/uia/actionLogout.do'/>";
		document.selectOne.submit();
		//top.document.location.href = "<c:url value='/j_spring_security_logout'/>";
	}
</script>
<!-- head.jsp -->

<script>
	document.addEventListener("DOMContentLoaded", function() {
	    // "KDPuser" 쿠키가 있는지 확인합니다.
	    var userCookie = getCookie("KDPuser");
	    var adminCookie = getCookie("KDPadmin");
	
	    // "KDPuser" 쿠키가 존재하면 로그인 버튼을 숨깁니다.
	    if (userCookie) {
	        var loginBtn = document.querySelector(".header_login_btn");
	        var logoutBtn = document.querySelector(".header_logout_btn");
	        var mypageBtn = document.querySelector(".header_mypage_btn");
	        var iconContainer = document.querySelector(".header_icon_container");
	        if (loginBtn) {
	        	iconContainer.style.width = "280px";
	            loginBtn.style.display = "none";
	        }
	        if (logoutBtn) {
	            logoutBtn.style.display = "flex"; // 또는 "inline" 등으로 설정
	            logoutBtn.addEventListener("click", function() {
	                // 로그아웃 버튼 클릭 시 "KDPuser" 쿠키를 삭제하고 로그인 버튼을 보여줍니다.
	                document.cookie = "KDPuser=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	                loginBtn.style.display = "flex";
	                logoutBtn.style.display = "none";
	                mypageBtn.style.display = "none";
	                
	             	// 현재 페이지가 "/uss/mpe/myPage.do"이면 새로운 위치로 이동
	                if (window.location.pathname === "/uss/mpe/myPage.do") {
	                	event.preventDefault();
	                    window.location.href = "/sym/mnu/mpm/EgovMainMenuHome.do";
	                }
	            });
	        }
	
 	        if (mypageBtn) {
	            mypageBtn.style.display = "flex"; // 또는 "inline" 등으로 설정
	        }
	    }
	    
	 	// "KDPadmin" 쿠키가 존재하면 로그인 버튼을 숨깁니다.
	    if (adminCookie) {
	        var loginBtn = document.querySelector(".header_login_btn");
	        var logoutBtn = document.querySelector(".header_logout_btn");
	        var adminBtn = document.querySelector(".header_admin_btn");
	        var iconContainer = document.querySelector(".header_icon_container");
	        if (loginBtn) {
	        	iconContainer.style.width = "280px";
	            loginBtn.style.display = "none";
	        }
	        if (logoutBtn) {
	            logoutBtn.style.display = "flex"; // 또는 "inline" 등으로 설정
	            logoutBtn.addEventListener("click", function() {
	                // 로그아웃 버튼 클릭 시 "KDPuser"와 "KDPadmin" 쿠키를 삭제하고 로그인 버튼을 보여줍니다.
	                document.cookie = "KDPuser=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	                document.cookie = "KDPadmin=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	                loginBtn.style.display = "flex";
	                logoutBtn.style.display = "none";
	                adminBtn.style.display = "none";
	                
	             	// 현재 페이지가 "/uss/managePager.do"이면 새로운 위치로 이동
	                if (window.location.pathname === "/uss/managerPage.do") {
	                	event.preventDefault();
	                    window.location.href = "/sym/mnu/mpm/EgovMainMenuHome.do";
	                }
	            });
	        }

	        if (adminBtn) {
	            adminBtn.style.display = "flex"; // 또는 "inline" 등으로 설정
	        }
	    }
	});

    // 쿠키 이름으로 쿠키의 값을 가져오는 함수
    function getCookie(name) {
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i].trim();
            // 쿠키 이름으로 시작하는지 확인
            if (cookie.indexOf(name + "=") === 0) {
                return cookie.substring(name.length + 1, cookie.length);
            }
        }
        return null;
    }
</script>

<!-- 기존의 head.jsp 내용 계속... -->

<form name="selectOne">
	<input name="menuNo" type="hidden" /> <input name="chkURL"
		type="hidden" />

	<!-- 헤더 네비게이션 바 -->
	<div id="wrap">
		<header id="header">
			<div class="inner">
				<h1 class="logo">
					<a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>"
						target=_top> <!-- KDP 로고 --> <img
						src="<c:url value='/images/egovframework/com/uat/uia/main_logo.png' />"
						width="233" height="24">
					</a>
				</h1>
				<nav class="nav">
					<ul class="menu">
						<li><a href="#"> KDP 소개 </a>
							<ul class="submenu">
								<li><a href="<c:url value='/intro/outline/KDPIntro.do'/>">
										사업 소개 </a></li>
								<li><a href="<c:url value='/intro/outline/taskInfo.do'/>">
										업무 안내 </a></li>
								<li><a href="<c:url value='/intro/outline/equipInfo.do'/>">
										시설 및 장비 </a></li>
							</ul></li>

						<li><a href="#"> 솔루션 </a>
							<ul class="submenu">
								<li><a href="<c:url value='/sol/vsn/showSolVsn.do' />">
										Vision AI </a></li>
								<li><a href="<c:url value='/sol/cht/showSolCht.do' />">
										ChatBot AI </a></li>
								<li><a href="<c:url value='/sol/sd/showSolSd.do' />">
										Stable Diffusion </a></li>
								<li><a href="<c:url value='/sol/jpt/showSolJpt.do' />">
										Jupyter Notebook </a></li>
							</ul></li>

						<li><a href="#"> 공유 및 개방 </a>
							<ul class="submenu">
								<li><a href="#"> Next Coding </a></li>
								<li><a href="#"> AR/VR 교육장 </a></li>
								<li><a href="#"> 리소스 신청 </a></li>
							</ul></li>

						<li><a href="#"> 교육 </a>
							<ul class="submenu">								
								<li><a href="<c:url value='/com/cop/bbs/EgovEduIntro.do'/>"> 교육 지원 안내 </a></li>
								<li><a href="<c:url value='/com/cop/bbs/EgovEduApp.do'/>"> 교육 지원 신청 </a></li>
							</ul></li>

						<li><a href="#"> 게시판 </a>
							<ul class="submenu">
								<li><a href="<c:url value='/cop/bbs/selectArticleList.do'/>"> 공지사항 </a></li>
								<li><a href="<c:url value='/cop/bbs/GalleryList.do'/>"> 갤러리 </a></li>
								<li><a href="<c:url value='/cop/bbs/selectResourceList.do'/>"> 자료실 </a></li>
								
							</ul></li>

						<li><a href="#"> 고객지원 </a>
							<ul class="submenu">
								<li><a href="<c:url value='/uss/olh/qna/insertQnaView.do'/>"> 1:1 문의 </a></li>
								<li><a href="<c:url value='/uss/olh/faq/selectFaqList.do'/>"> FAQ </a></li>
							</ul></li>

						<li style="width: 20px;"></li>

						<li style="padding-top: 8px;">
							<div class="header_icon_container">
								<div class="header_login_btn">
									<a href="<c:url value='/uat/uia/KDPLogin.do'/>">
									<span style="font-size: 16px"> 로그인 </span>
									</a>
								</div>
								<div class="header_logout_btn">
									<a href="">
									<span style="font-size: 16px"> 로그아웃 </span>
									</a>
								</div>
								<div class="header_mypage_btn">
									<a href="<c:url value='/uss/mpe/myPage.do'/>">
									<span style="font-size: 16px"> 마이페이지 </span>
									</a>
								</div>
								<div class="header_admin_btn">
									<a href="<c:url value='/uss/managerPage.do'/>">
									<span style="font-size: 16px"> 관리페이지 </span>
									</a>
								</div>

								<div class="header_lang_btn">
									<img
										src="<c:url value='/images/egovframework/com/cmm/icon/language_icon.png'/>"
										width="24" height="24">
								</div>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</header>
		<!--header end-->
	</div>

	<!-- <ul>
			<li><a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do' />" target="_top">HOME</a></li>
			<c:forEach var="result" items="${list_headmenu}" varStatus="status">
			   <li class="gap"> l </li>
			   <li><a href="javascript:fn_main_headPageMove('<c:out value="${result.menuNo}"/>','<c:out value="${result.chkURL}"/>')"><c:out value="${result.menuNm}"/></a></li>
			</c:forEach>
        </ul> -->

	</div>

</form>
