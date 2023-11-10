<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>Vision AI 이용 신청</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="/css/egovframework/com/com.css?after">
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
	</script>
</head>
<body>
	<!-- header -->
	<c:import url="../../login_head.jsp" />
	<form>
		<div class="solTableFrm">
			<h1>Vision AI 이용 신청</h1>
			<!-- 타이틀 -->
			<h2>신청자 정보</h2>
		  
			<!-- 등록폼 -->
			<table class="solTable">
				<caption>게시판 마스터 등록</caption>
				<colgroup>
				  <col style="width: 20%;">
				  <col style="width: 30%;">
				  <col style="width: 20%;">
				  <col style="width: 30%">
				</colgroup>
				<tbody>
					<!--신청자명, 신청 서비스 -->
					<tr>
						<th>신청자명 <span class="pilsu">*</span></th>
						<td class="left">
							<input type="text" name="" title="신청자명">
						</td>
						<th>신청 서비스 <span class="pilsu">*</span></th>
						<td class="left">
							<input type="text" name="" title="신청 서비스">
						</td>
					</tr>
					<!--신청 기간, 요청 날짜 -->
					<tr>
						<th>신청 기간<span class="pilsu">*</span></th>
						<td class="left date-input-container">
					    	<input type="text" id="startDate" readonly>
							~
							<input type="text" id="endDate" readonly>
						</td>
						<th>요청 날짜 <span class="pilsu">*</span></th>
						<td class="left">
							<input type="text" name="" title="요청 날짜">
						</td>
					</tr>
				</tbody>
			</table>
			
			<h2>신청 정보</h2>
			<!-- 등록폼 -->
			<table class="solTable">
				<caption>게시판 마스터 등록</caption>
				<colgroup>
				  <col style="width: 20%;">
				  <col style="width: ;">
				</colgroup>
				<tbody>
					<!--신청 제목 -->
					<tr>
						<th>신청 제목<span class="pilsu">*</span></th>
						<td class="left">
							<input type="text" name="" title="신청 제목">
						</td>
					</tr>
				  	<!--신청 내용 -->
					<tr>
						<th>신청 내용<span class="pilsu">*</span></th>
						<td class="left">
							<textarea rows="20" cols="300"></textarea>
						</td>
					</tr>
					<!--파일 첨부 -->
					<tr>
						<th>파일 첨부<span class="pilsu">*</span></th>
						<td class="left">
							<input type="file" id="fileInput" name="uploadedFile">
						</td>
					</tr>
				</tbody>
			</table>
		
			<!-- 하단 버튼 -->
			<div class="btn">
			   <input type="submit" class="s_submit" value="제출" title="제출">
			   <span class="btn_s"><a href="" title="취소">취소</a></span>
			</div>
			<div style="clear:both;"></div>
		</div>
	</form>
</body>
</html>
