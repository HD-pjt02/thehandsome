<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>
    
		<!-- This script is for AceCounter START -->
<script language="javascript" type="text/javascript">
var _jn = 'join' ;          //  가입탈퇴 ( 'join','withdraw' ) 
var _jid = 'javaprogrammer@naver.com' ;			// 가입시입력한 ID
</script>
<!-- AceCounter END -->

<script type="text/javascript">

if(typeof kakaoPixel !== 'undefined'){
	var kakaoTrackId = '3482319208237780781'; //개발
	if(location.href.indexOf("www.thehandsome.com") > -1) kakaoTrackId = '7855119525940511046'; //운영
	kakaoPixel(kakaoTrackId).pageView();
	kakaoPixel(kakaoTrackId).completeRegistration();
}
</script>
<script type="text/javascript">
//<![CDATA[ 
$(document).ready(function(){
	
	$("#mainBtn").click(function(){
		location.href="/";
	});
	
	$("#loginBtn").click(function(){
		location.href="/member/login";
	});
	
    
		fbq('track', 'CompleteRegistration', {});
	
});

//]]>
</script>
<div id="bodyWrap">
	<!--title-->
	<h3 class="cnts_title"><span>회원가입</span></h3>
	<!--//title-->
	<!--join step-->
	<div class="email_step">
		<ul class="clearfix">
			<li class="step01">step01 이메일인증</li>
			<li class="step02">step02 회원약관동의</li>
			<li class="step03">step03 회원정보 입력</li>
			<li class="step04 on">step04 가입완료</li>
		</ul>
	</div>
	<!--//join step-->
	<!--sub container-->
	<div class="sub_container">
		<div class="join_title">
			<p class="title">회원가입이 완료 되었습니다.</p>
			<p class="s_title">한섬통합몰의 회원이 되신 것을 축하드립니다.<br>입력하신 개인 정보는 <a href="/ko/mypage/personInfomationChangePWCheck"><em class="ft_point01">'마이페이지 &gt; 나의 정보관리 &gt; 개인정보변경'</em></a>에서 바로 수정 가능합니다.</p>
		</div>
		<div class="btnwrap mt60">
			<input type="button" value="메인으로 이동" class="btn wt" id="mainBtn">
			<input type="button" value="로그인" class="btn gray mr0" id="loginBtn">
		</div>
	</div>
	<!--//sub container-->
</div>
<!-- footerWrap -->

<script type="text/javascript">
//<![CDATA[ 

$(document).ready(function(){
    var ua = navigator.userAgent.toLowerCase();
    // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
    if((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1) ){
        $("#f_insta").show();
    }
});

getNewsList("/ko/magazine");


// 2022.03.29 푸터 공지사항 추가
getFooterNotices("/ko/svcenter");


function moveMobile(){
// 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
	location.href = "/ko/?uiel=Mobile";
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
