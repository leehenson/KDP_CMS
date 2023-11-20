<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/uat/uia/KDPRegister.css?after' />">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<title> 순천대학교 K-디지털플랫폼 | 회원가입 </title>
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
				<form class="register-section" action="" method="post">
					<img
						src="<c:url value='/images/egovframework/com/uat/uia/login_box_logo.png'/>"
						class="login-image">
					<p class="register-title">회원가입</p>
					<p class="register-id">아이디</p>
					<input type="text" id="register-id" name="register-id"
						placeholder="이메일인증" required />
					<p class="register-pw">비밀번호</p>
					<input type="text" id="register-pw" name="register-pw" required />
					<p class="register-pwre">비밀번호 확인</p>
					<input type="text" id="register-pwre" name="register-pwre" required />
					<p class="register-pwre">이름</p>
					<input type="text" id="register-pwre" name="register-pwre" required />
					<p class="register-member">회원구분</p>
					<input type="text" id="register-member" name="register-member"
						required />
					<div class="horizontal-line3"></div>
					<p class="agree1">약관 동의</p>
					<p class="agree2">KDP 플랫폼 이용을 위해 약관 동의가 필요합니다.</p>
					<div class="horizontal-line1"></div>
					<div class="remember-box1">
						<input type="checkbox" id="all-agree" name="all-agree" /> <label
							for="all-agree">전체동의</label>
					</div>
					<div class="remember-box2">
						<input type="checkbox" id="agree1" name="agree1" /> <label
							for="agree1">[필수] 서비스 이용 약관</label> <a href="#"
							class="terms-link1">전문▶</a>
					</div>
					<div class="remember-box3">
						<input type="checkbox" id="agree2" name="agree2" /> <label
							for="agree2">[필수] 개인 정보 수집 및 이용 안내</label> <a href="#"
							class="terms-link2">전문▶</a>
					</div>
					<div class="remember-box4">
						<input type="checkbox" id="agree3" name="agree3" /> <label
							for="agree3">[선택] 광고성 정보 수신</label> <a href="#"
							class="terms-link3">전문▶</a>
					</div>
					<div class="horizontal-line2"></div>
					<button type="submit" class="register-button-submit">가입완료</button>
				</form>
			</div>
		</div>
	</form>
	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>