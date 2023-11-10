<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 로그인 헤더 css -->
<link rel="stylesheet" type="text/css" href="<c:url value='/css/egovframework/com/login_head_style.css' />">
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/main_portal.css' />"> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HeadMenu</title>
<script type="text/javascript">
var getContextPath = "${pageContext.request.contextPath}";
</script>
<script language="javascript" src="<c:url value='/js/egovframework/com/main.js' />"></script>
<script type="text/javascript">
	function fn_main_headPageMove(menuNo, url){
		document.selectOne.vStartP.value=menuNo;
		document.selectOne.chkURL.value=url;
	    document.selectOne.action = "<c:url value='/sym/mnu/mpm/EgovMainMenuLeft.do'/>";
	    document.selectOne.target = "main_left";
	    document.selectOne.submit();
 	    document.selectOne.action = "<c:url value='/sym/mnu/mpm/EgovMainMenuRight.do'/>";
	    document.selectOne.target = "main_right";
	    document.selectOne.submit();
	}

	function actionLogout()
	{
		document.selectOne.action = "<c:url value='/uat/uia/actionLogout.do'/>";
		document.selectOne.target = "_top";
		document.selectOne.submit();
		//top.document.location.href = "<c:url value='/j_spring_security_logout'/>";
	}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight= "0">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/egovframework/com/common.css' />" />
<link rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />" type="text/css" />
<form name="selectOne">
<input name="vStartP" type="hidden" />
<input name="chkURL" type="hidden" />
</form>

 <div id="wrap">
        <header id="header">
            <div class="inner">
                <h1 class="logo">
                    <a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>" target=_top>
                    	<!-- KDP 로고 -->
            			<img src="<c:url value='/images/egovframework/com/uat/uia/main_logo.png' />" width="233" height="24">
           			</a>
                </h1>
                <nav class="nav">
                    <ul class="menu">
					      <li>
					        <a href="#"> KDP 소개 </a>
					        <ul class="submenu">
					          <li><a href="#"> 사업 소개 </a></li>
					          <li><a href="#"> 업무 안내 </a></li>
					          <li><a href="#"> 시설 및 장비 </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 솔루션 </a>
					        <ul class="submenu">
					          <li><a href="#"> Vision AI </a></li>
					          <li><a href="#"> ChatBot AI </a></li>
					          <li><a href="#"> Stable Diffusion </a></li>
					          <li><a href="#"> Jupyter Notebook </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 공유 및 개방 </a>
					        <ul class="submenu">
					          <li><a href="#"> Next Coding </a></li>
					          <li><a href="#"> AR/VR 교육장 </a></li>
					          <li><a href="#"> 리소스 신청 </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 교육 </a>
					        <ul class="submenu">
					          <li><a href="#"> 교육 지원 안내 </a></li>
					          <li><a href="#"> 교육 지원 신청</a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 게시판 </a>
					        <ul class="submenu">
					          <li><a href="#"> 공지사항 </a></li>
					          <li><a href="#"> 갤러리 </a></li>
					          <li><a href="#"> 자료실 </a></li>
					        </ul>
					      </li>

					      <li>
					        <a href="#"> 고객지원 </a>
					        <ul class="submenu">
					          <li><a href="#"> 1:1 문의 </a></li>
					          <li><a href="#"> FAQ </a></li>
					        </ul>
					      </li>
					    
	                        <li><a href="#">  </a> </li>
	                        
	                        <li style="width:80px;"><a href="<c:url value='/uat/uia/egovLoginUsr.do'/>" > 로그인 </a> </li>
			                <li style="width:80px;"><a href="#" > Languages </a> </li>
					    </ul>
                </nav>
            </div>
        </header><!--header end-->
 </div>



<!--     <div id="gnb"> -->
<%--     <div id="top_logo"><a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do' />" target=_top><img src="<c:url value='/images/egovframework/com/cmm/main/logo_01.gif' />" alt="egovframe" /></a></div> --%>
<!--      <div id="use_descri"> -->
<!--             <ul> -->
<!--                 <li>공통서비스 테스트 사이트</li> -->
<%--                  <li><a href="javascript:actionLogout()"><img src="<c:url value='/images/egovframework/com/cmm/main/logout_btn.gif' />" alt="로그아웃" /></a></li> --%>
<!--             </ul> -->
<!--     </div> -->
<!--     </div> -->
<!--     <div id="new_topnavi"> -->
<!--         <ul> -->
<%-- 			<li><a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do' />" target="_top">HOME</a></li> --%>
<%-- 			<c:forEach var="result" items="${list_headmenu}" varStatus="status"> --%>
<!-- 			   <li class="gap"> l </li> -->
<%-- 			   <li><a href="javascript:fn_main_headPageMove('<c:out value="${result.menuNo}"/>','<c:out value="${result.chkURL}"/>')"><c:out value="${result.menuNm}"/></a></li> --%>
<%-- 			</c:forEach> --%>
<!--         </ul> -->
<!--     </div> -->


</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 로그인 헤더 css -->
<link rel="stylesheet" type="text/css" href="<c:url value='/css/egovframework/com/login_head_style.css' />">
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/main_portal.css' />"> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HeadMenu</title>
<script type="text/javascript">
var getContextPath = "${pageContext.request.contextPath}";
</script>
<script language="javascript" src="<c:url value='/js/egovframework/com/main.js' />"></script>
<script type="text/javascript">
	function fn_main_headPageMove(menuNo, url){
		document.selectOne.vStartP.value=menuNo;
		document.selectOne.chkURL.value=url;
	    document.selectOne.action = "<c:url value='/sym/mnu/mpm/EgovMainMenuLeft.do'/>";
	    document.selectOne.target = "main_left";
	    document.selectOne.submit();
 	    document.selectOne.action = "<c:url value='/sym/mnu/mpm/EgovMainMenuRight.do'/>";
	    document.selectOne.target = "main_right";
	    document.selectOne.submit();
	}

	function actionLogout()
	{
		document.selectOne.action = "<c:url value='/uat/uia/actionLogout.do'/>";
		document.selectOne.target = "_top";
		document.selectOne.submit();
		//top.document.location.href = "<c:url value='/j_spring_security_logout'/>";
	}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight= "0">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/egovframework/com/common.css' />" />
<link rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />" type="text/css" />
<form name="selectOne">
<input name="vStartP" type="hidden" />
<input name="chkURL" type="hidden" />
</form>

 <div id="wrap">
        <header id="header">
            <div class="inner">
                <h1 class="logo">
                    <a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do'/>" target=_top>
                    	<!-- KDP 로고 -->
            			<img src="<c:url value='/images/egovframework/com/uat/uia/main_logo.png' />" width="233" height="24">
           			</a>
                </h1>
                <nav class="nav">
                    <ul class="menu">
					      <li>
					        <a href="#"> KDP 소개 </a>
					        <ul class="submenu">
					          <li><a href="#"> 사업 소개 </a></li>
					          <li><a href="#"> 업무 안내 </a></li>
					          <li><a href="#"> 시설 및 장비 </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 솔루션 </a>
					        <ul class="submenu">
					          <li><a href="#"> Vision AI </a></li>
					          <li><a href="#"> ChatBot AI </a></li>
					          <li><a href="#"> Stable Diffusion </a></li>
					          <li><a href="#"> Jupyter Notebook </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 공유 및 개방 </a>
					        <ul class="submenu">
					          <li><a href="#"> Next Coding </a></li>
					          <li><a href="#"> AR/VR 교육장 </a></li>
					          <li><a href="#"> 리소스 신청 </a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 교육 </a>
					        <ul class="submenu">
					          <li><a href="#"> 교육 지원 안내 </a></li>
					          <li><a href="#"> 교육 지원 신청</a></li>
					        </ul>
					      </li>
					      
					      <li>
					        <a href="#"> 게시판 </a>
					        <ul class="submenu">
					          <li><a href="#"> 공지사항 </a></li>
					          <li><a href="#"> 갤러리 </a></li>
					          <li><a href="#"> 자료실 </a></li>
					        </ul>
					      </li>

					      <li>
					        <a href="#"> 고객지원 </a>
					        <ul class="submenu">
					          <li><a href="#"> 1:1 문의 </a></li>
					          <li><a href="#"> FAQ </a></li>
					        </ul>
					      </li>
					    
	                        <li><a href="#">  </a> </li>
	                        
	                        <li style="width:80px;"><a href="<c:url value='/uat/uia/egovLoginUsr.do'/>" > 로그인 </a> </li>
			                <li style="width:80px;"><a href="#" > Languages </a> </li>
					    </ul>
                </nav>
            </div>
        </header><!--header end-->
 </div>



<!--     <div id="gnb"> -->
<%--     <div id="top_logo"><a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do' />" target=_top><img src="<c:url value='/images/egovframework/com/cmm/main/logo_01.gif' />" alt="egovframe" /></a></div> --%>
<!--      <div id="use_descri"> -->
<!--             <ul> -->
<!--                 <li>공통서비스 테스트 사이트</li> -->
<%--                  <li><a href="javascript:actionLogout()"><img src="<c:url value='/images/egovframework/com/cmm/main/logout_btn.gif' />" alt="로그아웃" /></a></li> --%>
<!--             </ul> -->
<!--     </div> -->
<!--     </div> -->
<!--     <div id="new_topnavi"> -->
<!--         <ul> -->
<%-- 			<li><a href="<c:url value='/sym/mnu/mpm/EgovMainMenuHome.do' />" target="_top">HOME</a></li> --%>
<%-- 			<c:forEach var="result" items="${list_headmenu}" varStatus="status"> --%>
<!-- 			   <li class="gap"> l </li> -->
<%-- 			   <li><a href="javascript:fn_main_headPageMove('<c:out value="${result.menuNo}"/>','<c:out value="${result.chkURL}"/>')"><c:out value="${result.menuNm}"/></a></li> --%>
<%-- 			</c:forEach> --%>
<!--         </ul> -->
<!--     </div> -->


</body>
</html>
>>>>>>> branch 'master' of https://github.com/leehenson/KDP_CMS.git
