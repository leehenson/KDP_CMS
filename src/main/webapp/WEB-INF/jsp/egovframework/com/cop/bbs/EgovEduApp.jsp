<%
	/**
* @Class Name : EgovArticleList.jsp
* @Description : EgovArticleList 화면
* @Modification Information
* @
* @  수정일             수정자                   수정내용
* @ -------    --------    ---------------------------
* @ 2009.02.01   박정규              최초 생성
*   2016.06.13   김연호              표준프레임워크 v3.6 개선
*   2018.06.15   신용호              페이징 처리 오류 개선
*  @author 공통서비스팀
*  @since 2009.02.01
*  @version 1.0
*  @see
*
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="pageTitle">
	<spring:message code="comCopBbs.articleVO.title" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<title> 순천대학교 K-디지털플랫폼 | 교육 지원 신청 </title>

<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/cop/bbs/eduapp.css?after' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/solRegist.css?after' />">
<script type="text/javascript"
	src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>"></script>
</head>
<body>

	<!-- header -->
	<c:import url="../../head.jsp" />
	<div class="EduIntroHeader">
		<div class="inner">
			<div class="solText">
				<h2>교육 지원 신청</h2>
			</div>
		</div>
	</div>

	<div class="main-container">
		<form>
			<div class="solTableFrm">
				<h1>리소스 신청</h1>
				<!-- 타이틀 -->
				<h2 class="user_info">신청자 정보</h2>

				<!-- 등록폼 -->
				<table class="solTable1">
					<tbody>
						<!--신청자명, 신청 서비스 -->
						<tr>
							<th>신청자명</th>
							<td style="padding-right: 30px;"><input type="text" name=""
								title="신청자명"></td>
							<th>신청서비스</th>
							<td><input type="text" name="" title="신청 서비스"></td>
						</tr>
						<!--신청 기간, 요청 날짜 -->
						<tr>
							<th>신청기간</th>
							<td><input class="in" style="margin-right: 5px;" type="text"
								id="startDate" readonly> 
							<span class="period"> ~ </span>
								<input class="in"
								style="margin-left: 5px;" type="text" id="endDate" readonly>
							</td>
							<th>요청날짜</th>
							<td><input type="text" id="requestDate" title="요청 날짜"
								readonly></td>
						</tr>
					</tbody>
				</table>

				<h2 class="apply_info">자원 할당</h2>

				<table class="solTable1" style="height: 150px;">
					<tbody>
						<!--디스크 크기, 서비스 유형 -->
						<tr>
							<th>디스크 크기</th>
							<td><label for="diskSize50GB"> <input type="radio"
									id="diskSize50GB" name="diskSize" value="50GB"> 50GB
							</label> <label for="diskSize100GB"> <input type="radio"
									id="diskSize100GB" name="diskSize" value="100GB"> 100GB
							</label></td>
							<th>서비스 유형</th>
							<td><label for="docker"> <input type="radio"
									id="docker" name="docker" value="docker"> 도커
							</label> <label for="container"> <input type="radio"
									id="container" name="container" value="container"> 컨테이너
							</label></td>
						</tr>
						<!--OS 유형, 서버 유형 -->
						<tr>
							<th>OS 유형</th>
							<td><label for="osCentOS"> <input type="radio"
									id="osCentOS" name="osType" value="CentOS"> CentOS
							</label> <label for="osWindows"> <input type="radio"
									id="osWindows" name="osType" value="Windows"> Windows
							</label></td>
							<th>서버 유형</th>
							<td><label for="cpu"> <input type="radio"
									id="cpu" name="cpu" value="CPU"> CPU
							</label> <label for="gpu"> <input type="radio"
									id="gpu" name="gpu" value="GPU"> CPU
							</label></td>
						</tr>
					</tbody>
				</table>			
				
				<!-- <table class="solTable1">					
					<tr>
						<th>서버 유형 선택</th>
						<td><label for="standard"> <input type="radio"
								id="standard" name="serverType" value="Standard"> 스탠다드
						</label> <label for="gpu"> <input type="radio" id="gpu"
								name="serverType" value="GPU"> GPU
						</label></td>
					</tr>
					<tr id="standardOptions" style="display: none; margin-top: 10px;">
						<th>CPU</th>
						<td><label for="standardOptions">사양 선택 : </label> <select
							id="standardOptions" name="standardOptions">
								<option value="Option">2 vCPU, 4GB 메모리</option>
								<option value="Option">2 vCPU, 8GB 메모리</option>
								<option value="Option">2 vCPU, 16GB 메모리</option>
								<option value="Option">4 vCPU, 4GB 메모리</option>
								<option value="Option">4 vCPU, 8GB 메모리</option>
								<option value="Option">4 vCPU, 16GB 메모리</option>
								<option value="Option">8 vCPU, 4GB 메모리</option>
								<option value="Option">8 vCPU, 8GB 메모리</option>
								<option value="Option">8 vCPU, 16GB 메모리</option>
								<option value="Option">8 vCPU, 32GB 메모리</option>
								<option value="Option">12 vCPU, 16GB 메모리</option>
								<option value="Option">12 vCPU, 32GB 메모리</option>
								<option value="Option">16 vCPU, 16GB 메모리</option>
								<option value="Option">16 vCPU, 32GB 메모리</option>
						</select></td>
					</tr>
					<tr id="gpuOptions" style="display: none; margin-top: 10px;">
						<th>GPU</th>
						<td><label for="gpuOptions">사양 선택 : </label> <select
							id="gpuOptions" name="gpuOptions">
								<option value="GPU Option">1 NVIDIA H100 Tensor GPU,
									32GB GPU 메모리, 8 vCPU, 32GB 메모리</option>
								<option value="GPU Option">2 NVIDIA H100 Tensor GPUs,
									48GB GPU 메모리, 8 vCPU, 32GB 메모리</option>
								<option value="GPU Option">3 NVIDIA H100 Tensor GPUs,
									64GB GPU 메모리, 16 vCPU, 32GB 메모리</option>
								<option value="GPU Option">4 NVIDIA H100 Tensor GPUs,
									80GB GPU 메모리, 32 vCPU, 32GB 메모리</option>
						</select></td>
					</tr>
				</table> -->

				<!-- <script>
					document
							.getElementById('standard')
							.addEventListener(
									'change',
									function() {
										document
												.getElementById('standardOptions').style.display = 'table-row';
										document.getElementById('gpuOptions').style.display = 'none';
									});

					document
							.getElementById('gpu')
							.addEventListener(
									'change',
									function() {
										document.getElementById('gpuOptions').style.display = 'table-row';
										document
												.getElementById('standardOptions').style.display = 'none';
									});
				</script> -->

				<h2 class="apply_info">신청 정보</h2>
				<!-- 등록폼 -->
				<table class="solTable2">
					<tbody>
						<!--신청 제목 -->
						<tr>
							<th style="padding-bottom: 20px;">신청 제목</th>
							<td style="padding-bottom: 20px;"><input type="text" name=""
								title="신청 제목"></td>
						</tr>
						<!--신청 내용 -->
						<tr>
							<th style="vertical-align: top;">신청 내용</th>
							<td style="padding-bottom: 20px;"><textarea></textarea></td>
						</tr>
						<!--파일 첨부 -->
						<tr>
							<th>파일 첨부</th>
							<td>
								<div style="display: flex; align-items: center;">
									<input type="file" id="file-input" style="display: none;"
										onchange="displayFileName()"> <input type="text"
										id="file-name-input" readonly>
									<button class="solUploadBtn" onclick="triggerFileInput(event)">
										<img
											src="<c:url value='/images/egovframework/com/cmm/icon/upload_icon.png' />"
											alt=""> 업로드
									</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- 하단 버튼 -->
			<div class="solBtn">
				<button type="reset" class="cancle" onclick="history.back()">
					취소</button>
				<button class="app">신청</button>
			</div>
		</form>
	</div>

	<!-- bottom -->
	<c:import url="../../main_bottom.jsp" />

</body>
</html>
