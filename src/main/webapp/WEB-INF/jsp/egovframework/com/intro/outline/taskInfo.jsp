<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title> 순천대학교 K-디지털 플랫폼 </title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/intro.css' />">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function() {
		// 시작일과 종료일에 대한 Datepicker 초기화
		$("#startDate, #endDate").datepicker({
			dateFormat : "yy-mm-dd", // 날짜 형식 (옵션)
			onSelect : function(dateText, inst) {
				$(this).prop("readonly", true);
			}
		});

		// 달력 아이콘을 시작일과 종료일에 연결
		$("#startDate-icon").click(function() {
			$("#startDate").datepicker("show");
		});

		$("#endDate-icon").click(function() {
			$("#endDate").datepicker("show");
		});
	});

	// 페이지 로드 시 실행되는 함수
	$(document).ready(
			function() {
				// 년월일 시분을 가져오는 함수
				function getCurrentDateTime() {
					var now = new Date();
					var year = now.getFullYear();
					var month = (now.getMonth() + 1).toString()
							.padStart(2, '0');
					var day = now.getDate().toString().padStart(2, '0');
					var hours = now.getHours().toString().padStart(2, '0');
					var minutes = now.getMinutes().toString().padStart(2, '0');
					return year + '-' + month + '-' + day + ' ' + hours + ':'
							+ minutes;
				}

				// 현재 년월일 시분을 가져와서 두 번째 input에 설정
				//$('#endDate').val(getCurrentDateTime());

				// 요청 날짜 input에도 설정
				$('#requestDate').val(getCurrentDateTime());
			});

	function displayFileName() {
		const fileInput = document.getElementById('file-input');
		const fileNameInput = document.getElementById('file-name-input');

		if (fileInput.files.length > 0) {
			const fileName = fileInput.files[0].name;
			fileNameInput.value = fileName;
		} else {
			fileNameInput.value = '';
		}
	}

	function triggerFileInput(event) {
		// 이벤트의 기본 동작을 중단시킴
		event.preventDefault();

		document.getElementById('file-input').click();
	}
</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../head.jsp" />
	<form>
		<!-- 상단 -->
		<div id="visual-slider-kdpIntro">
			<div class="inner"></div>
		</div>
		<!--visual-slider end-->

		<section id="tab-1" class="platform-section">
			<div class="inner">
				<h2 class="intro_title">| 조직도 </h2>
				<div class="inner2">
					<img class="orgChart"
						src="<c:url value='/images/egovframework/com/uat/intro/orgChart.png' />"
						alt="조직도" />
				</div>
			</div>
		</section>

		<section id="tab-2" class="platform-section">
			<div class="inner">
				<h2 class="intro_title">| 미래인재양성사업단 공동훈련센터 </h2>
				<div class="inner2">
					<img class="centerCall"
						src="<c:url value='/images/egovframework/com/uat/intro/centerCall.png' />"
						alt="센터연락처" />
				</div>
			</div>
		</section>

	</form>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>
