<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title> 순천대학교 K-디지털플랫폼 | 마이페이지 </title>
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
	        
	        // <h1> 내용 변경
	        var h1 = document.querySelector('.contents h1');
	        switch (tabId) {
	            case 'tab1':
	                h1.textContent = '이용 현황';
	                break;
	            case 'tab2':
	                h1.textContent = '문의 내역';
	                break;
	            case 'tab3':
	                h1.textContent = '계정 관리';
	                break;
	        }
	    }
	    
	    function saveChanges() {
	        // 필수 입력 필드의 값 가져오기
	        var password = document.querySelector('input[name="password"]').value;
	        var passwordConfirm = document.querySelector('input[name="passwordConfirm"]').value;
	        var phoneNumber = document.querySelector('input[name="phoneNumber"]').value;
	        var email = document.querySelector('input[name="email"]').value;
	        
	        // 필수 입력 필드가 비어 있는지 확인
	        if (!password || !passwordConfirm || !phoneNumber || !email) {
	            // 필수 항목을 입력해주세요. 알림 띄우기
	            alert('필수 항목을 입력해주세요.');
	        } else {
	            // 여기에서 실제로 제출 동작을 수행할 수 있습니다.

	            // 제출이 완료되었습니다. 알림 띄우기
	            alert('저장이 완료되었습니다.');

	            // 페이지 리프레시
	            location.reload();
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
			</div>
		</div>
	</div>
	<div class="contents">
		<h1>이용 현황</h1>
	 	<!-- 탭 메뉴 -->
	 	<div>
			<ul class="tab-menu">
			    <li onclick="showTab('tab1')">이용 현황</li>
			    <li onclick="showTab('tab2')">문의 내역</li>
			    <li onclick="showTab('tab3')">계정 관리</li>
			</ul>
			
			<div id="tab1" class="tab">
			    <table class="tabTable">
			    	<tbody>
				    	<tr>
				    		<th class="col1"><span>신청 일자</span></th>
				    		<th class="col2"><span>신청자</span></th>
				    		<th class="col3"><span>신청 내용</span></th>
				    		<th class="col4"><span>승인 상태</span></th>
				    		<th class="col5"><span style="border-right: 2px solid #d2d2d2; padding-right: 0px;">사용 링크</span></th>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-03</td>
				    		<td class="col2">홍길동</td>
				    		<td class="col3">Vision AI 사용 신청합니다.</td>
				    		<td class="col4">승인</td>
				    		<td class="col5">링크</td>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-04</td>
				    		<td class="col2">홍길동</td>
				    		<td class="col3">Stable Diffusion 사용 신청합니다.</td>
				    		<td class="col4">거부</td>
				    		<td class="col5">링크</td>
				    	</tr>
			    	</tbody>
			    </table>
			</div>
			
			<div id="tab2" class="tab">
			    <table class="tabTable">
			    	<tbody>
				    	<tr>
				    		<th class="col1"><span>문의 일자</span></th>
				    		<th class="col2"><span>서비스</span></th>
				    		<th class="col3"><span>문의 내용</span></th>
				    		<th class="col4"><span style="border-right: 2px solid #d2d2d2; padding-right: 0px;">답변 상태</span></th>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-03</td>
				    		<td class="col2">솔루션</td>
				    		<td class="col3">Vision AI 관련하여 문의 드립니다.</td>
				    		<td class="col4">답변 완료</td>
				    	</tr>
				    	<tr>
				    		<td class="col1">2023-11-04</td>
				    		<td class="col2">교육</td>
				    		<td class="col3">교육 자료 관련하여 문의 드립니다.</td>
				    		<td class="col4">답변 대기</td>
				    	</tr>
			    	</tbody>
			    </table>
			</div>
			
			<!-- 탭 내용 -->
			<div id="tab3" class="tab">
				<div class="KDPTableFrm">
					<h2 class="user_info" style="border-top: 0px;">기본 정보</h2>
				  
					<!-- 계정관리 테이블 -->
					<table class="KDPTable1">
						<tbody>
							<!--기본정보 -->
							<tr>
								<th>
									<span>회원 ID</span>
								</th>
								<td>
									<span style="padding-right: 40px; border-right: 2px solid #d2d2d2;" >20191234</span>
								</td>
								<th>
									<span style="margin-left: 40px;" >이름</span>
								</th>
								<td>
									<span style="padding-right: 40px; border-right: 2px solid #d2d2d2;" >홍길동</span>
								</td>
								<th>
									<span style="margin-left: 40px;" >회원구분</span>
								</th>
								<td>
									<span>재학생</span>
								</td>
							</tr>
						</tbody>
					</table>
					
					<h2 class="user_info">회원정보 변경</h2>
					<!-- 회원정보 변경 테이블 -->
					<table class="KDPTable2">
						<tbody>
							<!--비밀번호 변경 -->
							<tr>
								<th>비밀번호 변경<span>(필수)</span></th>
								<td>
									<input type="text" placeholder="비밀번호를 입력해 주세요." title="비밀번호 번경" name="password">
								</td>
							</tr>
							<!--비밀번호 확인 -->
							<tr>
								<th>비밀번호 확인<span>(필수)</span></th>
								<td align="right">
									<input type="text" placeholder="비밀번호를 입력해 주세요." title="비밀번호 확인" name="passwordConfirm">
								</td>
							</tr>
							<!--전화번호 -->
							<tr>
								<th>전화번호<span>(필수)</span></th>
								<td>
								    <div style="display: flex; align-items: center;">
								        <input type="text" placeholder="전화번호를 입력해 주세요." title="전화번호" name="phoneNumber">
								        <button class="certBtn">
								        	인증완료
								        </button>
								    </div>
								</td>
							</tr>
							<!--이메일 주소 -->
							<tr>
								<th>이메일 주소<span>(필수)</span></th>
								<td>
								    <div style="display: flex; align-items: center;">
								        <input type="text" placeholder="이메일 주소를 입력해 주세요." title="이메일 주소" name="email">
								        <button class="certBtn">
								        	인증완료
								        </button>
								    </div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 하단 버튼 -->
					<div class="KDPBtn">
						<button type="reset" class="cancle" onclick="history.back()"> 취소 </button>
						<button class="save" onclick="saveChanges()">저장</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />
</body>
</html>