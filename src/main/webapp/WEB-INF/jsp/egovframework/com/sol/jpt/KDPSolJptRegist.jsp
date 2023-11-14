<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>Jupyter Notebook 이용 신청</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="/css/egovframework/com/solRegist.css?after">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script>
		$(function() {
			// 시작일과 종료일에 대한 Datepicker 초기화
			$("#startDate, #endDate").datepicker({
				dateFormat: "yy-mm-dd", // 날짜 형식 (옵션)
				onSelect: function(dateText, inst) {
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
        $(document).ready(function () {
            // 년월일 시분을 가져오는 함수
            function getCurrentDateTime() {
                var now = new Date();
                var year = now.getFullYear();
                var month = (now.getMonth() + 1).toString().padStart(2, '0');
                var day = now.getDate().toString().padStart(2, '0');
                var hours = now.getHours().toString().padStart(2, '0');
                var minutes = now.getMinutes().toString().padStart(2, '0');
                return year + '-' + month + '-' + day + ' ' + hours + ':' + minutes;
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
        
        function showAlert() {
            alert('신청되었습니다.');
        }
	</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../head.jsp" />
	<form>
		<!-- 상단 -->
		<div class="solHeader">
			<div class="inner">
				<div class="solText">
					<h2>
						이용 신청
					</h2>
					원하는 솔루션을 신청하세요
				</div>
			</div>
		</div>
		<!--visual-slider end-->
		
		<div class="solTableFrm">
			<h1>Jupyter Notebook 이용 신청</h1>
			<!-- 타이틀 -->
			<h2 class="user_info">신청자 정보</h2>
		  
			<!-- 등록폼 -->
			<table class="solTable1">
				<tbody>
					<!--신청자명, 신청 서비스 -->
					<tr>
						<th>신청자명</th>
						<td style="padding-right: 30px; ">
							<input type="text" name="" title="신청자명">
						</td>
						<th>신청서비스</th>
						<td>
							<input type="text" name="" title="신청 서비스">
						</td>
					</tr>
					<!--신청 기간, 요청 날짜 -->
					<tr>
						<th>신청기간</th>
						<td>
					    	<input class="in" style="margin-right:5px;" type="text" id="startDate" readonly>
							~
							<input class="in" style="margin-left:5px;" type="text" id="endDate" readonly>
						</td>
						<th>요청날짜</th>
						<td>
							<input type="text" id="requestDate" title="요청 날짜" readonly>
						</td>
					</tr>
				</tbody>
			</table>
			
			<h2 class="apply_info">신청 정보</h2>
			<!-- 등록폼 -->
			<table class="solTable2">
				<tbody>
					<!--신청 제목 -->
					<tr>
						<th style="padding-bottom: 50px;">신청 제목</th>
						<td style="padding-bottom: 50px;">
							<input type="text" name="" title="신청 제목">
						</td>
					</tr>
				  	<!--신청 내용 -->
					<tr>
						<th style="vertical-align: top;">신청 내용</th>
						<td style="padding-bottom: 50px;">
							<textarea></textarea>
						</td>
					</tr>
					<!--파일 첨부 -->
					<tr>
						<th>파일 첨부</th>
						<td>
						    <div style="display: flex; align-items: center;">
						        <input type="file" id="file-input" style="display:none;" onchange="displayFileName()">
						        <input type="text" id="file-name-input" readonly>
						        <button class="solUploadBtn" onclick="triggerFileInput(event)"><img src="../../../images/egovframework/com/cmm/icon/업로드_아이콘.png" alt="">업로드</button>
						    </div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 하단 버튼 -->
		<div class="solBtn">
			<a href="<c:url value='/sol/jpt/showSolJpt.do' />" class="cancle">취소</a>
			<button class="app" onclick="showAlert()">제출</button>
		</div>
	</form>
</body>
</html>
