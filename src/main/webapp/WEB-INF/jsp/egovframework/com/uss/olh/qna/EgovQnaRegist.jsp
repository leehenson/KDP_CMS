<%
 /**
  * @Class Name : EgovQnaRegist.jsp
  * @Description : EgovQnaRegist 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.02.01   박정규              최초 생성
  *   2016.06.13   김연호              표준프레임워크 v3.6 개선
  *
  *  @author 공통서비스팀 
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *  
  */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<c:set var="pageTitle"><spring:message code="comUssOlhQna.qnaVO.title"/></c:set>
<!DOCTYPE html>
<html>
<head>
<title>${pageTitle} <spring:message code="title.create" /></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/qna.css' />">
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="qnaVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript">
/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_init(){

	// 첫 입력란에 포커스
	document.getElementById("qnaVO").qestnSj.focus();

}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_regist_qna(form){
	//input item Client-Side validate
	if (!validateQnaVO(form)) {	
		return false;
	} else {
		if(confirm("<spring:message code="common.regist.msg" />")){	
			form.submit();	
		}
	} 
}
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
function changeFont(element) {
    // 클릭한 span의 글꼴을 변경
    element.style.fontFamily = "NotoSansKR-Bold";
}
 
$(document).ready(function () {
    $(".KDPCategory span").click(function () {
        // 모든 span에 대한 font-family를 초기화합니다.
        $(".KDPCategory span").css("font-family", "NotoSansKR-Regular");

        // 클릭한 span에 대해 font-family를 NotoSansKR-Bold로 설정합니다.
        $(this).css("font-family", "NotoSansKR-Bold");
    });
});
function submitForm() {
    // 필수 입력 필드의 값 가져오기
    var email = document.querySelector('input[name="email"]').value;
    var phoneNumber = document.querySelector('input[name="phoneNumber"]').value;
    var inquiryType = document.querySelector('input[name="inquiryType"]').value;
    var title = document.querySelector('input[name="title"]').value;
    var content = document.querySelector('textarea[name="content"]').value;
	
 	// 개인정보 수집 동의 체크 확인
    var agreeCheckbox = document.querySelector('.agreeBox');
    if (!agreeCheckbox.checked) {
        // 개인정보 수집에 동의해주세요. 알림 띄우기
        alert('개인정보 수집에 동의해주세요.');
        return; // 동의하지 않았으면 더 이상 진행하지 않음
    }
    
    // 필수 입력 필드가 비어 있는지 확인
    if (!email || !phoneNumber || !inquiryType || !title || !content) {
        // 필수 항목을 입력해주세요. 알림 띄우기
        alert('필수 항목을 입력해주세요.');
    } else {
        // 여기에서 실제로 제출 동작을 수행할 수 있습니다.

        // 제출이 완료되었습니다. 알림 띄우기
        alert('제출이 완료되었습니다.\n문의 내역은 마이페이지에서 확인이 가능합니다.');

        // 이전 페이지로 이동
        history.back();
    }
}
</script>
</head>
<body onLoad="fn_egov_init();">
	<!-- header -->
	<c:import url="../../../head.jsp" />
	<div class="KDPHeader">
		<div class="inner">
			<div class="KDPText">
				<h2> 고객지원 </h2>
			</div>
		</div>
	</div>
	<!-- javascript warning tag  -->
	<noscript class="noScriptTitle"><spring:message code="common.noScriptTitle.msg" /></noscript>

	<div class="contents">
		<h1>1:1 문의</h1>
		<div class="KDPCategory">
			<span>솔루션</span>
			<span>공유 및 개방</span>
			<span>교육</span>
			<span style="border-right: 2px solid #d2d2d2;">영업</span>
		</div>
		<div class="KDPmain">
			<table>
				<tbody>
					<tr>
						<th>이메일 주소<span>(필수)</span></th>
						<td class="tdDiv">
							<input type="text" name="email" placeholder="example@example.com">
						</td>
						<td rowspan="3">
							<div class="agreement">
								<div class="agreeTitle">
									※ 개인정보 수집 동의
									<div class="agreeCheck">
										<input class="agreeBox" type="checkbox">
										개인정보 수집에 동의합니다.
									</div>
								</div>
								<div class="agreeDetail">
									귀하의 소중한 개인정보는 개인정보보호법의 관련 규정에 의하여 예약 및 조회 등 아래의 목적으로 수집 및 이용됩니다.<br>
									1. 개인정보의 수집·이용 목적 - 예약, 조회를 위한 본인 확인 절차<br>
									2. 갱니정보 수집 항목 - 예약자명, 핸드폰, 이메일<br>
									3. 개인정보의 보유 및 이용기간 - 이용자의 개인정보는 원칙적으로 개인정보의 처리목적이 달성되면 지체 없이 파기합니다.<br>
									예약을 위하여 수집된 개인정보는 '전자상거래 등에서의 소비자보호에 관한 법률' 제6조에 의거 정해진 기간동안 보유됩니다.<br>
									※ 상기 내용은 고객님께 예약서비스를 제공하는데 필요한 최소한의 정보입니다.<br>
									※ 상기 내용에 대하여 본인이 동의하지 않을 수 있으나, 그러할 경우 예약 서비스 제공에 차질이 발생할 수 있습니다.<br>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>전화번호<span>(필수)</span></th>
						<td class="tdDiv" style="display: flex; align-items: center;">
							<input style="width:120px; margin-right:15px;" type="text" value="한국(+82)" readonly>
							<input style="width:290px;" type="text" name="phoneNumber" placeholder="10-1234-5678">
						</td>
					</tr>
					<tr>
						<th>문의유형<span>(필수)</span></th>
						<td class="tdDiv">
							<input type="text" name="inquiryType" placeholder="Vision AI">
						</td>
					</tr>
					<tr>
						<th>제목<span>(필수)</span></th>
						<td colspan="2">
							<input type="text" name="title" placeholder="제목을 입력해 주세요.">
						</td>
					</tr>
					<tr>
						<th class="detail">내용<span>(필수)</span></th>
						<td colspan="2">
							<textarea name="content" placeholder="내용을 입력해 주세요."></textarea>
						</td>
					</tr>
					<tr>
						<th>파일첨부</th>
						<td colspan="2">
							<div style="display: flex; align-items: center;">
						        <input type="file" id="file-input" style="display:none;" onchange="displayFileName()">
						        <input type="text" id="file-name-input" placeholder="※ 첨부파일은 각  10MB 이내의 파일로 최대 5개까지 가능합니다." readonly>
						        <button class="UploadBtn" onclick="triggerFileInput(event)">
						        	<img src="<c:url value='/images/egovframework/com/cmm/icon/upload_icon.png' />" alt=""> 업로드 
						        </button>
						    </div>
						</td>
					</tr>
				</tbody>
			</table>
			<!--버튼 -->
			<div class="qnaBtn">
				<button type="reset" class="cancle" onclick="history.back()">취소 </button>
				<button class="submit" onclick="submitForm()">문의하기</button>
			</div>
		</div>
	</div>
<%-- <form:form commandName="qnaVO" action="${pageContext.request.contextPath}/uss/olh/qna/insertQna.do" method="post" onSubmit="fn_egov_regist_qna(document.forms[0]); return false;"> 
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>${pageTitle} <spring:message code="title.create" /></h2>

	<!-- 등록폼 -->
	<table class="wTable" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle } <spring:message code="title.create" /></caption>
	<colgroup>
		<col style="width: 20%;">
		<col style="width: ;">
		<col style="width: 20%;">
		<col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 입력 -->
		<c:set var="inputTxt"><spring:message code="input.input" /></c:set>
		
		<!-- 작성자명 -->
		<c:set var="title"><spring:message code="table.reger"/> </c:set>
		<tr>
			<th><label for="wrterNm">${title} <span class="pilsu">*</span></label></th>
			<td class="left" colspan="3">
			    <form:input path="wrterNm" title="${title} ${inputTxt}" size="70" maxlength="70" />
   				<div><form:errors path="wrterNm" cssClass="error" /></div>     
			</td>
		</tr>
		
		<!-- 전화번호 -->
		<c:set var="title"><spring:message code="comUssOlhQna.qnaVO.telNo"/> </c:set>
		<tr>
			<th><label for="areaNo">${title} <span class="pilsu">*</span></label></th>
			<td class="left" colspan="3">
			    <form:input path="areaNo" title="${title} ${inputTxt}" size="70" maxlength="70" style="width:30px;"/>&nbsp;-&nbsp;
			    <form:input path="middleTelno" title="${title} ${inputTxt}" size="70" maxlength="70" style="width:30px;"/>&nbsp;-&nbsp;
			    <form:input path="endTelno" title="${title} ${inputTxt}" size="70" maxlength="70" style="width:30px;"/>
   				<div><form:errors path="areaNo" cssClass="error" /></div>     
			</td>
		</tr>
		
		<!-- 이메일주소 -->
		<c:set var="title"><spring:message code="comUssOlhQna.qnaVO.emailAdres"/> </c:set>
		<tr>
			<th><label for="emailAdres">${title}</label></th>
			<td class="left">
			    <form:input path="emailAdres" title="${title} ${inputTxt}" size="70" maxlength="70" />
   				<div><form:errors path="emailAdres" cssClass="error" /></div>     
			</td>
			<c:set var="title"><spring:message code="comUssOlhQna.qnaVO.emailAnswerAt"/> </c:set>
			<th><label for="emailAnswerAt">${title}</label></th>
			<td class="left"><form:checkbox path="emailAnswerAt" value="Y"/>
			<div><form:errors path="emailAdres" cssClass="error" /></div></td>
		</tr>
		
		<!-- 질문제목 -->
		<c:set var="title"><spring:message code="comUssOlhQna.qnaVO.qestnSj"/> </c:set>
		<tr>
			<th><label for="qestnSj">${title} <span class="pilsu">*</span></label></th>
			<td class="left" colspan="3">
			    <form:input path="qestnSj" title="${title} ${inputTxt}" size="70" maxlength="70" />
   				<div><form:errors path="qestnSj" cssClass="error" /></div>     
			</td>
		</tr>
		<!-- 질문내용 -->
		<c:set var="title"><spring:message code="comUssOlhQna.qnaVO.qestnCn"/> </c:set>
		<tr>
			<th><label for="qestnCn">${title } <span class="pilsu">*</span></label></th>
			<td class="nopd" colspan="3">
				<form:textarea path="qestnCn" title="${title} ${inputTxt}" cols="300" rows="20" />   
				<div><form:errors path="qestnCn" cssClass="error" /></div>  
			</td>
		</tr>
		
	</tbody>
	</table>

	<!-- 하단 버튼 -->
	<div class="btn">
		<input type="submit" class="s_submit" value="<spring:message code="button.create" />" title="<spring:message code="button.create" /> <spring:message code="input.button" />" />
		<span class="btn_s"><a href="<c:url value='/uss/olh/qna/selectQnaList.do' />"  title="<spring:message code="button.list" />  <spring:message code="input.button" />"><spring:message code="button.list" /></a></span>
	</div><div style="clear:both;"></div>
	
</div>

<input name="answerCn" type="hidden" value="<c:out value='answer'/>">
<input name="cmd" type="hidden" value="<c:out value='save'/>">
</form:form> --%>

</body>
</html>
