<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>마이페이지</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/myPage.css?after' />">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script>
	    $(document).ready(function() {
	        // 탭을 클릭할 때 색상 변경
	        $('.tab-menu li').click(function() {
	            // 모든 탭의 배경색 초기화
	            $('.tab-menu li').css('background-color', '#d2d2d2');
	            
	            // 클릭한 탭의 배경색 변경
	            $(this).css('background-color', '#005bac');
	        });
	
	        // 초기 상태에서 첫 번째 탭의 배경색 변경
	        $('.tab-menu li:first-child').css('background-color', '#005bac');
	    });
	
	    function showTab(tabId) {
	        var tabs = document.querySelectorAll('.tab');
	        tabs.forEach(function(tab) {
	            tab.style.display = 'none';
	        });
	
	        var tabContent = document.getElementById(tabId);
	        if (tabContent) {
	            tabContent.style.display = 'block';
	        }
	    }
	</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../head.jsp" />
	<div class="KDPHeader">
		<div class="inner">
			<div class="KDPText">
				<h2>
					마이페이지
				</h2>
				<p>나의 정보</p>
			</div>
		</div>
	</div>
	<div class="contents">
		<h1>계정 관리</h1>
	 	<!-- 탭 메뉴 -->
	 	<div>
			<ul class="tab-menu">
			    <li onclick="showTab('tab1')">계정 관리</li>
			    <li onclick="showTab('tab2')">이용 현황</li>
			    <li onclick="showTab('tab3')">문의 내역</li>
			</ul>
			
			<!-- 탭 내용 -->
			<div id="tab1" class="tab">
				<div class="KDPTableFrm">
					<h2 class="user_info">기본 정보</h2>
				  
					<!-- 등록폼 -->
					<table class="KDPTable1">
						<tbody>
							<!--신청자명, 신청 서비스 -->
							<tr>
								<th>
									<span>회원 ID</span>
								</th>
								<td>
									<span>20191234</span>
								</td>
								<th>
									<span>이름</span>
								</th>
								<td>
									<span>홍길동</span>
								</td>
								<th>
									<span>회원구분</span>
								</th>
								<td>
									<span>재학생</span>
								</td>
							</tr>
						</tbody>
					</table>
					
					<h2 class="apply_info">신청 정보</h2>
					<!-- 등록폼 -->
					<table class="KDPTable2">
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
								        <button class="solUploadBtn" onclick="triggerFileInput(event)">
								        	<img src="<c:url value='/images/egovframework/com/cmm/icon/upload_icon.png' />" alt=""> 업로드 
								        </button>
								    </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<div id="tab2" class="tab">
			    <h2>탭 2 내용</h2>
			    <p>이곳에 탭 2의 내용이 들어갑니다.</p>
			</div>
			
			<div id="tab3" class="tab">
			    <h2>탭 3 내용</h2>
			    <p>이곳에 탭 3의 내용이 들어갑니다.</p>
			</div>
		</div>
	</div>
	<!-- 하단 버튼 -->
	<div class="KDPBtn">
		<button type="reset" class="cancle" onclick="history.back()"> 취소 </button>
		<button class="save">제출</button>
	</div>
	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>