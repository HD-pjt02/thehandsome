<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta name="naver-site-verification"
	content="2f9358e1e36605519854a595f243f0171519dd1d" />
<meta name="google-site-verification"
	content="0bGV8gPhwO_PzritNvIsz2k74EH5yPsrXXluJ8ZUed8" />
<meta name="google-site-verification"
	content="dO99-Ao-ywXeVDEz4jz5nJBXzQXVCgmX4WXzxl_Nf3c" />
<meta name="facebook-domain-verification"
	content="jvxpdjfrqqan9oe1qdrjfyxj553an6" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi" />
<meta property="og:type" content="article">
<meta property="og:title" content="더한섬닷컴 | THE HANDSOME.COM">
<meta property="og:description"
	content="타임, 마인, 시스템, SJSJ 등 프리미엄 브랜드 및 트렌디한 해외·편집숍까지 가득한 스타일 플랫폼!">
<meta property="og:image"
	content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png">
<meta property="og:url" content="http://www.thehandsome.com/ko/">
<meta name="keywords"
	contents="한섬, 더한섬닷컴, 한섬몰, 한섬아울렛, 한섬닷컴, 더한섬, 한섬올라인몰, HANDSOME, thehandsome">
<title>&#45908;&#54620;&#49452;&#45815;&#52980; | THE
	HANDSOME.COM</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/font_80.css" media="all" />
<link rel="stylesheet" href="../../../resources/css/contents1e5d.css">
<link rel="stylesheet" href="../../../resources/css/contents.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/common.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/products.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/layout.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/popup.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/jquery-ui.min.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/brand.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/swiper.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/main_201903.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/footer.css" media="all" />
<style type="text/css" media="print">
@IMPORT url("../../../resources/blueprint/print.css");
</style>
<script type="text/javascript"
	src="../../../resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="../../../resources/js/jquery.vticker.js"></script>
<!-- 200318 ì¶ê° -->
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	//<![CDATA[
	ACC.addons = {}; //JS holder for addons properties

	//]]>
</script>
<script type="text/javascript">
	var handsomeContextPath = "/ko";
</script>

<script type="text/javascript"
	src="../../../resources/js/handsome/common.js"></script>
<script type="text/javascript"
	src="../../../resources/js/handsome/html5shiv-printshiv.js"></script>
<script type="text/javascript"
	src="../../../resources/js/handsome/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="../../../resources/js/handsome/ui.js"></script>
<script type="text/javascript"
	src="../../../resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="../../../resources/js/common_function.js"></script>
<script type="text/javascript"
	src="../../../resources/js/videojs-ie8.min.js"></script>


<script type="text/javascript"
	src="../../../resources/js/jquery-ui-1.11.2.min.js"></script>
<script type="text/javascript"
	src="../../../resources/js/handsome/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="../../../resources/js/makePCookie.js"></script>


<script type="text/javascript"
	src="../../../resources/wisenut/js/jquery.min.js"></script>

<script type="text/javascript" src="../../../resources/js/swiper.min.js"></script>
<script type="text/javascript" src="../../../resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="../../../resources/js/netfunnel_skin.js" charset="UTF-8"></script>

<script type="text/javascript" src="../../../resources/js/unorm.js"></script>

<script type="text/javascript">
	var setDimensionData = function() {
		//GA 설정 sessionStorage 페이지 이동시 초기화 
		window.sessionStorage.removeItem('ecommerceDataList');
		window.sessionStorage.removeItem('main_new_ecommerceDataList');
		window.sessionStorage.removeItem('main_best_ecommerceDataList');
		window.sessionStorage.removeItem('main_recommend_ecommerceDataList');
		window.sessionStorage.removeItem('normal_cate_ecommerceDataList');
		window.sessionStorage.removeItem('brand_main_new_brazeDataList1'); // 상단NEW
		window.sessionStorage.removeItem('brand_main_new_brazeDataList2'); // 하단NEW
		window.sessionStorage.removeItem('brand_main_sales_brazeDataList1'); // 상단BEST
		window.sessionStorage.removeItem('brand_main_sales_brazeDataList2'); // 하단BEST
		var cid = getCid();
		var device = "PC_WEB";
		var entrySite = "";

		entrySite = "KO";

		var oneDepthPage; // 없을 경우 undifined 그대로 넘겨야 하기 때문에 초기화 X
		var pageTitle = "";
		var tmp = getPageDepth();
		if (tmp != "") {
			oneDepthPage = tmp;
			pageTitle = getGAPageTitle(oneDepthPage);
			if (pageTitle == "") {
				oneDepthPage = undefined;
				pageTitle = document.title;
			}
		} else {
			pageTitle = document.title;
		}

		var pageviewObj = new Object();
		pageviewObj.dimension1 = cid; //고객_ClientID
		pageviewObj.dimension15 = device; //채널_채널유형
		pageviewObj.dimension16 = entrySite; //채널_언어 - #2846 삭제요청 hychung, #2846 복원요청 hychung
		pageviewObj.dimension18 = oneDepthPage; //페이지_1Depth (페이지depth 없는경우 undefined처리)
		pageviewObj.title = pageTitle; //페이지제목     (페이지제목 없는경우 document.title 입력)

		//로그인 했을경우만 추가 dimension 세팅

		// 검색 결과 페이지 일 경우만 처리
		if (window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
			pageviewObj.dimension17 = ""; //검색_검색어(검색결과페이지일때 사용)
		}

		return pageviewObj;
	};

	// 고객_ClientID
	function getCid() {
		var cookieData = document.cookie;
		var Cookies = cookieData.split(';')
		var clientId = "";
		for (var i = 0; i < Cookies.length; i++) {
			if (Cookies[i].split('=')[0] == '_ga'
					|| Cookies[i].split('=')[0] == ' _ga') {
				clientId = Cookies[i].split('=')[1];
			}
		}
		if (clientId != "") {
			clientId = clientId.substring(6);
		}
		if (clientId == "") {
			try {
				ga(function(tracker) {
					clientId = tracker.get('clientId');
				});
			} catch (e) {
				console.log(e);
			}
		}
		return clientId;
	}

	function getPageDepth() {
		var returnDepth = "";
		var target_url = document.location.href;
		if (target_url.substring(target_url.indexOf("/ko/") + 4) == "") {
			returnDepth = "메인";
		} else if (target_url.substring(target_url.indexOf("/ko") + 3) == "") {
			returnDepth = "메인";
		} else if (target_url.indexOf("/p/") > -1) {
			returnDepth = "상품상세";
		} else if (target_url.indexOf("/b/fourmMain") > -1) {
			returnDepth = "브랜드";
		} else if (target_url.indexOf("/b/storeInformation") > -1) {
			returnDepth = "매장안내";
		} else if (target_url.indexOf("/b/") > -1) {

			if (target_url.toLowerCase().substring(
					target_url.indexOf("/c/") + 3).indexOf("br") > -1) {
				returnDepth = "브랜드";
			} else {
				returnDepth = "";
			}

		} else if (target_url.indexOf("/c/ou_") > -1) {
			returnDepth = "아울렛";
		} else if (target_url.indexOf("/c/") > -1) {
			// if'/c/카테고리코드' : /가 한개면
			if (target_url.substring(target_url.indexOf("/c/") + 3)
					.indexOf("/") > -1) {
				if (target_url.toLowerCase().substring(
						target_url.indexOf("/c/") + 3).indexOf("br") > -1) {
					returnDepth = "브랜드";
				} else {
					returnDepth = "카테고리";
				}
			} else {
				returnDepth = "카테고리";
			}
		} else if (target_url.indexOf("/mypage") > -1) {
			returnDepth = "마이페이지";
		} else if (target_url.indexOf("/magazine/events") > -1) {
			returnDepth = "이벤트";
		} else if (target_url.indexOf("/magazine/") > -1) {
			returnDepth = "매거진";
		} else if (target_url.indexOf("/shoppingbag") > -1) {
			returnDepth = "쇼핑백";
		} else if (target_url.indexOf("/ou/") > -1) {
			returnDepth = "아울렛";
		} else if (target_url.indexOf("/checkout/") > -1) {
			returnDepth = "주문";
		} else if (target_url.indexOf("/member/") > -1) {
			returnDepth = "로그인";
		} else if (target_url.indexOf("/login/") > -1) {
			returnDepth = "로그인";
		} else if (target_url.indexOf("/sns/") > -1) {
			returnDepth = "SNS";
		} else if (target_url.indexOf("/prodqna/") > -1) {
			returnDepth = "상품Q&A";
		} else if (target_url.indexOf("/svcenter/") > -1) {
			returnDepth = "고객센터";
		} else if (target_url.indexOf("/item/") > -1) {
			returnDepth = "아이템";
		} else if (target_url.indexOf("/store-finder/") > -1) {
			returnDepth = "매장안내";
		} else if (target_url.indexOf("/footer/") > -1) {
			returnDepth = "FOOTER";
		} else if (target_url.indexOf("/appDownloadSMS/") > -1) {
			returnDepth = "APP 다운로드";
		} else if (target_url.indexOf("/intro/") > -1) {
			returnDepth = "당신만의 한섬";
		} else if (target_url.indexOf("/mobilecommon/mainIntro") > -1) {
			returnDepth = "공통";
		} else if (target_url.indexOf("/mobilecommon/search") > -1) {
			returnDepth = "공통";
		} else if (target_url.indexOf("/hssearch") > -1) {
			returnDepth = "검색";
		} else if (target_url.indexOf("/product/") > -1) {
			returnDepth = "상품";
		} else if (target_url.indexOf("/globalMain") > -1) {
			returnDepth = "메인";
		} else if (target_url.indexOf("/main") > -1) {
			returnDepth = "메인";
		} else {
			returnDepth = "";
		}
		return returnDepth;
	}

	function getGAPageTitle(oneDepthPage) {
		var returnTitle = "";
		var target_url = document.location.href;

		//if(target_url.substring(target_url.indexOf("/ko/")+4).indexOf("/") == -1){
		if (target_url.substring(target_url.indexOf("/ko/") + 4) == "") {
			returnTitle = oneDepthPage;
		} else if (target_url.substring(target_url.indexOf("/ko") + 3) == "") {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/p/") > -1) {
			returnTitle = oneDepthPage + ">";
		} else if (target_url.indexOf("/c//") > -1) {
			returnTitle = "브랜드>>전체보기";
		} else if (target_url.indexOf("/b/fourmMain") > -1) {
			returnTitle = oneDepthPage + ">FOURM 메인";
		} else if (target_url.indexOf("/b/storeInformation") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/b//brand") > -1) {
			returnTitle = oneDepthPage + ">>소개";
		} else if (target_url.indexOf("/b//storeInformation") > -1) {
			returnTitle = oneDepthPage + ">>매장";
		} else if (target_url.indexOf("/b/lookBookDetail?") > -1) {
			returnTitle = oneDepthPage + ">룩북>상세>";
		} else if (target_url.indexOf("/b/lookBook") > -1) {
			returnTitle = oneDepthPage + ">룩북>리스트";
		} else if (target_url.indexOf("/b//lookBookDetail?lookBookCode=") > -1) {
			returnTitle = oneDepthPage + ">>룩북>";
		} else if (target_url.indexOf("/b//lookBook") > -1) {
			returnTitle = oneDepthPage + ">>룩북";
		} else if (target_url.indexOf("/b/") > -1) {
			returnTitle = oneDepthPage + ">>브랜드 메인";
		} else if (target_url.indexOf("/c//ou") > -1) {
			returnTitle = oneDepthPage;

			if ("false") {

			}
		} else if (target_url.indexOf("/c//") > -1) {
			returnTitle = oneDepthPage;

		} else if (target_url.indexOf("/c/") > -1) {
			returnTitle = oneDepthPage;

		} else if (target_url.indexOf("/mypage/order/myordersAthome") > -1) {
			returnTitle = oneDepthPage + ">앳홈신청 및 결제";
		} else if (target_url.indexOf("/mypage/order/myorders") > -1) {
			returnTitle = oneDepthPage + ">주문/배송조회";
		} else if (target_url.indexOf("/mypage/myGradeInfo") > -1) {
			returnTitle = oneDepthPage + ">나의 회원등급";
		} else if (target_url.indexOf("/mypage/voucher") > -1) {
			returnTitle = oneDepthPage + ">쿠폰";
		} else if (target_url.indexOf("/mypage/mypoint") > -1) {
			returnTitle = oneDepthPage + ">혜택관리>나의 한섬마일리지";
		} else if (target_url.indexOf("/mypage/myEGiftCard") > -1) {
			returnTitle = oneDepthPage + ">혜택관리>e-giftcard";
		} else if (target_url.indexOf("/mypage/myWish") > -1) {
			returnTitle = oneDepthPage + ">위시리스트";
		} else if (target_url.indexOf("/mypage/rsalarm") > -1) {
			returnTitle = oneDepthPage + ">재입고 알림";
		} else if (target_url.indexOf("/mypage/personInfomationChangePWCheck") > -1) {
			returnTitle = oneDepthPage + ">개인정보 변경/탈퇴";
		} else if (target_url.indexOf("/mypage/mydelivery") > -1) {
			returnTitle = oneDepthPage + ">배송지 관리";
		} else if (target_url.indexOf("/mypage/oneClick") > -1) {
			returnTitle = oneDepthPage + ">나의 정보관리>원클릭 결제 관리";
		} else if (target_url.indexOf("/mypage/myreview") > -1) {
			returnTitle = oneDepthPage + ">내 상품평";
		} else if (target_url.indexOf("/mypage/myqna") > -1) {
			returnTitle = oneDepthPage + ">상품 Q&A";
		} else if (target_url.indexOf("/mypage/mymantomaninquiry") > -1) {
			returnTitle = oneDepthPage + ">1:1 문의";
		} else if (target_url.indexOf("/mypage/mypageFloatingPopup") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/mypage/mypoint/mobile") > -1) {
			returnTitle = oneDepthPage + ">나의 혜택";
		} else if (target_url.indexOf("/mypage/event/myevents") > -1) {
			returnTitle = oneDepthPage + ">나의 이벤트";
		} else if (target_url.endsWith("/ko/mypage/", target_url.length)) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.endsWith("/ko/mypage", target_url.length)) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/magazine/events/") > -1) {
			returnTitle = oneDepthPage + ">상세>";
		} else if (target_url.indexOf("/magazine/events") > -1) {
			returnTitle = oneDepthPage + ">리스트";
		} else if (target_url.indexOf("/magazine/editorials/") > -1) {
			returnTitle = oneDepthPage + ">에디토리얼>상세>";
		} else if (target_url.indexOf("/magazine/editorials") > -1) {
			returnTitle = oneDepthPage + ">에디토리얼>리스트";
		} else if (target_url.indexOf("/magazine/exhibitions/") > -1) {
			returnTitle = oneDepthPage + ">기획전>상세>";
		} else if (target_url.indexOf("/magazine/exhibitions") > -1) {
			returnTitle = oneDepthPage + ">기획전>리스트";
		} else if (target_url.indexOf("/magazine/handpeople") > -1) {
			returnTitle = oneDepthPage + ">핸썸피플 리스트";
		} else if (target_url.indexOf("/magazine/instagram") > -1) {
			returnTitle = oneDepthPage + ">인스타그램";
		} else if (target_url.indexOf("/magazine/lookbookDetail/") > -1) {
			returnTitle = oneDepthPage + ">룩북>상세>";
		} else if (target_url.indexOf("/magazine/lookbook") > -1) {
			returnTitle = oneDepthPage + ">룩북>리스트";
		} else if (target_url.indexOf("/magazine/newsDetailtemplatetype") > -1) {
			returnTitle = oneDepthPage + ">뉴스>상세>";
		} else if (target_url.indexOf("/magazine/news") > -1) {
			returnTitle = oneDepthPage + ">뉴스>리스트";
		} else if (target_url.indexOf("/magazine/weeklypick") > -1) {
			returnTitle = oneDepthPage + ">위클리픽 리스트";
		} else if (target_url.indexOf("/magazine/submain") > -1) {
			returnTitle = oneDepthPage + ">THE매거진 메인";
		} else if (target_url.indexOf("/magazine/youtubeList") > -1) {
			returnTitle = oneDepthPage + ">비디오";
		} else if (target_url.indexOf("/shoppingbag") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/ou/outletMain") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/c/ou_/ou") > -1) {
			returnTitle = oneDepthPage + ">";
		} else if (target_url.indexOf("/mobilecommon/search") > -1) {
			returnTitle = oneDepthPage + ">키워드";
		} else if (target_url.indexOf("/hssearch/") > -1) {
			returnTitle = oneDepthPage + ">검색결과";
		} else if (target_url.indexOf("/checkout/ordersheet") > -1) {
			returnTitle = oneDepthPage + ">주문서 작성";
		} else if (target_url.indexOf("/checkout/orderConfirmation") > -1) {
			returnTitle = oneDepthPage + ">주문 완료";
		} else if (target_url.indexOf("/member/login") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/login/checkout") > -1) {
			returnTitle = oneDepthPage + ">미로그인시로그인유도";
		} else if (target_url.indexOf("/member/pwChange") > -1) {
			returnTitle = oneDepthPage + ">비밀번호 변경 대상";
		} else if (target_url.indexOf("/member/findIdPwPage") > -1) {
			returnTitle = oneDepthPage + ">한섬회원 아이디/비밀번호 찾기";
		} else if (target_url.indexOf("/member/globaljoincomplete") > -1) {
			returnTitle = oneDepthPage + ">가입완료";
		} else if (target_url.indexOf("/member/joincomplete") > -1) {
			returnTitle = oneDepthPage + ">가입완료";
		} else if (target_url.indexOf("/member/joinGuidePage") > -1) {
			returnTitle = oneDepthPage + ">회원가입안내";
		} else if (target_url.indexOf("/member/joininfoform") > -1) {
			returnTitle = oneDepthPage + ">간편회원 정보입력";
		} else if (target_url.indexOf("/member/joinstart") > -1) {
			returnTitle = oneDepthPage + ">간편회원 이메일";
		} else if (target_url.indexOf("/member/nonMemberLogin") > -1) {
			returnTitle = oneDepthPage + ">비회원 주문조회";
		} else if (target_url.indexOf("/sns/main") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/sns/detail?") > -1) {
			returnTitle = oneDepthPage + ">포스트상세보기";
		} else if (target_url.indexOf("/sns/myNotice") > -1) {
			returnTitle = oneDepthPage + ">나의알림";
		} else if (target_url.indexOf("/sns/collectionDetail?") > -1) {
			returnTitle = oneDepthPage + ">콜렉션상세";
		} else if (target_url.indexOf("/sns/followerList?") > -1) {
			returnTitle = oneDepthPage + ">팔로워리스트";
		} else if (target_url.indexOf("/sns/followingList?") > -1) {
			returnTitle = oneDepthPage + ">팔로윙리스트";
		} else if (target_url.indexOf("/sns/snsSearch?searchWord=") > -1) {
			returnTitle = oneDepthPage + ">태그검색";
		} else if (target_url.indexOf("/sns/message?") > -1) {
			returnTitle = oneDepthPage + ">메시지";
		} else if (target_url.indexOf("/sns/messageList") > -1) {
			returnTitle = oneDepthPage + ">메시지리스트";
		} else if (target_url.indexOf("/sns/myLevel") > -1) {
			returnTitle = oneDepthPage + ">나의레벨";
		} else if (target_url.indexOf("/sns/myProfile?") > -1) {
			returnTitle = oneDepthPage + ">나의프로필";
		} else if (target_url.indexOf("/sns/weeklyBest") > -1) {
			returnTitle = oneDepthPage + ">위클리베스트";
		} else if (target_url.indexOf("/sns/write") > -1) {
			returnTitle = oneDepthPage + ">포스팅작성";
		} else if (target_url.indexOf("/mobilecommon/mainIntro") > -1) {
			returnTitle = oneDepthPage + ">인트로";
		} else if (target_url.indexOf("/svcenter/submain") > -1) {
			returnTitle = oneDepthPage + ">서브메인";
		} else if (target_url.indexOf("/svcenter/notice") > -1) {
			returnTitle = oneDepthPage + ">공지사항";
		} else if (target_url.indexOf("/svcenter/mantomaninquiry") > -1) {
			returnTitle = oneDepthPage + ">1:1 문의";
		} else if (target_url.indexOf("/svcenter/faq") > -1) {
			returnTitle = oneDepthPage + ">FAQ";
		} else if (target_url.indexOf("/svcenter/mending") > -1) {
			returnTitle = oneDepthPage + ">수선진행조회";
		} else if (target_url.indexOf("/svcenter/memberjoinguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>회원가입";
		} else if (target_url.indexOf("/svcenter/theClubInfo") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>온라인 멤버십";
		} else if (target_url.indexOf("/svcenter/memberbenefitguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>한섬 VVIP 혜택";
		} else if (target_url.indexOf("/svcenter/pointguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>한섬마일리지 혜택";
		} else if (target_url.indexOf("/svcenter/couponguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>쿠폰";
		} else if (target_url.indexOf("/svcenter/asguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>배송/반품/AS";
		} else if (target_url.indexOf("/svcenter/paymentguide") > -1) {
			returnTitle = oneDepthPage + ">쇼핑가이드>주문/결제";
		} else if (target_url.indexOf("/svcenter/athomeInfo") > -1) {
			returnTitle = oneDepthPage + ">at HOME";
		} else if (target_url.indexOf("/svcenter/footerAthomeInfo") > -1) {
			returnTitle = oneDepthPage + ">딜리버리서비스";
		} else if (target_url.indexOf("/svcenter/mobilemain") > -1) {
			returnTitle = oneDepthPage + ">메인";
		} else if (target_url.indexOf("/svcenter/mobilenotice") > -1) {
			returnTitle = oneDepthPage + ">공지사항";
		} else if (target_url.indexOf("/svcenter/mobilefaq") > -1) {
			returnTitle = oneDepthPage + ">FAQ";
		} else if (target_url.indexOf("/svcenter/mobilemending") > -1) {
			returnTitle = oneDepthPage + ">수선진행조회";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=0") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>간편서비스";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=1") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>스마트쇼핑";
		} else if (target_url.indexOf("/svcenter/serviceguide?targetSlide=2") > -1) {
			returnTitle = oneDepthPage + ">서비스소개>유니크한섬";
		} else if (target_url.indexOf("/svcenter/serviceguide") > -1) {
			returnTitle = oneDepthPage + ">서비스소개";
		} else if (target_url.indexOf("/item/we") > -1) {
			returnTitle = oneDepthPage + ">WE";
		} else if (target_url.indexOf("/item/me") > -1) {
			returnTitle = oneDepthPage + ">ME";
		} else if (target_url.indexOf("/store-finder/") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/footer/footerBrandintro") > -1) {
			returnTitle = oneDepthPage + ">브랜드소개";
		} else if (target_url.indexOf("/footer/footerCompanyIntro") > -1) {
			returnTitle = oneDepthPage + ">회사소개>한섬소개";
		} else if (target_url.indexOf("/footer/footerCEOGreetings") > -1) {
			returnTitle = oneDepthPage + ">회사소개>CEO 메시지";
		} else if (target_url.indexOf("/footer/footerBrandintro") > -1) {
			returnTitle = oneDepthPage + ">회사소개>브랜드소개";
		} else if (target_url.indexOf("/footer/footerGovernance") > -1) {
			returnTitle = oneDepthPage + ">투자정보>기업지배구조";
		} else if (target_url.indexOf("/footer/footerFinancialInfo") > -1) {
			returnTitle = oneDepthPage + ">투자정보>재무정보";
		} else if (target_url.indexOf("/footer/footerStockInfo") > -1) {
			returnTitle = oneDepthPage + ">투자정보>주가정보";
		} else if (target_url.indexOf("/footer/footerIR") > -1) {
			returnTitle = oneDepthPage + ">투자정보>IR";
		} else if (target_url.indexOf("/footer/footerCorporatePartnership") > -1) {
			returnTitle = oneDepthPage + ">동반성장>소개";
		} else if (target_url.indexOf("/footer/footerCoreFourPractices") > -1) {
			returnTitle = oneDepthPage + ">동반성장>4대 실천사항";
		} else if (target_url.indexOf("/footer/footerCooperatorSelection") > -1) {
			returnTitle = oneDepthPage + ">동반성장>협력업체 선정";
		} else if (target_url.indexOf("/footer/footerSupportProgram") > -1) {
			returnTitle = oneDepthPage + ">동반성장>지원제도";
		} else if (target_url.indexOf("/footer/footerContactUs") > -1) {
			returnTitle = oneDepthPage + ">동반성장>소통의 장";
		} else if (target_url.indexOf("/appDownloadSMS/") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/intro/mainYours") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/globalMain") > -1) {
			returnTitle = oneDepthPage;
		} else if (target_url.indexOf("/main") > -1) {
			returnTitle = oneDepthPage;
		}

		return returnTitle;
	}

	if (!String.prototype.endsWith) {
		String.prototype.endsWith = function(searchString, position) {
			var subjectString = this.toString();
			if (typeof position !== 'number' || !isFinite(position)
					|| Math.floor(position) !== position
					|| position > subjectString.length) {
				position = subjectString.length;
			}
			position -= searchString.length;
			var lastIndex = subjectString.indexOf(searchString, position);
			return lastIndex !== -1 && lastIndex === position;
		};
	}

	function GA_Event(Category, Action, Label) {

		Label = unescape(Label).replace(/\&#039;/gi, "'");

		var v_Label = Label;
		var v_Category = Category;
		var v_Action = Action;
		//공백처리을  _ 처리
		if (Category != null) {
			v_Category = Category.replace(/\s{2,}/gi, ' ').trim().replace(
					/\s/gi, '_');
		}
		if (Action != null) {
			v_Action = Action.replace(/\s{2,}/gi, ' ').trim().replace(/\s/gi,
					'_');
		}
		if (Label != null) {
			v_Label = Label.replace(/\s{2,}/gi, ' ').trim()
					.replace(/\s/gi, '_');
		}
		ga('gp.send', 'event', v_Category, v_Action, v_Label);
	}
</script>
<style media="screen">
.blsmflw1 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

.leaf2209 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

@
keyframes target_image { 0% {
	transform: rotate(-1deg);
}
50%
{
transform
















:








 








rotate
















(9
deg














)
}
100%
{
transform
















:








 








rotate
















(-1
deg














);
}
}
</style>

<script>
	$(document)
			.ready(
					function() {

						//아울렛 하위브랜드 없을시 이름 숨김처리
						$(".outlet_brand1803 .sm_dep1 .liDep1").each(
								function() {
									if ($(this).find('ul li').length == 0) {
										$(this).remove();
									}
								});

						var testDt = "2018/03/23 09:00:00";

						var todayDate = new Date();
						var startDate = new Date(testDt), endDate = new Date(
								'2018/04/08 23:59:59');
						//     var startDate = new Date('2018/03/23 00:00:00'), endDate = new Date('2018/04/08 23:59:59');
						if (todayDate.getTime() >= startDate.getTime()
								&& todayDate.getTime() <= endDate.getTime()) {

							var obj = [];
							obj.push("main");
							obj.push("brandMain");
							obj.push("exhibition");
							obj.push("productDetail");
							obj.push("news");
							obj.push("instagram");
							obj.push("event");

							var ranBannerIdx = Math.floor((Math.random()
									* obj.length * 2));

							//(메인, 상품상세, 기획전, 브랜드메인, 뉴스, 이벤트, 인스타그램)일때만 레이어노출
							var viewYn = false;
							var ranYn = false;
							var type = "";

							var url = $(location).attr("href");
							var referer = "";
							if (url == referer || referer == "") {
								viewYn = false;
							}

							if (getCookie('blossomsPopup') != todayDate
									.getDate()) {
								if (viewYn == true && ranYn == true) {
									var innerHtml = "<div class=\"evtpop_blsm_0314\" style=\"position:fixed;top:220px;left:80px;margin-left:0;z-index:15;background:url('http://cdn.thehandsome.com/pc/event/detail/image/evt_blsmbg_180321.png') 8px 2px no-repeat;width:100px;height:110px;\">";
									innerHtml += "  <div class=\"blsmflw1\" style=\"position:absolute;\">";
									innerHtml += "      <img src=\"http://cdn.thehandsome.com/Mobile/event/detail/image/m_evt_blsm2_180321.png\" alt=\"꽃잎줍기\">";
									innerHtml += "  </div>";
									innerHtml += "  <a href=\"javascript:blossomsEvent(\'"
											+ type
											+ "\');\" alt=\"이벤트GO\" style=\"display:block;position:absolute;top:10px;width:110px;height:85px;\">&nbsp;</a>";
									innerHtml += "  <a href=\"javascript:blossomsClose(\'close'\);\" alt=\"꽃잎close\" style=\"background:url('/resources/images/common/btn_close.png') no-repeat;display:block;position:absolute;top:0;right:-7px;width:18px;height:18px;z-index:2;\">&nbsp;</a>";
									innerHtml += "  <div style=\"position:absolute;bottom:-4px;left:17px;width:120px;\">";
									innerHtml += "      <label for=\"day_close\" style=\"cursor:pointer;text-decoration:underline;color:#6e6e6e;letter-spacing:-.5px;\" onclick=\"blossomsClose(\'day_close\');\">하루 보지 않기</label>";
									innerHtml += "      <input id=\"day_close\" type=\"checkbox\" name=\"day_close\" value=\"하루 보지 않기\" onclick=\"blossomsClose(\'day_close\');\" style=\"display:none;\">";
									innerHtml += "  </div>";
									innerHtml += "</div>";

									$("#bodyWrap").prepend(innerHtml);
								}

							}
						}

						var tempDate = '2022/09/16 10:00:00';
						if (location.href.indexOf("www.thehandsome.com") == -1) {
							//test
							tempDate = '2022/09/06 10:00:00';
						}

						var startDate = new Date(tempDate), endDate = new Date(
								'2022/09/22 23:59:59');
						if (todayDate.getTime() >= startDate.getTime()
								&& todayDate.getTime() <= endDate.getTime()) {
							// 노출페이지 : 정상/아울렛 상품상세페이지, 기획전 (상세), 더매거진(상세)
							var uid = "main201903Page";
							var chkPage = [ "hsProductDetailPage",
									"editorialDetailPage", "productList" ];
							var target_url = document.location.href;

							if (getCookie('mapleEventPopup') != todayDate
									.getDate()) {
								if (chkPage.indexOf(uid) > -1
										|| target_url
												.indexOf("/magazine/exhibitions/") > -1) {
									$
											.ajax({
												url : "/ko/magazine/getLeavesEventRandom",
												type : "get",
												dataType : "json",
												data : {
													pk : '8804481881984',
													tdate : ''
												},
												success : function(data) {
													//                         console.log(data);

													if (data != "11") {

														var leafType = "leaf01";
														if (data == "1"
																|| data == "2"
																|| data == "3"
																|| data == "4") {
															leafType = "leaf03";
														} else if (data == "5"
																|| data == "6"
																|| data == "7") {
															leafType = "leaf01";
														} else if (data == "8"
																|| data == "9"
																|| data == "10") {
															leafType = "leaf02";
														}

														var innerHtml = '<div class="evt_minipop_maple_220902">';
														innerHtml += '    <div class="leaf2209 ' + leafType + '">';
														innerHtml += '        <a href="javascript:setPlayLeaves('
																+ data
																+ ')">행운의 단풍잎 줍기!</a>';
														innerHtml += '    </div>';
														innerHtml += '    <div class="today_close" style="position:absolute;bottom:0;left:6px;width:134px;">';
														innerHtml += '        <label for="justDay1" style="cursor:pointer;color:#000;letter-spacing:-.5px;">오늘 하루 보지 않기</label>';
														innerHtml += '        <input id="justDay1" type="checkbox" name="day_close" value="오늘 하루 보지 않기" style="display:none">';
														innerHtml += '        <a href="javascript:mapleEvtPopClose()" alt="닫기" class="close" style="background:url(\'http://cdn.thehandsome.com/_ui/desktop/common/images/common/btn_close.png\') no-repeat; display:block; position:absolute; bottom:2px; right:6px; width:11px; height:11px; z-index:2;">&nbsp;</a>';
														innerHtml += '    </div>';
														innerHtml += '</div>';

														$("#bodyWrap").prepend(
																innerHtml);
													}

												},
												error : function(e) {

												}
											});
								}
							}
						}

					});

	var playItem = "";

	function setPlayEarlySummer(item) {

		//로그인 안했을경우, 로그인페이지로
		//로그인후 참여하실수 있습니다.
		var obj = $(".popwrap_renewal1910.no_login");
		var tp = ($(window).height() - obj.outerHeight()) / 2
				+ $(window).scrollTop();
		if (tp < 0)
			tp = 0;
		obj.css("top", tp);
		obj.show();
		$('#ealrySummerLayer').show();

	}
	//로그인 했을경우, 이벤트 페이지로 

	function evtPopClose(type) {
		if (type == "close") {
			$('.evt_pop_earlysummer').hide();
		} else {
			var todayDate = new Date();
			setCookie("earlysummerPopup", todayDate.getDate(), 1);
			$('.evt_pop_earlysummer').hide();
			$('.popwrap_renewal1910').hide();
			$('#ealrySummerLayer').hide();
		}
	};

	function goLogin() {
		location.href = '/ko/member/login';
	}

	function goEalryEvent() {
		location.href = '/ko/magazine/events/8799238805376';
	}

	var playMapleItem = "";

	function setPlayMaple(item) {
		//로그인 안했을경우, 로그인페이지로
		//로그인후 참여하실수 있습니다.
		$.ajax({
			url : '/ko/magazine/events/setMapleSession' + "?type=" + item,
			dataType : "json",
			type : "get",
			cache : false,
			dataType : "json",
			async : false,
			contentType : "application/json",
			success : function(data) {
				var obj = $(".popwrap_maple_evt1909.no_login");
				var tp = ($(window).height() - obj.outerHeight()) / 2
						+ $(window).scrollTop();
				if (tp < 0)
					tp = 0;
				obj.css("top", tp);
				obj.show();
				$(".evt_minipop_maple").hide();
				$('#mapleLayer').show();
			},
			error : function(e) {

			}
		});

	}
	//로그인 했을경우, 이벤트 페이지로 

	function blossomsEvent(type) {

		$.ajax({
			url : '/ko/magazine/events/setBlossomsSession' + "?type=" + type,
			dataType : "json",
			type : "get",
			cache : false,
			dataType : "json",
			async : false,
			contentType : "application/json",
			success : function(data) {
				//로그인 안했을경우, 로그인페이지로

				var la = new layerAlert('벚꽃 이벤트는 로그인 후 응모 가능합니다');

				la.confirmAction = function() {
					location.href = '/ko/member/login';
				};

			},
			//로그인 했을경우, 이벤트 페이지로 
			error : function(e) {

			}
		});

	}

	function blossomsClose(type) {
		if (type == "close") {
			$('.evtpop_blsm_0314').hide();
		} else {
			//         if($('#day_close').is(":checked")) {
			var todayDate = new Date();
			setCookie("blossomsPopup", todayDate.getDate(), 1);
			$('.evtpop_blsm_0314').hide();

		}
	}
	//         }
	;

	/**
	 * 2020.03.31 hmk
	 *
	 * 입력하려는 productId가 배열에 있는지 확인해서
	 * 있을 경우에는 해당 배열 항목 삭제하고 입력하려는 
	 * productId가 key인 js object 생성하여 삽입. (한마디로 replace)
	 * value : 신규 항목일 때
	 * oldValue : 기존 항목이 있어서 교체할 때
	 */
	function mapSet(array, key, value, oldValue) {
		var isKeyExist = false;
		for (var i; i < array.length; i++) {
			if (array[i].key === key) {
				array.splice(i, 1);
				array.push({
					key : key,
					value : oldValue
				});
				isKeyExist = true;
			}
		}
		// 키 존재 여부가 false인 경우는 상기 로직이 수행되지 않았다는 의미 == 새로운 항목
		// 이므로 배열에 그냥 입력
		if (!isKeyExist) {
			array.push({
				key : key,
				value : value
			});
		}
	}

	//  recoPick  START ---->

	try {
		var birthday = '';
		var splitBirthday = birthday != '' ? birthday.split(" ")[5] : ''; //출생년도
		var gender = '';

		(function(w, d, n, s, e, o) {
			w[n] = w[n] || function() {
				(w[n].q = w[n].q || []).push(arguments)
			};
			e = d.createElement(s);
			e.async = 1;
			e.charset = 'utf-8';
			e.src = '//static.recopick.com/dist/production.min.js';
			o = d.getElementsByTagName(s)[0];
			o.parentNode.insertBefore(e, o);
		})(window, document, 'recoPick', 'script');

		recoPick('service', 'thehandsome.com/ko/');

		try {
			recoPick('sendLog', 'visit');
		} catch (e) {
			console.log(e);
		}

	} catch (e) {
		console.log(e);
	}
	//  recoPick END ---->

	function setCategoryNameInKO(targetCateCode, defaultCateName) {
		var cates = "AS|잡화^AS01|여성슈즈^AS011|부츠^AS012|로퍼/블로퍼^AS013|스니커즈^AS014|플랫^AS015|힐/슬링백^AS016|샌들/슬라이드^AS017|기타 슈즈^AS02|남성슈즈^AS021|부츠^AS022|포멀슈즈^AS023|스니커즈^AS024|샌들/슬라이드^AS025|기타 슈즈^AS03|여성백^AS031|토트백^AS032|숄더/크로스바디백^AS033|클러치 백^AS034|기타 백^AS041|토트백^AS042|숄더/크로스바디백^AS043|클러치 백^AS044|기타 백^AS051|머플러^AS052|스카프^AS061|이어링/커프^AS062|목걸이^AS063|팔찌^AS064|반지^AS065|기타 주얼리^AS071|모자^AS072|양말^AS073|장갑^AS074|벨트^AS075|지갑^AS076|헤어ACC^AS077|테크ACC^AS078|기타소품^AS079|비치웨어^BE011|토너/에멀전/크림^BE012|세럼/앰플/오일/밤^BE013|클렌징/스크럽/마스크^BE021|페이스 메이크업^BE023|립 메이크업^BE031|핸드·바디로션/크림/오일^BE032|핸드·바디워시/스크럽^BE033|샴푸/컨디셔너^BE034|트리트먼트/오일/스프레이^BE035|기타 바디/헤어케어^BE041|향수^EG02|감사^GF011|아우터^GF012|가디건/베스트^GF013|탑^GF014|스커트/원피스^GF015|팬츠^GF021|아우터^GF022|베스트^GF023|탑^GF024|팬츠^GF031|골프백^GF032|골프화^GF033|모자^GF034|장갑^GF035|양말^GF036|벨트^GF037|기타^LS011|패브릭^LS012|프래그런스^LS013|데코레이션^LS014|기타소품^LS021|스킨케어^LS022|욕실용품^LS031|그릇^LS032|보드/트레이^LS033|커트러리^LS034|커피/티^LS035|패브릭/냅킨^LS036|기타소품^LS041|문구^LS042|책^LS043|기타소품^LS051|패션^LS052|기타소품^LS061|의류^LS062|잡화^ME011|티셔츠^ME012|셔츠^ME013|니트^ME014|스웨터^ME015|가디건/베스트^ME02|팬츠^ME021|루즈/테이퍼드^ME022|데님^ME023|쇼츠^ME025|슬림/스트레이트^ME028|조거/트랙^ME031|재킷^ME032|점퍼^ME033|트렌치코트^ME034|코트^ME035|다운/패딩^ME041|드레스셔츠^ME042|수트재킷^ME044|수트팬츠^ME095|TIME HOMME : ONLINE EXCLUSIVE^WE011|티셔츠^WE012|블라우스^WE013|셔츠^WE014|니트^WE015|가디건/베스트^WE021|캐주얼^WE022|포멀^WE023|데님^WE024|쇼츠^WE031|미니 스커트^WE032|펜슬 스커트^WE033|플레어 스커트^WE034|롱/맥시 스커트^WE041|미니 드레스^WE042|미디 드레스^WE043|롱/맥시 드레스^WE051|재킷^WE052|점퍼^WE053|트렌치 코트^WE054|코트^WE055|다운/패딩^WE092|TIME : SIGNATURE SUIT^WE095|FOURM THE STORE: EXCLUSIVE^WE096|FOURM STUDIO : RE:STUDIO^WE098|SYSTEM : PARIS PRESENTATION^WE09N|SJSJ : Signature JEANS^WE09Q|LATT : Riding into the Classic^WE09R|LATT : THE FIRST"; //WE011|티셔츠^WE012|블라우스^...
		var cateArr = null;
		var returnCateName = "";
		if (targetCateCode != "") {
			if (cates != "") {
				cateArr = cates.split("^");
				if (cateArr.length > 0) {
					$(cateArr)
							.each(
									function(idx) {
										if (cateArr[idx] != "") {
											// WE011|티셔츠
											var compareCate = cateArr[idx]
													.split("|");
											if (compareCate.length == 2) {
												// code | name
												var compareCateCode = compareCate[0]; //WE011
												if (compareCateCode
														.toUpperCase() == targetCateCode
														.toUpperCase()) {
													returnCateName = compareCate[1]; //티셔츠
												}
											}
										}
									});
				}
			}

			// 한글 카테고리명이 없을경우 defaultCateName로 재설정
			if (returnCateName == "") {
				returnCateName = defaultCateName;
			}
		}
		return returnCateName;
	}

	function setPlayLeaves(item) {
		var itemType;
		if (item == "1") {
			itemType = "red1";
		} else if (item == "2") {
			itemType = "red2";
		} else if (item == "3") {
			itemType = "red3";
		} else if (item == "4") {
			itemType = "red4";
		} else if (item == "5") {
			itemType = "green1";
		} else if (item == "6") {
			itemType = "green2";
		} else if (item == "7") {
			itemType = "green3";
		} else if (item == "8") {
			itemType = "brown1";
		} else if (item == "9") {
			itemType = "brown2";
		} else if (item == "10") {
			itemType = "brown3";
		}

		$
				.ajax({
					url : '/ko/magazine/setPlayLeavesEvent',
					type : "get",
					dataType : "json",
					data : {
						pk : '8804481881984',
						tdate : '',
						type : itemType
					},
					success : function(data) {
						//             console.log(data);

						$(".evt_minipop_maple_220902").hide();

						var innerHtml = "";

						if (data == "anonymous") {
							innerHtml = '<div class="popwrap_maple_evt2209" style="height:319px;">';
							innerHtml += '   <div class="check_my_maple" style="position:relative">';
							innerHtml += '       <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_login.jpg" alt="오늘의 단풍잎">';
							innerHtml += '       <a href="/ko/magazine/events/8804481881984/login" style="width:160px;height:40px;text-indent:-9999px;position:absolute;top:208px;left:120px;display:block">로그인 바로가기</a>';
							innerHtml += '       <a href="javascript:mapleEvtPopClose()" class="btn_close_oneday" style="position:absolute;width:130px;height:30px;bottom:25px;left:135px;text-indent:-9999px;display:block">오늘 하루 보지 않기</a>';
							innerHtml += '   </div>';
							innerHtml += '   <a href="javascript:mapleEvtPopClose(\'close\')" class="btn_close"></a>';
							innerHtml += '</div>';

						} else if (data == "noTarget") {
							innerHtml = '<div class="popwrap_maple_evt2209" style="height:319px;">';
							innerHtml += '   <div class="check_my_maple" style="position:relative">';
							innerHtml += '       <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_login02_1.jpg" alt="오늘의 단풍잎">';
							innerHtml += '       <a href="https://www.h-point.co.kr/cu/join/start.nhd" style="width:160px;height:40px;text-indent:-9999px;position:absolute;top:208px;left:120px;display:block">통합회원 가입하기</a>';
							innerHtml += '       <a href="javascript:mapleEvtPopClose()" class="btn_close_oneday" style="position:absolute;width:130px;height:30px;bottom:25px;left:135px;text-indent:-9999px;display:block">오늘 하루 보지 않기</a>';
							innerHtml += '   </div>';
							innerHtml += '   <a href="javascript:mapleEvtPopClose(\'close\')" class="btn_close"></a>';
							innerHtml += '</div>';

						} else if (data == "nextTime") {
							innerHtml = '<div class="popwrap_maple_evt2209" style="height:269px;">';
							innerHtml += '   <div class="check_my_maple" style="position:relative">';
							innerHtml += '       <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_todayend.jpg" alt="내일 다시 참여해보세요">';
							innerHtml += '       <a href="javascript:mapleEvtPopClose()" class="btn_close_oneday" style="position:absolute;width:130px;height:30px;bottom:34px;left:135px;text-indent:-9999px;display:block">오늘 하루 보지 않기</a>';
							innerHtml += '   </div>';
							innerHtml += '   <a href="javascript:mapleEvtPopClose()" class="btn_close"></a>';
							innerHtml += '</div>';

						} else if (data == "success") {
							innerHtml = '<div class="popwrap_maple_evt2209" style="height:349px;">';
							innerHtml += '    <div class="check_my_maple" style="position:relative">';
							if (item == "1" || item == "2" || item == "3"
									|| item == "4") {
								innerHtml += '    <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_red.jpg" alt="행운의 황금 단풍잎을 획득하셨습니다.">';
							} else if (item == "5" || item == "6"
									|| item == "7") {
								innerHtml += '    <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_green.jpg" alt="행운의 황금 단풍잎을 획득하셨습니다.">';
							} else if (item == "8" || item == "9"
									|| item == "10") {
								innerHtml += '    <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/event/202209_maple/evt_maple_202209_pc_pop_brown.jpg" alt="행운의 황금 단풍잎을 획득하셨습니다.">';
							}

							innerHtml += '        <a href="javascript:mapleEvtPopClose(\'close\')" style="width:170px;height:40px;text-indent:-9999px;position:absolute;bottom:77px;left:28px">계속 쇼핑</a>';
							innerHtml += '        <a href="javascript:goMapleEvent()" style="width:170px;height:40px;text-indent:-9999px;position:absolute;bottom:77px;right:28px">나의 단풍 나무 확인하기</a>';
							innerHtml += '        <a href="javascript:mapleEvtPopClose()" class="btn_close_oneday" style="position:absolute;width:130px;height:30px;bottom:35px;left:135px;text-indent:-9999px;display:block">오늘 하루 보지 않기</a>';
							innerHtml += '    </div>';
							innerHtml += '    <a href="javascript:mapleEvtPopClose(\'close\')" class="btn_close"></a>';
							innerHtml += '</div>';

						}

						if (innerHtml != "") {
							$("#popwrap_maple_evt2209").show();
							$("#popwrap_maple_evt2209").html(innerHtml);
							$("#mapleLayer").show();
						}

					},
					error : function(e) {

					}
				});
	}

	function mapleEvtPopClose(type) {

		if (type == "close") {
			$(".evt_minipop_maple_220902").hide();
			$(".popwrap_maple_evt2209").hide();
			$('#mapleLayer').hide();

		} else {
			var todayDate = new Date();
			setCookie("mapleEventPopup", todayDate.getDate(), 1);
			$(".evt_minipop_maple_220902").hide();
			$(".popwrap_maple_evt2209").hide();
			$('#mapleLayer').hide();
		}
	};

	function goMapleEvent() {
		location.href = '/ko/magazine/events/8804481881984';
	}
</script>

<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1947530058811697'); // Insert your pixel ID here.
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1947530058811697&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 -->
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	if (typeof kakaoPixel !== 'undefined') {
		var kakaoTrackId = '3482319208237780781'; //개발
		if (location.href.indexOf("www.thehandsome.com") > -1)
			kakaoTrackId = '7855119525940511046'; //운영
		kakaoPixel(kakaoTrackId).pageView();
	}
</script>
<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 END -->
<script>
	var pageviewObj = new Object();
	pageviewObj = setDimensionData();
	// GA 추적코드 추가 -->
	// Google Analytics -->
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');

	try {
		ga('create', 'UA-154649175-1', 'auto', 'gp');
		ga('gp.set', 'anonymizeIp', true); // IP 익명화 선언
		// End Google Analytics -->
		ga('gp.set', pageviewObj);
	} catch (e) {
		console.log(e);
	}

	// GTM 추적코드 추가 -->
	// dataLayer 초기선언 -->
	dataLayer = [ pageviewObj ];

	// Google Tag Manager -->
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-5PCJDFJ');
// End Google Tag Manager -->
</script>

<!-- Groobee -->
<script type="text/javascript">
	(function(a, i, u, e, o) {
		a[u] = a[u] || function() {
			(a[u].q = a[u].q || []).push(arguments)
		};
	})(window, document, "groobee");
	groobee("serviceKey", "446b3d48b07e41f68624bf7f3457f33d");
	groobee("siteType", "custom");
</script>
<script charset="utf-8"
	src="//static.groobee.io/dist/g2/groobee.init.min.js"></script>
<!-- End of Groobee -->
<meta property="groobee:member_id" content="" />
<meta property="groobee:member_grade" content="" />
<meta property="groobee:member_gender" content="" />
<meta property="groobee:member_type" content="" />
<meta property="groobee:member_age" content="" />
<script>
	// 검색 결과 페이지
	if (window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
		var groobeeKeyword = ""; //검색_검색어(검색결과페이지일때 사용)
		groobee("SE", {
			keyword : groobeeKeyword
		});
	}
</script>
</head>

<body oncontextmenu='return false'>
	<!-- <div id="transparent_mask"></div> -->
	<script>
		//라쿠텐 유입
		var siteID = "" ? "" : "";
		if (siteID != "") {
			(function(cname, cvalue) {
				//20일 fix : 추후 변경 가능 - 변경시 bos단 처리
				var d = new Date();
				d.setTime(d.getTime() + (20 * 24 * 60 * 60 * 1000));
				document.cookie = cname + '=' + cvalue + '; expires='
						+ d.toUTCString() + '; path=/';
			})('rakuten', siteID);
		}
		(function(cname, cvalue, day) {
			var d = new Date();
			d.setTime(d.getTime() + (day * 24 * 60 * 60 * 1000));
			document.cookie = cname + '=' + cvalue + '; expires='
					+ d.toUTCString() + '; path=/';
		})('sslvisit1', false, -7);
	</script>
	<!-- 현대닷컴 유입 시작 -->
	<script>
		(function(cname, cvalue, day) {
			var d = new Date();
			d.setTime(d.getTime() + (day * 24 * 60 * 60 * 1000));
			document.cookie = cname + '=' + cvalue + '; expires='
					+ d.toUTCString() + '; path=/';
		})('thehyundai', false, -7);
	</script>
	<!-- 현대닷컴 유입 끝 -->

	<!-- hmall 유입 시작 -->
	<script>
		(function(cname, cvalue, day) {
			var d = new Date();
			d.setTime(d.getTime() + (day * 24 * 60 * 60 * 1000));
			document.cookie = cname + '=' + cvalue + '; expires='
					+ d.toUTCString() + '; path=/';
		})('hyundaihmall', false, -7);
	</script>
	<!-- hmall 유입 끝 -->

	<!-- 광고 유입 시작 -->
	<script>
		(function(cname, cvalue, day) {
			var d = new Date();
			d.setTime(d.getTime() + (day * 24 * 60 * 60 * 1000));
			document.cookie = cname + '=' + cvalue + '; expires='
					+ d.toUTCString() + '; path=/';
		})('fromSite', '', -7);
	</script>
	<!-- 광고 유입 끝 -->
	<!-- Loading -->
	<div class="loading_bar" id="loadingBarDiv" style="display: none;">
		<img src="../../../resources/images/common/loading.gif" alt="loading" />
		<span>�로딩중</span>
	</div>
	<!-- //Loading -->

	<form id="CSRFForm"
		action="/ko/?&amp;utm_source=Google_SA&amp;utm_medium=SA&amp;utm_campaign=handsome&amp;utm_term=%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4&amp;utm_content=b&amp;gclid=CjwKCAjwqJSaBhBUEiwAg5W9p_XYYgGYb5xHXbm8bbwp70GpDYPLbdQ6d0_hitin9gAqFQ0bw3gp4hoCq-IQAvD_BwE"
		method="post">
		<div>
			<input type="hidden" name="CSRFToken"
				value="38dac78e-999f-4177-895a-5a388435491e" />
		</div>
	</form>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript" src="../../../resources/js/SsoAjax.js"></script>

			<script>
				var arkQuery = $.noConflict(true);
			</script>

			<script>
				/*
				 * 챗봇 관련 스크립트
				 */
				// 챗봇의 푸시링크를 클릭했을 때
				function openChatView(token, talkId) {
					callChatbot(token, talkId);
				}

				function callChatbot(token, talkId) {
					if (token == null) {
						$
								.ajax({
									type : "POST",
									url : "/ko/chatbot/token",
									data : {
										"CSRFToken" : "38dac78e-999f-4177-895a-5a388435491e"
									},
									async : false,
									success : function(data) {
										if (data.result == "SHOULD_LOGIN") {
											var la = new layerAlert(
													"로그인이 필요합니다");
											la.confirmAction = function() {
												//확인 버튼 클릭시 추가 호출 펑션
												location.href = "/ko/member/login";
											};
										} else if (data.result == "NOT_VIP") {
											var la = new layerAlert(
													"VVIP 회원님만 이용 가능하십니다");
											la.confirmAction = function() {
											};
										} else if (data.result == "OFF-HOURS") {
											//일반 : CREW, FRIEND, 간편회원일경우, 평일 오전 9시 30분 ~ 오후 6시 30분만 사용가능
											var la = new layerAlert(
													"평일(월~금) 09:00 ~ 18:00 (토/일, 공휴일 휴무)에 이용 가능하십니다");
											la.confirmAction = function() {
											};
										} else {
											if (data.token != "") {
												token = data.token;
											}
										}
									},
									error : function(e) {
										;
									}
								});
					}

					if (token != null && token != '') {
						try {
							ga(
									'gp.send',
									'pageview',
									{
										'title' : '하니톡_채팅서비스',
										//가상페이지 화면명
										'location' : 'http://www.thehandsome.com/ko/hanitalk' //가상페이지URL
									});
						} catch (e) {
							console.log(e);
						}
						$("#chatbot_token").val(token);
						$("#chatbot_talkId").val(talkId);

						var targetTalkUrl = ""
						if (location.href.indexOf("www.thehandsome.com") > -1) {
							//운영
							//운영 챗봇 url
							targetTalkUrl = "https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp";
						} else {
							//그외
							//개발 챗봇 url
							targetTalkUrl = "https://handsome-dev.enomix.co.kr/front/v1/jsp/view/chat.jsp";
						}

						$("#chatbotForm").attr("action", targetTalkUrl);

						$("#chatbotForm").submit();
					}
					return false;
				}
				/*
				 * // 챗봇 관련 스크립트
				 */
				function GA_Common(action, e) {
					var eventCategory;
					var eventAction;
					var label;

					if (action == "topNav") {
						eventCategory = "공통";
						eventAction = "탑_네비게이션";
						label = escape(e.text());
					} else if (action == "news") {
						eventCategory = "공통";
						eventAction = "뉴스";
						label = escape(e.text());
					} else if (action.indexOf("commonBrand") > -1) {
						eventCategory = "공통_브랜드";
						eventAction = gaBrandType(action.split('_')[0]);
						label = e.text();
					} else if (action.indexOf("brandLike") > -1) {
						eventCategory = "공통_브랜드";
						eventAction = gaBrandType(action.split('_')[0])
								+ "_좋아요";
						label = e.parent().find("a").text();
					}

					GA_Event(eventCategory, eventAction, label);
				}

				function gaBrandType(brandCode) {
					var brandTypeNm = "";
					if (brandCode == "WE") {
						brandTypeNm = "여성_브랜드";
					} else if (brandCode == "ME") {
						brandTypeNm = "남성_브랜드";
					} else if (brandCode == "ED") {
						brandTypeNm = "편집_브랜드";
					} else if (brandCode == "OS") {
						brandTypeNm = "해외_브랜드";
					}
					return brandTypeNm;
				}
			</script>

			<script type="text/javascript">
				var historyDelete = '검색기록전체삭제';
				var typingWord = '검색어를 입력해주세요.';
				var gotoBrand = '브랜드바로가기';
				var noRecommendCategory = '추천 카테고리가 없습니다.';
				var noRecommendBrand = '추천 브랜드가 없습니다.';
				var noRecommendResult = '해당 단어로 시작하는 검색어가 없습니다.';
				var brandReport = '브랜드리포트';
				var graph = '그래프';
				var fold = '접기';

				var favoriteBrands = new Array();
			</script>
			<script type="text/javascript"
				src="../../../resources/wisenut/ark/js/beta.fix.js"></script>
			<script type="text/javascript"
				src="../../../resources/wisenut/ark/js/ark.js"></script>
			<script type="text/javascript"
				src="../../../resources/wisenut/js/search.js"></script>
			<script type="text/javascript">
				//<![CDATA[
				// #1067 - 201803 메인 개편
				function applyCategory() {

					layerAlert('로그인 후 당신만의 브랜드 즐겨찾기를 <br /> 완성하세요.');
					return;

					var brandNameArray = new Array();
					var brandCodeArray = new Array();
					var parentBrandCodeArray = new Array();
					var sortIndexArray = new Array();
					var valueSplitArray = new Array();
					var dataValue = "";

					$("input:checkbox[class=\"checkboxEvent\"]").each(
							function() {
								if (this.checked) {
									dataValue = this.value;
									valueSplitArray = dataValue.split('#');
									brandNameArray.push(this.title);
									parentBrandCodeArray
											.push(valueSplitArray[0]);
									brandCodeArray.push(valueSplitArray[1]);
									sortIndexArray.push(valueSplitArray[2]);
								}
							});
					var parentBrandCode = parentBrandCodeArray.join(",");
					var brandName = brandNameArray.join(",");
					var brandCode = brandCodeArray.join(",");
					var sortIndex = sortIndexArray.join(",");

					$.ajax({
						type : "GET",
						url : "/intro/setCategoryList",
						data : {
							"brandName" : brandName,
							"brandCode" : brandCode,
							"parentBrandCode" : parentBrandCode,
							"sortIndex" : sortIndex
						},
						success : function(data) {
							window.location.reload();
						},
						error : function(e) {
							console.log("error", e);
						}
					});

				}

				function resetCategory() {

					$("input:checkbox[class=\"checkboxEvent\"]").each(
							function() {
								if (this.checked) {
									this.checked = false;
								}
							});
					applyCategory();
				}

				function searchOn() {
					searchInit();
					$('div.gnb_sh_wrap').css("display", "block");
					$('div.util_menu').css("display", "none");
					$('div.gnb_sh_result').css("display", "block");

				}

				function searchOff() {

					$('div.util_menu').css("display", "block");
					$('div.gnb_sh_wrap').css("display", "none");

				}

				function showTab() {

					$('div.gnb_sh_result').css("display", "block");

				}

				// 쿠키 생성
				function setCookie(cName, cValue, cDay) {
					var expire = new Date();
					expire.setDate(expire.getDate() + cDay);
					cookies = cName + '=' + escape(cValue) + '; path=/ ';
					if (typeof cDay != 'undefined')
						cookies += ';expires=' + expire.toGMTString() + ';';
					document.cookie = cookies;
				}
				//쿠키 생성 (지정날짜 제거)
				function setLimitCookie(cName, cValue, cLimitDay) {
					var expire = null;
					cookies = cName + '=' + escape(cValue) + '; path=/ ';

					if (cLimitDay && cLimitDay != ""
							&& cLimitDay.indexOf('/') != -1) {
						var limitFullYear = parseInt(cLimitDay.split('/')[0],
								10);
						var limitMonth = parseInt(cLimitDay.split('/')[1], 10) - 1; //0부터 1월
						var limitDate = parseInt(cLimitDay.split('/')[2], 10)
						expire = new Date(limitFullYear, limitMonth, limitDate);

						cookies += ';expires=' + expire.toGMTString() + ';';
					}
					document.cookie = cookies;
				}
				//쿠키 생성 (00시 제거)
				function setOneDayCookie(cName, cValue, cDay) {
					var currentDate = new Date();
					var expire = new Date(currentDate.getFullYear(),
							currentDate.getMonth(), currentDate.getDate()
									+ cDay, 0, 0, 0);
					cookies = cName + '=' + escape(cValue) + '; path=/ ';
					if (typeof cDay != 'undefined')
						cookies += ';expires=' + expire.toGMTString() + ';';
					document.cookie = cookies;
				}

				// 쿠키 가져오기
				function getCookie(cName) {
					cName = cName + '=';
					var cookieData = document.cookie;
					var start = cookieData.indexOf(cName);
					var cValue = '';
					if (start != -1) {
						start += cName.length;
						var end = cookieData.indexOf(';', start);
						if (end == -1)
							end = cookieData.length;
						cValue = cookieData.substring(start, end);
					}
					return unescape(cValue);
				}

				//쿠키 삭제
				function deletecookie(name) {
					var today = new Date();
					var path = "/ko/";
					var lastIndex = path.lastIndexOf('/');
					path = path.substring(0, lastIndex);
					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function deletecookiePath(name, path) {
					var today = new Date();

					if (path == "") {
						path = "/";
					}

					today.setDate(today.getDate() + -1);
					document.cookie = name + "=; path=" + path + "; expires="
							+ today.toGMTString() + ";";
				}

				function searchInit() {
					var settingCookie = getCookie("searchSaveYN");
					if (settingCookie == "on") {

						$('#searchSaveYN').text("끄기");
						$('#searchSaveYNfame').text("끄기");

					} else {
						$('#searchSaveYN').text("저장");
						$('#searchSaveYNfame').text("저장");

					}
				}

				function ie8AlertHide() {
					setCookie("ie8AlertHideYN", "on", 365);
					$("#alertIE8").hide();
				}

				$(document)
						.ready(
								function() {

									$('.gnb_nav.hscene1906 .cate_m .hscene')
											.mouseover(
													function() {
														// 툴팁
														$(
																'.gnb_nav.hscene1906 .cate_m li .delch_box')
																.addClass('on');
													});
									$('.gnb_nav.hscene1906 .cate_m .hscene')
											.mouseout(
													function() {
														$(
																'.gnb_nav.hscene1906 .cate_m li .delch_box')
																.removeClass(
																		'on');
													});

									var todayDate = new Date();
									var startDate = new Date(
											'2018/05/29 00:00:01'), endDate = new Date(
											'2018/06/17 23:59:59');
									if (todayDate.getTime() >= startDate
											.getTime()
											&& todayDate.getTime() <= endDate
													.getTime()) {
										$("#athome_header_event").show();
									} else {
										$("#athome_header_org").show();
									}

									//IE8버젼 체크
									if (getCookie("ie8AlertHideYN") != "on") {
										if (navigator.appVersion
												.indexOf('MSIE 8.0') >= 0
												|| navigator.appVersion
														.indexOf('Trident/4.0') >= 0) {
											var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
											html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
											html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
											html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
											$(".loading_bar").before(
													"<div align='center' id='alertIE8'>"
															+ html + "</div>");
										}
									}

									settingCookie = getCookie("searchSaveYN");

									if (settingCookie == "") {
										setCookie("searchSaveYN", "on", 365);
									}

									$('#gnbsearch')
											.click(
													function() {
														var searchwords = $(
																'#gnbsearchwords')
																.val();
														searchwords = searchwords
																.replace(
																		/(^\s*)|(\s*$)/g,
																		"");

														if (searchwords != "") {
															location.href = "/ko/hssearch?searchwords="
																	+ searchwords;
														} else {
															$('#gnbsearchwords')
																	.val("");
															alert("검색어를 입력해주세요.");
														}
													});

									$('.btn_svclose')
											.click(
													function() {
														settingCookie = getCookie("searchSaveYN");
														if ($(this).children(
																'span').text() == "끄기") {
															$(this).children(
																	'span')
																	.text("저장");
														} else {
															$(this).children(
																	'span')
																	.text("끄기");
														}
														if (settingCookie == "off") {
															$(this)
																	.children(
																			'span')
																	.attr(
																			"save",
																			"on");
															setCookie(
																	"searchSaveYN",
																	"on", 365);
														} else {
															$(this)
																	.children(
																			'span')
																	.attr(
																			"save",
																			"off");
															setCookie(
																	"searchSaveYN",
																	"off", 365);
														}

													});
									$('.favBtn')
											.click(
													function() {

														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;

													});
									$('.newlyBtn')
											.click(
													function() {

														words = $(this).text();
														location.href = "/ko/hssearch?searchwords="
																+ words;

													});

									var sw1 = decodeURIComponent(escape(getCookie("HS_Seachwords1")));
									var sw2 = decodeURIComponent(escape(getCookie("HS_Seachwords2")));
									var sw3 = decodeURIComponent(escape(getCookie("HS_Seachwords3")));
									var sw4 = decodeURIComponent(escape(getCookie("HS_Seachwords4")));
									var sw5 = decodeURIComponent(escape(getCookie("HS_Seachwords5")));

									var sw1_date = sw1 != "" ? sw1.split("_")[1]
											: "";
									var sw2_date = sw2 != "" ? sw2.split("_")[1]
											: "";
									var sw3_date = sw3 != "" ? sw3.split("_")[1]
											: "";
									var sw4_date = sw4 != "" ? sw4.split("_")[1]
											: "";
									var sw5_date = sw5 != "" ? sw5.split("_")[1]
											: "";

									var arr = [ sw1, sw2, sw3, sw4, sw5 ];
									var arr_date = [ sw1_date, sw2_date,
											sw3_date, sw4_date, sw5_date ];

									arr_date.sort(compStringReverse);

									for (var i = 0; i < arr_date.length; i++) {
										for (var j = 0; j < arr.length; j++) {
											if (arr_date[i] != "") {
												if (arr[j].indexOf(arr_date[i]) > 0) {
													$("#searchWord" + (i + 1))
															.text(
																	arr[j]
																			.split("_")[0]);
													$('.searchWord' + (i + 1))
															.css("display",
																	"block");

													$("#searchWord" + (i + 1))
															.next()
															.attr(
																	"onclick",
																	"deletecookie('HS_Seachwords"
																			+ (j + 1)
																			+ "')");
												}
											}
										}

										if (arr_date[i] == "") {
											$("#searchWord" + (i + 1)).text("");
										}
									}

									//자동로그인

									var ssoUrl = "https://sso.h-point.co.kr:29865"
											+ "/co/setSsoReqJSONP.hd";
									gfnSsoReqAjax(ssoUrl, hpAutoLogin);

									//vip 채팅 서비스
									if ("" != "") {
										var pag = "main201903Page";

										var chkPag = [ "svCenterMainPage",
												"noticePage",
												"manToManInquiryPage",
												"faqPage", "mendingPage",
												"vocProvisionPage",
												"vocInfoFormPage",
												"memberJoinGuidePage",
												"theClubInfoPage",
												"memberBenefitGuidePage",
												"pointGuidePage",
												"couponGuidePage",
												"paymentGuidePage",
												"asGuidePage" ];

										var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
										var timePassCheck = "N"; // 평일 0900~1800 체크

										if ("" == "VVIP"
												|| ("" == "THESTAR" || "" == "STAR")) {
											vipPassCheck = "Y";
										}

										if (vipPassCheck == "N" && "" == "PASS") {
											// MANIA 이하 등급, 평일 체크 
											// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
											var hour = new Date()
													.format("HHmm");
											var weekName = new Date()
													.format("E");
											if (weekName != "일요일"
													&& weekName != "토요일"
													&& hour >= "0900"
													&& hour <= "1800") {
												$
														.ajax({
															type : "POST",
															url : "/ko/chatbot/chkholiday",
															data : {
																"CSRFToken" : "38dac78e-999f-4177-895a-5a388435491e"
															},
															async : false,
															success : function(
																	result) {
																if (result == true) {
																	timePassCheck = "Y";
																}
															},
															error : function(
																	request,
																	statuss,
																	error) {
																;
															}
														});
											}
										}

										if ((vipPassCheck == "Y" || timePassCheck == "Y")
												&& "main201903Page" == "main201903Page") {
											$('#chatbotMain').show();
										} else {
											$('#chatbotMain').hide();
										}

										if (chkPag.indexOf(pag) > -1) {
											if (vipPassCheck == "Y"
													|| timePassCheck == "Y") {
												$('#chatbot').show();
											} else {
												$('#chatbot').hide();
											}
										} else {
											$('#chatbot').hide();
										}
									}

									//athome
									if ("" != "") {
										// #1067 - 메인 개편

										$('.ico.athome').mouseenter(function() {
											$('.athome_info').show();
										});
										$('.athome_header').mouseleave(
												function() {
													$('.athome_info').hide();
												});
									}

									// ##1141 - 카테고리 개편
									outletGnbNav(); //아울렛 gnb

								});

				function athomeBlink() {
					$('.ico.athome').css('opacity', '0');
					setTimeout(function() {
						$('.ico.athome').css('opacity', '1');
					}, 500);
				}

				function athomeEventBlink() {
					$('.athome_event').css('opacity', '0');
					setTimeout(function() {
						$('.athome_event').css('opacity', '1');
					}, 500);
				}

				function hpAutoLogin(data) {
					//console.log("data.succYn:"+data.succYn);
					if (data.succYn == "Y") {
						$.ajax({
							type : "GET",
							url : "/ko/hpoint/simpleJoinMember",
							data : {
								"mcustNo" : data.mcustNo
							},
							success : function(data) {
								if (data.resultCode == "L") {
									$("#hcid").val(data.uid);
									$("#autologinForm").submit();
								}
							},
							error : function(e) {
							}
						});
					}
				}

				function compStringReverse(a, b) {
					if (a > b)
						return -1;
					if (b > a)
						return 1;
					return 0;
				}

				function EnterSearchHeader() {

					var searchwords = $('#gnbsearchwords').val();
					searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

					if (searchwords != "") {
						location.href = "/ko/hssearch?searchwords="
								+ searchwords;
					} else {
						$('#gnbsearchwords').val("");
						alert("검색어를 입력해주세요.");
					}

				}

				function language(isoCode) {
					if (location.href.indexOf("/handsome/") > -1) {

						$.ajax({
							type : "post",
							url : "/ko/_s/language" + "?" + "code=" + isoCode,
							dataType : "json",
							error : function(request, status, error) {
								console.log("code:" + request.status + "\n"
										+ "message:" + request.responseText
										+ "\n" + "error:" + error);
							},
							success : function(result) {
								location.href = "/ko/";
							}
						});

					} else {
						location.href = "/" + isoCode;
					}
				}

				function getCSRFToken() {
					return "CSRFToken="
							+ $("#CSRFForm [name='CSRFToken']").first().val();
				}

				function setLogout() {
					deletecookie("UID");
					deletecookie("criteoEmail");
					deletecookie("memberGb");
					location.href = "/member/logout";
				}

				//START OF 메인 검색창////////////////////////
				// #1067 - 201803 메인 개편
				$(function() {

					getNotLoginMyKeyWord($("#query").val(), 10);

					/* 
					        // 내가 찾은 검색어(비로그인 상태) set, get in DB
					        getNotLoginMyKeyWord($("#query").val(), 10);           
					 */

					if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
						$("#searchBox").on("keypress", function(event) {
							var keyCode = event.which || event.keyCode;
						});
					}

					$('#query')
							.click(
									function() {
										// 스타일 서치 아이템   
										doStyleItem();
										$('.search_box_wrap')
												.click(
														function() {
															if (!$(
																	'.search_box_wrap')
																	.hasClass(
																			'on')) {
																var dataHeight = $(
																		'.data_react')
																		.height();
																$(
																		"#transparent_mask")
																		.show();

																GA_Event(
																		'공통',
																		'유틸_메뉴',
																		'검색');
																$(
																		'.search_box_wrap')
																		.stop()
																		.animate(
																				{
																					width : '406px',
																					height : '+= dataHeight +"px"',
																					"max-height" : "430px",
																					"opacity" : 1
																				},
																				'fast');

																$(
																		'.search_box_wrap')
																		.addClass(
																				'on');
																$(
																		'.btn_search_tab')
																		.stop()
																		.show();

																$('.data_react')
																		.stop()
																		.show();

																$(
																		'#styleSearchSlider')
																		.hide();
																$(
																		'.search_box .search')
																		.stop()
																		.fadeIn(
																				'fast');

																//검색창 텝 >> style search slider
																$(document)
																		.find(
																				'#styleSearchSlider')
																		.flexslider(
																				{
																					animation : "slide",
																					slideshow : false,
																					directionNav : true,
																					after : function(
																							slider) {
																						$(
																								"#styleSearchSlider .slides li")
																								.not(
																										".clone")
																								.each(
																										function(
																												idx) {
																											if ($(
																													this)
																													.hasClass(
																															"flex-active-slide")) {
																												$(
																														".ss_txt_list li a")
																														.removeClass(
																																"on");
																												$(
																														".ss_txt_list li:eq("
																																+ idx
																																+ ") a")
																														.addClass(
																																'on');
																											}
																										});
																					}
																				});
																var styleTotal = $(
																		"#styleSearchSlider .slides li")
																		.size();
																if (styleTotal <= 1) {
																	$(
																			"#styleSearchSlider .flex-direction-nav")
																			.hide();
																}

																//keyup 자동완성 리스트

																//keyup 자동완성 리스트
																$('#query')
																		.keyup(
																				function(
																						e) {
																					if (!$(
																							'#query')
																							.val() == "") {
																						$(
																								'.search_tab')
																								.hide();

																						$(
																								'.search_box_wrap')
																								.stop()
																								.animate(
																										{
																											width : '477px'
																										},
																										'fast',
																										function() {
																											$(
																													'.search_autocomplete')
																													.show();
																										});
																						$(
																								'.search_box_wrap.on .search_box input[type="search"]')
																								.stop()
																								.animate(
																										{
																											width : '461px'
																										},
																										'fast');

																					} else
																					/*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
																					                                                   var atctxtHeight = $(".autocomplete_txt").height();
																					                                                   if(atcRightHeight < atctxtHeight){
																					                                                       $(".autocomplete_right").height(atctxtHeight);
																					                                                   } */
																					{
																						$(
																								'.search_autocomplete')
																								.hide();
																						$(
																								'.search_tab')
																								.show();

																						$(
																								'.search_box_wrap')
																								.stop()
																								.animate(
																										{
																											width : '406px'
																										});
																						$(
																								'.search_box_wrap.on .search_box input[type="search"]')
																								.stop()
																								.animate(
																										{
																											width : '390px'
																										});

																					}
																					$(
																							'.autocomplete_txt li a')
																							.each(
																									function() {
																										if (!$(
																												this)
																												.hasClass(
																														'brand_main')) {
																											$(
																													this)
																													.html(
																															$(
																																	this)
																																	.html()
																																	.replace(
																																			"<strong>",
																																			""));
																											$(
																													this)
																													.html(
																															$(
																																	this)
																																	.html()
																																	.replace(
																																			"</strong>",
																																			""));

																											if ($(
																													this)
																													.html()
																													.indexOf(
																															$(
																																	'#searchBox')
																																	.val()) > -1) {
																												$(
																														this)
																														.html(
																																$(
																																		this)
																																		.html()
																																		.replace(
																																				$(
																																						'#searchBox')
																																						.val(),
																																				"<strong>"
																																						+ $(
																																								'#searchBox')
																																								.val()
																																						+ "</strong>"));
																											}
																										}
																									});
																				});

																//검색창 click시 이미 value 값이 있을 때
																if (!$('#query')
																		.val() == "") {
																	$(
																			'.search_box_wrap')
																			.stop()
																			.animate(
																					{
																						width : '477px',
																						'opacity' : 1
																					},
																					'fast');
																	$(
																			'.search_box_wrap.on .search_box input[type="search"]')
																			.stop()
																			.animate(
																					{
																						width : '461px'
																					},
																					'fast');
																} else {
																	$(
																			'.search_box_wrap.on .search_box input[type="search"]')
																			.stop()
																			.animate(
																					{
																						width : '390px'
																					},
																					'fast');
																}

															}

															$(
																	'#styleSearchSlider')
																	.fadeIn();

															//close button
															$(
																	'.search_box a span.btn_close')
																	.on(
																			'click',
																			function() {

																				$(
																						'.search_box_wrap')
																						.stop()
																						.animate(
																								{
																									width : '30px',
																									height : '-= dataHeight +"px"',
																									"opacity" : 0
																								});

																				$(
																						'.data_react')
																						.stop()
																						.hide();
																				$(
																						'.btn_search_tab')
																						.stop()
																						.hide();
																				$(
																						'.search_box_wrap')
																						.removeClass(
																								'on');
																				$(
																						"#transparent_mask")
																						.hide();
																				$(
																						'.search_box .search')
																						.stop()
																						.fadeOut(
																								'fast');
																				if (!$(
																						'#query')
																						.val() == "") {
																					$(
																							'#query')
																							.val(
																									"");
																					$(
																							'.search_autocomplete')
																							.hide();
																					$(
																							'.search_tab')
																							.show();
																				}
																				return false;
																			});
														});
										$("#transparent_mask")
												.click(
														function() {
															if ($(
																	'.search_box_wrap')
																	.hasClass(
																			'on')) {

																$(
																		'.search_box_wrap')
																		.stop()
																		.animate(
																				{
																					width : '30px',
																					height : '-= dataHeight +"px"',
																					"opacity" : 0
																				});

																$('.data_react')
																		.stop()
																		.hide();
																$(
																		'.btn_search_tab')
																		.stop()
																		.hide();
																$(
																		'.search_box_wrap')
																		.removeClass(
																				'on');
																$(
																		"#transparent_mask")
																		.hide();
																$(
																		'.search_box .search')
																		.stop()
																		.fadeOut(
																				'fast');
															}
														});
										//검색창 텝
										$(document).on(
												'click',
												'.btn_search_tab a',
												function() {
													$(this).addClass('on');
													$(this).siblings()
															.removeClass('on');
													$('.data_react .s_tab')
															.stop().hide();
													var activeTab = $(this)
															.attr('rel');
													$('.' + activeTab).stop()
															.show();
												});
									});
				});

				//##1141 - 카테고리 개편
				function outletGnbNav() {
					//아울렛 gnb
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
							.on(
									'mouseenter focus',
									function() {
										$(
												'.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
												.removeClass('on');
										$(
												'.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
												.stop().hide();
										$(this).addClass('on');
										$(this).parent('li').children('div')
												.stop().css('display',
														'inline-block');
										var liWidthSumDep3 = 0;
										$(this)
												.next('div')
												.children('ul')
												.children('li')
												.each(
														function(idx3) {
															var liWidth = $(
																	this)
																	.width();
															var liLength = $(this).length;
															if (idx3 > 0) {
																liWidthSumDep3 = liWidthSumDep3
																		+ (liWidth + 25);
															}
															$(this).width(
																	liWidth);
														});
										$(this).next('div').children('ul')
												.width(liWidthSumDep3 - 10);
									});
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li')
							.on(
									'mouseleave blur',
									function() {
										$(
												'.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
												.removeClass('on');
										$(
												'.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
												.stop().hide();
									});
				}

				function GA_search() {

					var searchForm = document.search;
					var searchwords = escape(searchForm.query.value);

					GA_Event('검색', '직접입력', searchwords);
				}

				//]]>
			</script>
			<form id="autologinForm" name="autologinForm"
				action="/ko/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com" />
			</form>
			<div class="top_nav topnav1903">
				<div class="top_nav_wrap clearfix">
					<div class="brand_menu brand_menu1903">
						<ul class="clearfix">
							<!-- 선호 브랜드 없음 -->
							<li><span class="on"> <a href="/home">HOME</a>
							</span></li>
							<!-- 신미림 로그인 로그아웃 처리 -->
							<sec:authorize access="isAuthenticated()">
						 	<!-- 로그인 상태 -->
                                   <p class="brand_menu_guide_text">아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span style="margin-top:-1px; display:inline-block;">♥</span>해주세요</p>
							</sec:authorize>
							<sec:authorize access="isAnonymous()">
							 <!-- 비로그인 상태 -->
								<p class="brand_menu_guide_text">
						로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span style="margin-top: -1px; display: inline-block;">♥</span> 해주세요</p>
							</sec:authorize>
						</ul>
					</div>
					<div class="gnb_sh_wrap" style="display: none;">
						<!-- search box -->
						<div class="gnb_sh_box">
							<input type="text" class="input" id="gnbsearchwords"
								title="검색어 입력" value=""
								onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}" />
							<a href="javascript:void(0);" id="gnbsearch">검색</a>
						</div>
						<!-- //search box -->
						<!-- search result -->
						<div class="gnb_sh_result">
							<div class="tab">
								<a href="javascript:void(0);" class="menu on">최근검색어</a>
								<div class="result_list on">
									<div class="searchWord1" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord1"></a> <a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords1')">닫기</a>
									</div>
									<div class="searchWord2" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord2"></a> <a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords2')">닫기</a>
									</div>
									<div class="searchWord3" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord3"></a> <a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords3')">닫기</a>
									</div>
									<div class="searchWord4" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord4"></a> <a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords4')">닫기</a>
									</div>
									<div class="searchWord5" style="display: none;">
										<a href="javascript:void(0);" class="ml newlyBtn"
											id="searchWord5"></a> <a href="javascript:void(0);"
											class="close" onclick="deletecookie('HS_Seachwords5')">닫기</a>
									</div>
									<a href="javascript:void(0);" class="btn_svclose"> 검색어 <span
										id="searchSaveYN" save="on">끄기</span>
									</a> <a href="javascript:void(0);" class="btn_allclose on"
										onclick="searchOff()">닫기</a>
								</div>
								<a href="javascript:void(0);" class="menu">인기검색어</a>
								<div class="result_list">
									<div>
										<a href="javascript:void(0);" class="ml favBtn">jacket</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouse</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">stripe</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">ribbon</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<div>
										<a href="javascript:void(0);" class="ml favBtn">blouson</a>
										<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
									</div>
									<a href="javascript:void(0);" class="btn_svclose"> 검색어 <span
										id="searchSaveYNfame" save="on">끄기</span>
									</a> <a href="javascript:void(0);" class="btn_allclose"
										onclick="searchOff()">닫기</a>
								</div>
							</div>
						</div>
						<!-- //search result -->
					</div>
					<!-- 201705 search_box_wrap -->
					<div class="search_box_wrap sbw1803" id="searchBox">
						<form name="search" id="search" action="/ko/hssearch/searchCount"
							method="post" onsubmit="return false;">
							<input type="hidden" name="CSRFToken"
								value="38dac78e-999f-4177-895a-5a388435491e" /> <input
								type="hidden" name="searchwords" value="" /> <input
								type="hidden" name="startCount" value=""> <input
								type="hidden" name="mode" value=""> <input type="hidden"
								name="sort" value=""> <input type="hidden"
								name="collection" value=""> <input type="hidden"
								name="range" value=""> <input type="hidden"
								name="startDate" value=""> <input type="hidden"
								name="endDate" value=""> <input type="hidden"
								name="searchField" value=""> <input type="hidden"
								name="reQuery" /> <input type="hidden" id="prefixQuery"
								value="" /> <input type="hidden" id="identity" name="identity"
								value=""> <input type="hidden" id="realQuery"
								name="realQuery" value="" /> <input type="hidden"
								id="loginState" value="loginOff" /> <input type="hidden"
								id="athomeInfo" value="" /> <input type="hidden"
								id="selectedLang" name="selectedLang" value="product_ko" /> <input
								type="hidden" id="lang" name="lang" value="ko" /> <input
								type="hidden" id="brandPageGubun" name="brandPageGubun"
								value="off">
							<!-- 브랜드 페이지 여부 -->
							<input type="hidden" id="brand_img" name="brand_img" value="">
							<input type="hidden" id="brand_url" name="brand_url" value="">
							<div class="search_box">
								<label for="query" class="hidden">search</label> <input
									type="search" id="query" name="query" value=""
									onKeypress="javascript:pressCheck((event),this);"
									style="margin-top: 0.2px;" autocomplete="off"> <span
									class="placeholder"></span> <a href="javascript:void(0);">
									<span class="btn_close">닫기</span>
								</a> <a href="javascript:GA_search();doSearch();" class="search">
									<span class="ico">검색</span>
								</a>
							</div>
						</form>
						<!--검색박스 활성화 data_react -->
						<div class="data_react">
							<!-- tab 검색어 입력 전 -->
							<div class="search_tab">
								<div class="btn_search_tab" style="display: none;">
									<a href="javascript:void(0);" rel="recent_search"
										class="btn_recent_search on"
										onclick="GA_Event('검색','최근 검색어','클릭')">최근 검색어</a> <a
										href="javascript:void(0);" rel="style_search"
										class="btn_style_search" id="btn_style_search">Style
										Search</a> <a href="javascript:void(0);" rel="popular_search"
										class="btn_style_search" id="btn_top_search"
										style="display: none;" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
								</div>
								<!-- 최근 검색어 -->
								<div class="recent_search s_tab">
									<ul id="mykeyword"></ul>
								</div>
								<!-- style search -->
								<form id="searchStyle" name="searchStyle"
									action="/ko/hssearch/searchCount" method="post"
									onsubmit="return false;">
									<input type="hidden" name="query" value="" /> <input
										type="hidden" name="collection" value="" /> <input
										type="hidden" id="CSRFToken" name="CSRFToken"
										value="38dac78e-999f-4177-895a-5a388435491e" /> <input
										type="hidden" id="searchStyleYn" name="searchStyleYn"
										value="searchStyle" />
								</form>

								<div class="style_search s_tab" id="stylesearch_area">
									<p class="style_search_tlt">Style Search 2018</p>
									<div class="ss_txt_list">
										<ul class="style_search_arr" id="style_search_arr"></ul>
									</div>
									<div class="ss_img_list" id="styleSearchSlider">
										<ul class="slides">
											<li></li>
										</ul>
									</div>
								</div>

								<!-- style search 컨텐츠 하나일 때-->
								<!-- <div class="style_search s_tab">
                                	                            <div class="ss_txt_list">
                                	                                <p class="style_search_tlt">Style Search 2017 S/S</p>
                                	                                <ul id="style_search_arr">
                                	                               </ul>
                                	                            </div>
                                	                             <div class="ss_img_list" id="styleSearchSlider">
                                                                    <ul class="slides"><li></li></ul>
                                                                </div>
                                	                        </div> -->
								<!-- //style search 컨텐츠 하나일 때-->
								<div class="popular_search s_tab" id="topsearch_area"
									style="display: none;">
									<ol class="ol_popular1" id="topsearchLeft"></ol>
									<!-- 				                <ol class="ol_popular2" id="topsearchRight"> -->
									<!-- 	                            </ol> -->
								</div>
							</div>
							<!--// tab 검색어 입력 전 -->
							<!-- 검색어 입력 후 (검색어 자동완성) -->
							<div class="search_autocomplete">
								<div class="autocomplete_txt">
									<div id="brandView">
										<ul></ul>
									</div>
									<div id="ark" style="height: 170px;"></div>
								</div>
								<div class="autocomplete_right">
									<div class="category_brand">
										<p>카테고리/브랜드</p>
										<div class="brand">
											<p id="autocomplete_brand">브랜드</p>
										</div>
										<div class="category">
											<p id="autocomplete_category">카테고리</p>
										</div>
									</div>
									<div class="autocomplete_img">
										<p>
											<span> " <span id="autocomplete_query">{0}</span> "
											</span> 에 대한 주요 검색 결과
										</p>
										<!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
										<ul id="auto2"></ul>
									</div>
								</div>
							</div>
							<!--// 검색어 입력 후 (검색어 자동완성) -->
						</div>
						<!--//검색박스 활성화 data_react -->
					</div>
					<!--// 201705 search_box_wrap -->
					<div class="util_menu" style="display: block;">
						<ul class="clearfix">
							<!-- 신미림 로그인 로그아웃 처리 -->
						<sec:authorize access="isAuthenticated()">
							<li><a href="javascript:setLogout();" onclick="GA_Event('공통','헤더_메뉴','로그아웃')">로그아웃</a></li>
						</sec:authorize>
						<sec:authorize access="isAnonymous()">
							<li><a href="/member/login"
								 onclick="GA_Event('공통','헤더_메뉴','로그인')"> 로그인 <!-- 로그인 -->
							</a></li>
						</sec:authorize>
							<li class="header_dropmemu mypage"><a href="/mypage/mypage"
								class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
								<div class="list">
									<ul>
										<li><a href="/member/myorders"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')"> 주문조회 <!-- 주문조회 -->
										</a></li>
										<li><a href="/mypage/myGradeInfo"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')"> 나의회원등급 <!-- 온라인등급 -->
										</a></li>
										<li><a href="/mypage/voucher"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')"> 쿠폰조회 <!-- 쿠폰조회 -->
										</a></li>
										<li><a href="/mypage/mypoint"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')"> 마일리지조회 <!-- 포인트조회 -->
										</a></li>
										<li><a href="/mypage/myEGiftCard"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">
												e-Gift Card <!-- e-Gfit Card -->
										</a></li>
										<li><a href="/mypage/personInfomationChangePWCheck"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')"> 회원정보변경 <!-- 회원정보변경 -->
										</a></li>
										<li><a href="/svcenter/mantomaninquiry"
											onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')"> 온라인상담 <!-- 온라인 상담 -->
										</a></li>
									</ul>
								</div></li>

							<li>
								<div class="header_dropmemu lang_switch lang_1911">
									<a href="javascript:void(0);" class="btn"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE')">LANGUAGE</a>
									<div class="list"
										style="display: none; height: 87px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
										<ul>
											<li><a href="javascript:language('ko')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_한국어')">한국어</a></li>
											<li><a href="javascript:language('en')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_ENGLISH')">ENGLISH</a>
											</li>
											<li><a href="javascript:language('zh')"
												onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_中文')">中文</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- validation check message global -->
			<input type="hidden" id="validationCheckPwd"
				value="비밀번호를 재입력 하셔야 합니다." /> <input type="hidden"
				id="validationCheck" value="필수데이터가 입력되지 않았습니다." /> <input
				type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요." /> <input
				type="hidden" id="validationCheckMsg1" value="필수데이터가 입력되지 않았습니다." />
			<input type="hidden" id="validationCheckMsg2"
				value="동일문자를 3번 이상 사용할 수 없습니다." /> <input type="hidden"
				id="validationCheckMsg3"
				value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다." /> <input
				type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다." />
			<input type="hidden" id="validationCheckMsg5"
				value="이메일 아이디의 중복 확인이 필요합니다." /> <input type="hidden"
				id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다." /> <input
				type="hidden" id="deliveryOkMsg" value="확인" /> <input type="hidden"
				id="deliveryCancelMsg" value="취소" />

			<form id="chatbotForm"
				action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
				method="post" target="chatwindow">
				<input type="hidden" name="token" id="chatbot_token"> <input
					type="hidden" name="talkId" id="chatbot_talkId">
				<div>
					<input type="hidden" name="CSRFToken"
						value="38dac78e-999f-4177-895a-5a388435491e" />
				</div>
			</form>
			<!-- //headerWrap -->
			<div class="gnbwarp com clearfix">
				<h1 class="logo logo1903">
					<a href="/home">thehandsome.com</a>
				</h1>
				<div class="gnb_nav gnb_nav1903 hscene1906 hscene1910">
					<h2 class="invisible">주메뉴</h2>
					<ul class="cate_m cate_banner gnbul1" id="cate_m_main">
						<li><a href="javascript:void(0);" class="gnb_brand"
							onclick="GA_Event('공통','GNB','브랜드');"> 브랜드 <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<p class="gnbbr_txt">브랜드 명을 클릭하시면 해당 브랜드로 이동합니다.</p>
									<ul class="al_frt1">
										<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
										<li><strong>여성 브랜드</strong>
											<ul class="clearfix">
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="TIME"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"></label><a
													href='${pageContext.request.contextPath}/product/brandproductlist?bname=TIME&pageNo=1'>  TIME</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="MINE" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR02#2"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"></label> <a href='${pageContext.request.contextPath}/product/brandproductlist?bname=MINE&pageNo=1'>  MINE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="LANVIN COLLECTION"
													onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR19#3"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"></label> <a href='${pageContext.request.contextPath}/product/brandproductlist?bname=LANVIN COLLECTION&pageNo=1'>  LANVIN
														COLLECTION</a>
													</li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="SYSTEM" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR03#4"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"></label> <a
													href="/ko/b/br03"
													onclick="GA_Common('WE_commonBrand',$(this));">SYSTEM</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="SJSJ" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR04#5"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"></label> <a
													href="/ko/b/br04"
													onclick="GA_Common('WE_commonBrand',$(this));">SJSJ</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="the CASHMERE"
													onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR08#6"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"></label> <a
													href="/ko/b/br08"
													onclick="GA_Common('WE_commonBrand',$(this));">the
														CASHMERE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="CLUB MONACO"
													onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR44#7"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"></label> <a
													href="/ko/b/br44"
													onclick="GA_Common('WE_commonBrand',$(this));">CLUB
														MONACO</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="OBZEE" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR43#8"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"></label> <a
													href="/ko/b/br43"
													onclick="GA_Common('WE_commonBrand',$(this));">OBZEE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="LÄTT" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR31#9"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"></label> <a
													href="/ko/b/br31"
													onclick="GA_Common('WE_commonBrand',$(this));">LÄTT</a></li>
												<li class="oera"><input
													id="gnb_br_NEW_NORMAL_BRANDS_WE_BR63" name="gnb_br_ch"
													type="checkbox" class="checkboxEvent" title="LANVIN BLANC"
													onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR63#10"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR63"></label> <a
													href="/ko/b/br63"
													onclick="GA_Common('WE_commonBrand',$(this));"> LANVIN
														BLANC <i class="ico-new">new</i>
												</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="O'2nd" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR45#11"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"></label> <a
													href="/ko/b/br45"
													onclick="GA_Common('WE_commonBrand',$(this));">O'2nd</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="oera" onclick="GA_Common('WE_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_WE#BR61#12"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"></label> <a
													href="/ko/b/br61"
													onclick="GA_Common('WE_commonBrand',$(this));">oera</a></li>
											</ul></li>
										<li><strong>남성 브랜드</strong>
											<ul class="clearfix">
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="TIME HOMME"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR06#1"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"></label> <a
													href="/ko/b/br06"
													onclick="GA_Common('ME_commonBrand',$(this));">TIME
														HOMME</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="SYSTEM HOMME"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR07#2"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"></label> <a
													href="/ko/b/br07"
													onclick="GA_Common('ME_commonBrand',$(this));">SYSTEM
														HOMME</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="the CASHMERE"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR08#3"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"></label> <a
													href="/ko/b/br08"
													onclick="GA_Common('ME_commonBrand',$(this));">the
														CASHMERE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="CLUB MONACO"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR44#4"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"></label> <a
													href="/ko/b/br44"
													onclick="GA_Common('ME_commonBrand',$(this));">CLUB
														MONACO</a></li>
												<li class="oera"><input
													id="gnb_br_NEW_NORMAL_BRANDS_ME_BR63" name="gnb_br_ch"
													type="checkbox" class="checkboxEvent" title="LANVIN BLANC"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR63#5"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR63"></label> <a
													href="/ko/b/br63"
													onclick="GA_Common('ME_commonBrand',$(this));"> LANVIN
														BLANC <i class="ico-new">new</i>
												</a></li>
											</ul></li>
										<li><strong>편집 브랜드</strong>
											<ul class="clearfix">
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="TOM GREYHOUND"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR15#1"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"></label> <a
													href="/ko/b/br15"
													onclick="GA_Common('ED_commonBrand',$(this));">TOM
														GREYHOUND</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="FOURM THE STORE"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR35#2"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"></label> <a
													href="/ko/b/br35"
													onclick="GA_Common('ED_commonBrand',$(this));">FOURM
														THE STORE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="FOURM STUDIO"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR30#3"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"></label> <a
													href="/ko/b/br30"
													onclick="GA_Common('ED_commonBrand',$(this));">FOURM
														STUDIO</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="FOURM MEN'S LOUNGE"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR32#4"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"></label> <a
													href="/ko/b/br32"
													onclick="GA_Common('ED_commonBrand',$(this));">FOURM
														MEN'S LOUNGE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="MUE" onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR16#5"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"></label> <a
													href="/ko/b/br16"
													onclick="GA_Common('ED_commonBrand',$(this));">MUE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="H : SCENE"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR47#6"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"></label> <a
													href="/ko/b/br47"
													onclick="GA_Common('ED_commonBrand',$(this));">H :
														SCENE</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR62"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="Liquides Perfume Bar"
													onclick="GA_Common('ED_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ED#BR62#7"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ED_BR62"></label> <a
													href="/ko/b/br62"
													onclick="GA_Common('ED_commonBrand',$(this));">Liquides
														Perfume Bar</a></li>
											</ul></li>
										<li><strong>해외 브랜드</strong>
											<ul class="clearfix">
												<li class="oera"><input
													id="gnb_br_NEW_NORMAL_BRANDS_OS_BR64" name="gnb_br_ch"
													type="checkbox" class="checkboxEvent" title="OUR LEGACY"
													onclick="GA_Common('OS_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_OS#BR64#1"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_OS_BR64"></label> <a
													href="/ko/b/br64"
													onclick="GA_Common('OS_commonBrand',$(this));"> OUR
														LEGACY <i class="ico-new">new</i>
												</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="ROCHAS" onclick="GA_Common('OS_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_OS#BR37#2"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"></label> <a
													href="/ko/c/br37/br37"
													onclick="GA_Common('OS_commonBrand',$(this));">ROCHAS</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="3.1 Phillip Lim"
													onclick="GA_Common('OS_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_OS#BR41#3"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"></label> <a
													href="/ko/c/br41/br41"
													onclick="GA_Common('OS_commonBrand',$(this));">3.1
														Phillip Lim</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="LANVIN PARIS"
													onclick="GA_Common('OS_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_OS#BR20#4"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"></label> <a
													href="/ko/c/br20/br20"
													onclick="GA_Common('OS_commonBrand',$(this));">LANVIN
														PARIS</a></li>
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="BALLY" onclick="GA_Common('OS_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_OS#BR21#5"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"></label> <a
													href="/ko/c/br21/br21"
													onclick="GA_Common('OS_commonBrand',$(this));">BALLY</a></li>
											</ul></li>
										<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
									</ul>
									<p class="gnbbr_txt">로그인 후 좋아하는 브랜드를 ♥해주세요. '적용하기' 버튼을 클릭하면
										웹사이트 상단에 추가됩니다.</p>
									<br />
									<div class="br_button_wrap">
										<button type="button" name="button" class="btn_br_apply"
											onclick="applyCategory();GA_Event('공통_브랜드','적용','적용하기');">적용하기</button>
										<button type="button" name="button" class="btn_br_reset"
											onclick="resetCategory();GA_Event('공통_브랜드','적용','초기화하기');">초기화하기</button>
									</div>

								</div>
							</div></li>

						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=none&csmall=none&pageNo=1'>여성
							<span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<!-- 이거 해야됨! -->
										<li><a href="/ko/c/we"
											onclick="GA_Event('공통_카테고리','2DEPTH','여성_전체보기');"> 전체보기 <!-- 전체보기 -->
										</a></li>

										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=none&pageNo=1'>아우터</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=재킷&pageNo=1'>재킷</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=점퍼&pageNo=1'>점퍼</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=가디건/베스트&pageNo=1'>가디건/베스트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=트렌치 코트&pageNo=1'>트렌치코트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=코트&pageNo=1'>코트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=아우터&csmall=다운/패딩&pageNo=1'>다운/패딩</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=탑&csmall=none&pageNo=1'>탑</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=탑&csmall=티셔츠&pageNo=1'>티셔츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=탑&csmall=블라우스&pageNo=1'>블라우스</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=탑&csmall=셔츠&pageNo=1'>셔츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=탑&csmall=니트&pageNo=1'>니트</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=드레스&csmall=none&pageNo=1'>드레스</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=드레스&csmall=미니 드레스&pageNo=1'>미니 드레스</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=드레스&csmall=미디 드레스&pageNo=1'>미디 드레스</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=드레스&csmall=롱/맥시 드레스&pageNo=1'></a>롱/맥시 드레스</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=팬츠&csmall=none&pageNo=1'>팬츠</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=팬츠&csmall=캐주얼&pageNo=1'>캐주얼</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=팬츠&csmall=포멀&pageNo=1'>포멀</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=팬츠&csmall=데님&pageNo=1'>데님</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=팬츠&csmall=쇼츠&pageNo=1'>쇼츠</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=스커트&csmall=none&pageNo=1'>스커트</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=스커트&csmall=미니 스커트&pageNo=1'>미니 스커트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=스커트&csmall=펜슬 스커트&pageNo=1'>펜슬 스커트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=스커트&csmall=플레어 스커트&pageNo=1'>플레어 스커트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=여성&cmedium=스커트&csmall=롱/맥시 스커트&pageNo=1'>롱/맥시 스커트</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=none&csmall=none&pageNo=1'>
								남성 <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/me"
											onclick="GA_Event('공통_카테고리','2DEPTH','남성_전체보기');"> 전체보기 <!-- 전체보기 -->
										</a></li>

										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=none&pageNo=1'>아우터</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=재킷&pageNo=1'>재킷</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=점퍼&pageNo=1'>점퍼</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=가디건/베스트&pageNo=1'>가디건/베스트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=트렌치코트&pageNo=1'>트렌치코트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=코트&pageNo=1'>코트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=아우터&csmall=다운/패딩&pageNo=1'>다운/패딩</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=탑&csmall=none&pageNo=1'>탑</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=탑&csmall=티셔츠&pageNo=1'>티셔츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=탑&csmall=셔츠&pageNo=1'>셔츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=탑&csmall=니트&pageNo=1'>니트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=탑&csmall=스웨터&pageNo=1'>스웨터</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=none&pageNo=1'>팬츠</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=루즈/테이퍼드&pageNo=1'>루즈/테이퍼드</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=슬림/스트레이트&pageNo=1'>슬림/스트레이트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=조거/트랙&pageNo=1'>조거/트랙</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=데님&pageNo=1'>데님</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=팬츠&csmall=쇼츠&pageNo=1'>쇼츠</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=수트&csmall=none&pageNo=1'>수트</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=수트&csmall=드레스셔츠&pageNo=1'>드레스셔츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=수트&csmall=수트재킷&pageNo=1'>수트재킷</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=남성&cmedium=수트&csmall=수트셔츠&pageNo=1'>수트팬츠</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=none&csmall=none&pageNo=1'>
								잡화 <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<!-- 전체보기들 아직 안함 -->
										<li><a href="/ko/c/as"
											onclick="GA_Event('공통_카테고리','2DEPTH','잡화_전체보기');"> 전체보기 <!-- 전체보기 -->
										</a></li>
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=none&pageNo=1'>여성슈즈</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=부츠&pageNo=1'>부츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=로퍼/블로퍼&pageNo=1'>로퍼/블로퍼</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=스니커즈&pageNo=1'>스니커즈</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=플랫&pageNo=1'>플랫</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=힐/슬링백&pageNo=1'>힐/슬링백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=샌들/슬라이드&pageNo=1'>샌들/슬라이드</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성슈즈&csmall=기타 슈즈&pageNo=1'>기타 슈즈</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=none&pageNo=1'>남성슈즈</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=부츠&pageNo=1'>부츠</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=포멀슈즈&pageNo=1'>포멀슈즈</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=스니커즈&pageNo=1'>스니커즈</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=샌들/슬라이드&pageNo=1'>샌들/슬라이드</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성슈즈&csmall=기타 슈즈&pageNo=1'>기타 슈즈</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성백&csmall=none&pageNo=1'>여성백</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성백&csmall=토트백&pageNo=1'>토트백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성백&csmall=숄더/크로스바디백&pageNo=1'>숄더/크로스바디백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=여성백&csmall=기타 백&pageNo=1'>기타 백</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성백&csmall=none&pageNo=1'>남성백</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성백&csmall=토트백&pageNo=1'>토트백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성백&csmall=숄더/크로스바디백&pageNo=1'>숄더/크로스바디백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성백&csmall=클러치 백&pageNo=1'>클러치 백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=남성백&csmall=기타 백&pageNo=1'>기타 백</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=머플러/스카프&csmall=none&pageNo=1'>머플러/스카프</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=머플러/스카프&csmall=머플러&pageNo=1'>머플러</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=머플러/스카프&csmall=스카프&pageNo=1'>스카프</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=none&pageNo=1'>주얼리</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=이어링/커프&pageNo=1'>이어링/커프</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=목걸이&pageNo=1'>목걸이</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=팔찌&pageNo=1'>팔찌</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=반지&pageNo=1'>반지</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=주얼리&csmall=기타&pageNo=1'>기타
														주얼리</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=none&pageNo=1'>기타
												ACC</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=모자&pageNo=1'>모자</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=양말&pageNo=1'>양말</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=장갑&pageNo=1'>장갑</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=벨트&pageNo=1'>벨트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=지갑&pageNo=1'>지갑</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=헤어ACC&pageNo=1'>헤어ACC</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=테크ACC&pageNo=1'>테크ACC</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=잡화&cmedium=기타 ACC&csmall=기타소품&pageNo=1'>기타소품</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=none&csmall=none&pageNo=1'>
								골프 <i class="ico-new">new</i> <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/gf"
											onclick="GA_Event('공통_카테고리','2DEPTH','골프_전체보기');"> 전체보기 <!-- 전체보기 -->
										</a></li>
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=none&pageNo=1'>여성웨어</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=아우터&pageNo=1'>아우터</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=가디건/베스트&pageNo=1'>가디건/베스트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=탑&pageNo=1'>탑</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=스커트/원피스&pageNo=1'>스커트/원피스</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=여성웨어&csmall=팬츠&pageNo=1'>팬츠</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=남성웨어&csmall=none&pageNo=1'>남성웨어</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=남성웨어&csmall=아우터&pageNo=1'>아우터</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=남성웨어&csmall=베스트&pageNo=1'>베스트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=남성웨어&csmall=탑&pageNo=1'>탑</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=남성웨어&csmall=팬츠&pageNo=1'>팬츠</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=none&pageNo=1'>ACC</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=골프백&pageNo=1'>골프백</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=골프화&pageNo=1'>골프화</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=모자&pageNo=1'>모자</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=장갑&pageNo=1'>장갑</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=양말&pageNo=1'>양말</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=벨트&pageNo=1'>벨트</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=골프&cmedium=ACC&csmall=기타&pageNo=1'>기타</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=none&csmall=none&pageNo=1'>
								뷰티 <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<!-- 전체보기 안됨 -->
										<li><a href="/ko/c/be"
											onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_전체보기');"> 전체보기 <!-- 전체보기 -->
										</a></li>
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티0&cmedium=스킨케어&csmall=none&pageNo=1'>스킨케어</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=스킨케어&csmall=토너/에멀전/크림&pageNo=1'>토너/에멀전/크림</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=스킨케어&csmall=세럼/앰플/오일/밤&pageNo=1'>세럼/앰플/오일/밤</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=스킨케어&csmall=클렌징/스크럽/마스크&pageNo=1'>클렌징/스크럽/마스크</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=메이크업&csmall=none&pageNo=1'>메이크업</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=메이크업&csmall=페이스 메이크업&pageNo=1'>페이스
														메이크업</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=메이크업&csmall=립 메이크업&pageNo=1'>립
														메이크업</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=none&pageNo=1'>바디/헤어케어</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=핸드·바디로션/크림/오일&pageNo=1'>핸드·바디로션/크림/오일</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=핸드·바디워시/스크럽&pageNo=1'>핸드·바디워시/스크럽</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=샴푸/컨디셔너&pageNo=1'>샴푸/컨디셔너</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=트리트먼트/오일/스프레이&pageNo=1'>트리트먼트/오일/스프레이</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=바디/헤어케어&csmall=기타 바디/헤어케어&pageNo=1'>기타 바디/헤어케어</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=향수&csmall=none&pageNo=1'>향수</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=뷰티&cmedium=향수&csmall=향수&pageNo=1'>향수</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
						<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=none&csmall=none&pageNo=1'>
								라이프스타일 <span class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/ls"
											onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_전체보기');">
												전체보기 <!-- 전체보기 -->
										</a></li>
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=홈&csmall=none&pageNo=1'>홈</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=홈&csmall=패브릭&pageNo=1'>패브릭</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=홈&csmall=프래그런스&pageNo=1'>프래그런스</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=홈&csmall=데코레이션&pageNo=1'>데코레이션</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=홈&csmall=기타소품&pageNo=1'>기타소품</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=배스&csmall=none&pageNo=1'>배스</a>
											<ul class="clearfix">
												<li><a href="/ko/c/ls022/"
													onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_배스_욕실용품');">욕실용품</a>
												</li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=none&pageNo=1'>키친</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=그릇&pageNo=1'>그릇</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=보드/트레이&pageNo=1'>보드/트레이</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=커트러리&pageNo=1'>커트러리</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=커피/티&pageNo=1'>커피/티</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=패브릭/냅킨&pageNo=1'>패브릭/냅킨</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키친&csmall=기타소품&pageNo=1'>기타소품</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=데스크&csmall=none&pageNo=1'>데스크</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=데스크&csmall=문구&pageNo=1'>문구</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=데스크&csmall=책&pageNo=1'>책</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=데스크&csmall=기타소품&pageNo=1'>기타소품</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키즈&csmall=none&pageNo=1'>키즈</a>
											<ul class="clearfix">
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키즈&csmall=의류&pageNo=1'>의류</a></li>
												<li><a href='${pageContext.request.contextPath}/product/productlist?clarge=라이프스타일&cmedium=키즈&csmall=잡화&pageNo=1'>잡화</a></li>
											</ul></li>
									</ul>
									<div class="gnb_banner float_right"></div>
								</div>
							</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
					</ul>

					<ul class="cate_m cate_banner gnbul2" id="cate_m_main"
						style="float: right;">
						<li><a href="/ko/magazine/exhibitions"
							onclick="GA_Event('공통','GNB','기획전');"> 기획전 <!-- 기획전 -->
						</a></li>
						<li><a href="/ko/magazine/events"
							onclick="GA_Event('공통','GNB','이벤트');">이벤트</a></li>
						<!-- THE 매거진 수정 200330 -->
						<li><a href="/ko/magazine/submain" class="magazine1803"
							onclick="GA_Event('공통','GNB','매거진');"> 매거진 <!-- 매거진 --> <span
								class="arr">arrow</span>
						</a>
							<div class="sub_back">
								<div class="sub_menu clearfix newtmzbox">
									<ul class="the_maga_sublist">
										<li><a href="/ko/magazine/submain">전체보기</a>
											<ul>
												<li><a href="/ko/magazine/coverstory">커버스토리</a></li>
												<li><a href="/ko/magazine/weeklypick">위클리 픽</a></li>
												<li><a href="/ko/magazine/selection">셀렉션</a></li>
												<li><a href="/ko/magazine/styleguide">스타일 가이드</a></li>
												<li><a href="/ko/magazine/some">#SOME</a></li>
												<li><a href="/ko/magazine/news">뉴스 </a></li>
											</ul></li>
									</ul>
									<div class="img_themaga_sub">
										<a href="/ko/magazine/editorials/8806742841416"> <img
											class="amc_img"
											src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20221011_52054778728252265_ko.jpg"
											alt="" />
											<p>
												<strong>커버스토리</strong> <span>아우터로 완성한 톰 바이브</span>
											</p>
										</a> <a
											href="/magazine/newsDetailtemplatetype4?newsCode=8804154103580">
											<img class="amc_img"
											src="http://cdn.thehandsome.com/mobile/news/list/banner/20221011_52049783713360676_ko.jpg"
											alt="" />
											<p>
												<strong>뉴스</strong> <span>클럽모나코 X 배우 남지현 브이로그 공개</span>
											</p>
										</a> <a href="/ko/magazine/editorials/8806742808648"> <img
											class="amc_img"
											src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20221007_51715717836831438_ko.jpg"
											alt="" />
											<p>
												<strong>커버스토리</strong> <span>타임옴므가 마주할 겨울</span>
											</p>
										</a>
									</div>
								</div>
							</div></li>
						<!-- // THE 매거진 수정 200330 -->
						<!-- 20210319 편집샵 추가 -->
						<li><a href="/ko/ed/edMain"
							onclick="GA_Event('공통','GNB','편집샵');">편집샵</a></li>
						<!-- 20200710 룩북 추가 -->
						<li><a href="/ko/ou/outletMain"
							onclick="GA_Event('공통','GNB','아울렛');">아울렛*</a></li>
					</ul>
				</div>
				<!-- 첫번째 c:if -->

				<div id="transparent_mask"></div>
				<!-- 201803 util menu -->
				<div class="util_menu util_menu1803">
					<ul class="clearfix">
						<li><a href="javascript:void(0);"> <span class="ico_sh">search</span>
						</a></li>
						<li><a href="/mypage/myWish"
							onclick="GA_Event('공통','유틸_메뉴','위시리스트');"> <span
								class="ico wishlist">wish list</span> <span class="count">
									( <span id="wishlistCount">0</span> )
							</span>
						</a></li>
						<li><a href="/member/mycart"
							onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"> <span
								class="ico cart">장바구니</span> <span class="count"> ( <span
									id="cartCount">0</span> )
							</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- //201803 util menu -->
		</div>
	</div>