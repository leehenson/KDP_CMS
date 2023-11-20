<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/uat/uia/KDPLogin.css?after' />">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<title> 순천대학교 K-디지털플랫폼 | 로그인 </title>
</head>
<body>
	<div class="header-background">
		<img
			src="<c:url value='/images/egovframework/com/uat/uia/header_bg.png'/>">
		<!-- header -->
		<c:import url="../../head.jsp" />
	</div>
	<form>
		<div class="container">
			<div class="blue-box">
				<form class="login-section" action="" method="post">
					<img
						src="<c:url value='/images/egovframework/com/uat/uia/login_box_logo.png'/>"
						class="login-image">
					<p class="login-title">로그인</p>
					<div class="input-box">
						<input type="text" id="username" name="username"
							placeholder="아이디를 입력해 주십시오." required />
					</div>
					<div class="input-box">
						<input type="password" id="password" name="password"
							placeholder="비밀번호를 입력해 주십시오." required />
					</div>
					<div class="remember-box">
						<input type="checkbox" id="remember" name="remember" /> <label
							for="remember">아이디 저장</label>
					</div>
					<div class="horizontal-line1"></div>
					<button type="submit" class="login-button-submit">로그인</button>
				</form>
				<div class="additional-links">
					<a href="KDPRegister.do" class="link-button-register">회원가입</a>
					<div class="right-links">
						<a href="#" class="link-button-id-find">아이디 찾기</a> <span
							class="separator">|</span> <a href="#"
							class="link-button-pw-find">비밀번호 찾기</a>
					</div>
				</div>	
				<div class="horizontal-line2"></div>	
				<div class="login-options">
					<a href="#" class="login-button-staff">학생/교직원 로그인</a> <a href="#"
						class="login-button-guest">비회원 로그인</a>
				</div>
			</div>
		</div>
	</form>
	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>