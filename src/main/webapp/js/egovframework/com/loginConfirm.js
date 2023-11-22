function loginConfirmCht() {
    var userCookie = getCookie("KDPuser");
	
	if (userCookie) {
		event.preventDefault();
		window.location.href = "/sol/cht/addSolCht.do";
	} else {
		event.preventDefault();
		alert("로그인 후 이용할 수 있습니다.");
		window.location.href = "/uat/uia/KDPLogin.do";
	}
}

function loginConfirmJpt() {
    var userCookie = getCookie("KDPuser");
	
	if (userCookie) {
		event.preventDefault();
		window.location.href = "/sol/jpt/addSolJpt.do";
	} else {
		event.preventDefault();
		alert("로그인 후 이용할 수 있습니다.");
		window.location.href = "/uat/uia/KDPLogin.do";
	}
}

function loginConfirmSd() {
    var userCookie = getCookie("KDPuser");
	
	if (userCookie) {
		event.preventDefault();
		window.location.href = "/sol/sd/addSolSd.do";
	} else {
		event.preventDefault();
		alert("로그인 후 이용할 수 있습니다.");
		window.location.href = "/uat/uia/KDPLogin.do";
	}
}

function loginConfirmVsn() {
    var userCookie = getCookie("KDPuser");
	
	if (userCookie) {
		event.preventDefault();
		window.location.href = "/sol/vsn/addSolVsn.do";
	} else {
		event.preventDefault();
		alert("로그인 후 이용할 수 있습니다.");
		window.location.href = "/uat/uia/KDPLogin.do";
	}
}

function loginConfirmEdu() {
    var userCookie = getCookie("KDPuser");
	
	if (userCookie) {
		event.preventDefault();
		window.location.href = "/com/cop/bbs/EgovEduApp.do";
	} else {
		event.preventDefault();
		alert("로그인 후 이용할 수 있습니다.");
		window.location.href = "/com/cop/bbs/EgovEduIntro.do";
	}
}