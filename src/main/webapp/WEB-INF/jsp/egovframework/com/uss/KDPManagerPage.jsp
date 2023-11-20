<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 | 관리자페이지 </title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/managerPage.css?after' />">
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
	        
	        // <h1> 내용 변경
	        var h1 = document.querySelector('.contents h1');
	        switch (tabId) {
	            case 'tab1':
	                h1.textContent = '신청 현황';
	                break;
	            case 'tab2':
	                h1.textContent = '문의 내역';
	                break;
	        }
	    }
	</script>
</head>
<body>
	<!-- header -->
	<c:import url="../head.jsp" />
	<div class="KDPHeader">
		<div class="inner">
			<div class="KDPText">
				<h2>
					관리자 페이지
				</h2>
			</div>
		</div>
	</div>
	<div class="contents">
		<h1>신청 현황</h1>
	 	<!-- 탭 메뉴 -->
	 	<div>
			<ul class="tab-menu">
			    <li onclick="showTab('tab1')">신청 현황</li>
			    <li onclick="showTab('tab2')">문의 내역</li>
			</ul>
			
			<div id="tab1" class="tab">
			    <table class="tabTable">
			    	<tbody>
				    	<tr>
				    		<th class="col1"><span>신청 일자</span></th>
				    		<th class="col2"><span>신청자</span></th>
				    		<th class="col3"><span>서비스</span></th>
				    		<th class="col4"><span>신청 내용</span></th>
				    		<th class="col5"><span style="border-right: 2px solid #d2d2d2; padding-right: 0px;">승인 여부</span></th>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-03</td>
				    		<td class="col2">홍길동</td>
				    		<td class="col3">솔루션</td>
				    		<td class="col4">Vision AI 사용 신청합니다.</td>
				    		<td class="col5">승인</td>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-04</td>
				    		<td class="col2">홍길동</td>
				    		<td class="col3">솔루션</td>
				    		<td class="col4">Stable Diffusion 사용 신청합니다</td>
				    		<td class="col5">거부</td>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-05</td>
				    		<td class="col2">김아무개</td>
				    		<td class="col3">리소스</td>
				    		<td class="col4">교육을 위한 리소스 사용 신청합니다.</td>
				    		<td class="col5">대기</td>
				    	</tr>
			    	</tbody>
			    </table>
			</div>
			
			<div id="tab2" class="tab">
			    <table class="tabTable">
			    	<tbody>
				    	<tr>
				    		<th class="col1"><span>문의 일자</span></th>
				    		<th class="col2"><span>문의자</span></th>
				    		<th class="col3"><span>서비스</span></th>
				    		<th class="col4"><span>문의 내용</span></th>
				    		<th class="col5"><span style="border-right: 2px solid #d2d2d2; padding-right: 0px;">답변 상태</span></th>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-03</td>
				    		<td class="col2">홍길동</td>
				    		<td class="col3">솔루션</td>
				    		<td class="col4">Vision AI 관련하여 문의 드립니다.</td>
				    		<td class="col5">답변 완료</td>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-04</td>
				    		<td class="col2">김아무개</td>
				    		<td class="col3">교육</td>
				    		<td class="col4">교육 자료 관련하여 문의 드립니다.</td>
				    		<td class="col5">답변 대기</td>
				    	</tr>
			    	</tbody>
			    </table>
			</div>
		</div>
	</div>
	<!-- bottom -->
	<c:import url="../main_bottom.jsp" />
</body>
</html>