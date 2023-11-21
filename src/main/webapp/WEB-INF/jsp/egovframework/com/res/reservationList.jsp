<!DOCTYPE html>
<%
	/**
 * @Class Name  : EgovCalendar.jsp
 * @Description : EgovCalendar 화면
 * @Modification Information
 * @
 * @  수정일             수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.10.13   이중호              최초 생성
 *
 *  @author 공통서비스팀
 *  @since 2009.10.13
 *  @version 1.0
 *  @see
 *
 */
%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="ko">
<head>
<title>순천대학교 K-디지털플랫폼 | 공유 시설 예약</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/egovframework/com/bootstrap.css' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/qna.css' />">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/com/reservation.css' />">

<!-- Date Picker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javaScript" language="javascript">
	
</script>
</head>

<body>

	<!-- header -->
	<c:import url="../head.jsp" />
	<div class="ShareHeader">
		<div class="inner">
			<div class="solText">
				<h2>공유 및 개방</h2>
			</div>
		</div>
	</div>

	<!-- 예약 content -->

	<section class="sub_content_area">
		<!--콘텐츠 상단 바-->
		<script type="text/javascript">
			
		</script>
		<!--콘텐츠 상단 바-->
		<section>
			<div class="sub_cont_header">
				<h3 class="">시설대여</h3>
			</div>
			<hr>
		</section>
		<!--콘텐츠 상단 바-->

		<!--서브 콘텐츠 바디부분-->
		<section class="container mb-5 credit_intro">
			<div class="d-xl-table w-100">
			
<script type="text/javascript">
		//서브 레프트 메뉴
		$('.rental_list > li').click(function () {
			console.log("click");
			
		    if ($(this).hasClass('on')) {
		        $(this).removeClass('on');
		
		    } else {
		        $(this).addClass('on');
		    }
		});
</script>
				<section class="sub_content_area_2">

					<!--서브 콘텐츠 바디부분-->
					<article class="sub_cont_body">
						<div class="row d-flex justify-content-center mg-b-20 mg-lg-b-30">
							<div class="col-12 col-lg-8">
								<div class="equip-card grid-card">
									<div class="card-body pd-25 align-items-center">
										<h6 class="dash-mge mg-b-20">예약 방법</h6>
										<div class="d-flex justify-content-center align-self-center">
											<ul class="steps">
												<li class="step-item active">
													<div class="step-link">
														<span class="step-number">1</span> <span
															class="step-title" style="color: #1d1d1f">예약을 원하는
															장비 선택</span>
													</div>
												</li>
												<li class="step-item active">
													<div class="step-link">
														<span class="step-number">2</span> <span
															class="step-title" style="color: #1d1d1f">예약 일자와
															시간 선택</span>
													</div>
												</li>
												<li class="step-item active">
													<div class="step-link">
														<span class="step-number">3</span> <span
															class="step-title" style="color: #1d1d1f"><span
															class="tx-danger tx-bold">관리자 승인</span> 후 사용</span>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--하단 선-->
						<div class="border w-100 my-3"></div>
						<input type="hidden" id="searchNo" value="">
						<div class="row">
							<div class="col-xl-4 mb-3">
								<div class="card rental_select">
									<div class="card-header">step 1</div>
									<div class="card-body equipList-body">
										
										<ul class="rental_list">

											<li class="d-flex equipList pointer " id="22"><img
												src="<c:url value='/images/egovframework/com/uat/intro/room01_pc.png' />"
												class="mr-3" alt="넥스트코딩(NextCoding)"
												title="넥스트코딩(NextCoding)">
												<div class="my-auto w-100 equip-name">넥스트코딩(NextCoding)</div>
											</li>
											<input type="hidden" id="facility22" name="facility22"
												value="넥스트코딩(NextCoding)">
											<input type="hidden" id="week22" name="weekOff"
												value="1,2,3,4,5,6,0">
											<input type="hidden" id="day22" name="dayOff"
												value="2023-03-01,2023-12-31">

											<li class="d-flex equipList pointer " id="6"><img
												src="<c:url value='/images/egovframework/com/uat/intro/equip02_AR_Glasses.png' />"
												class="mr-3" alt="AR/VR 교육장" title="AR/VR 교육장">
												<div class="my-auto w-100 equip-name">AR/VR 교육장</div></li>
											<input type="hidden" id="facility6" name="facility6"
												value="AR/VR 교육장">
											<input type="hidden" id="week6" name="weekOff"
												value="1,2,3,4,5">
											<input type="hidden" id="day6" name="dayOff" value="">

											<li class="d-flex equipList pointer " id="5"><img
												src="<c:url value='/images/egovframework/com/uat/intro/room02_imag.png' />"
												class="mr-3" alt="Lecture Room" title="강의실">
												<div class="my-auto w-100 equip-name">강의실</div></li>
											<input type="hidden" id="facility5" name="facility5"
												value="Lecture Room">
											<input type="hidden" id="week5" name="weekOff" value="6,0">
											<input type="hidden" id="day5" name="dayOff" value="">

											<li class="d-flex equipList pointer " id="4"><img
												src="<c:url value='/images/egovframework/com/uat/intro/openOffice.png' />"
												class="mr-3" alt="Open Office"
												onerror="this.src='/images/front/etc_defult.png'"
												title="Open Office">
												<div class="my-auto w-100 equip-name">오픈 오피스</div></li>
											<input type="hidden" id="facility4" name="facility4"
												value="Open Office">
											<input type="hidden" id="week4" name="weekOff" value="6,0">
											<input type="hidden" id="day4" name="dayOff" value="">

											<li class="d-flex equipList pointer " id="3"><img
												src="<c:url value='/images/egovframework/com/uat/intro/equip01_laptop.png' />"
												class="mr-3" alt="기타 장비"
												onerror="this.src='/images/front/etc_defult.png'"
												title="기타 장비">
												<div class="my-auto w-100 equip-name">기타 장비</div></li>
											<input type="hidden" id="facility3" name="facility3"
												value="etc equip">
											<input type="hidden" id="week3" name="weekOff" value="6,0">
											<input type="hidden" id="day3" name="dayOff" value="">
										</ul>

									</div>
								</div>
							</div>
							<div class="col-xl-8 pl-xl-0 mb-3">
								<form action="11" method="post" class="card rental_appli">
									<input type="hidden" name="action" value="view">
									<div class="card-header">step 2</div>
									<div class="card-body">
										<div class="row">
											<input type="hidden" id="equipNo" name="equipNo"> <input
												type="hidden" id="useBgngYmd" name="useBgngYmd"> <input
												type="hidden" id="useEndYmd" name="useEndYmd"> <input
												type="hidden" id="printStrYmd" name="printStrYmd"> <input
												type="hidden" id="printEndYmd" name="printEndYmd"> <input
												type="hidden" id="printStrTm" name="printStrTm"> <input
												type="hidden" id="printEndTm" name="printEndTm"> <input
												type="hidden" id="impossible" name="impossible" value="0">
											<div class="col-6 mb-3">
												<h6 class="mr-2 mb-2">대여날짜</h6>
												<input type="text" name="eduRange" id="eduRange"
													class="form-control date-picker"
													placeholder="대여기간을 선택해주세요." readonly="readonly">
											</div>
											<div class="col-xl-4 "></div>
											<div class="col-12 mb-2">
												<h6 class="mr-2">대여시간</h6>
											</div>
											<div class="col-xl-4 col-4 pr-0">
												<select class="custom-select" id="strTm" name="strTm">
													<option value="e">시작시간</option>
													<option value="1000">10:00</option>
													<option value="1100">11:00</option>
													<option value="1200">12:00</option>
													<option value="1300">13:00</option>
													<option value="1400">14:00</option>
													<option value="1500">15:00</option>
													<option value="1600">16:00</option>
												</select>
											</div>
											<div class="col-xl-4 col-4 pr-0">
												<select class="custom-select" id="endTm" name="endTm">
													<option value="e">종료시간</option>
													<option value="1100">11:00</option>
													<option value="1200">12:00</option>
													<option value="1300">13:00</option>
													<option value="1400">14:00</option>
													<option value="1500">15:00</option>
													<option value="1600">16:00</option>
													<option value="1700">17:00</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-12 text-right mt-md-0 mt-3">
												<button class="btn btn-info" type="submit" id="nextBtn"
													disabled="disabled">대여 신청하기</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</article>
					<!--서브 콘텐츠 바디부분-->
				</section>
			</div>
		</section>
	</section>

	<script>
      $(function(){
    	  
    	//input을 datepicker로 선언
          $(".date-picker").datepicker({
              dateFormat: 'yy-mm-dd' //달력 날짜 형태
              ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
              ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
              ,changeYear: true //option값 년 선택 가능
              ,changeMonth: true //option값  월 선택 가능                        
              ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
              ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
              ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
              ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
              ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
              ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
              ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
          });                    
          
          //초기값을 오늘 날짜로 설정해줘야 합니다.
          $('.date-picker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
      });

	</script>

	<!-- bottom -->
	<c:import url="../main_bottom.jsp" />
</body>
</html>
