<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerMain.jsp"%>

<script type="text/javascript">

if(typeof kakaoPixel !== 'undefined'){
    var kakaoTrackId = '3482319208237780781'; //개발
    if(location.href.indexOf("www.thehandsome.com") > -1) kakaoTrackId = '7855119525940511046'; //운영
    kakaoPixel(kakaoTrackId).pageView();
    kakaoPixel(kakaoTrackId).viewContent({
        id: 'MN2C8WJC026WP'
    });
}
</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/handsome/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="/_ui/handsomemobile/js/swiper.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/resources/css/popup.css"
		media="all">

	<!-- *) 제품상세페이지 분석코드 -->
	<!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->
	<!-- Function and Variables Definition Block Start -->
	<script language="javascript" type="text/javascript">
var _JV="AMZ2013010701";//script Version
var _UD='undefined';var _UN='unknown';
function _IDV(a){return (typeof a!=_UD)?1:0}
var _CRL='http://'+'dgc17.acecounter.com:8080/';
var _GCD='AP6F40149814536';
if( document.URL.substring(0,8) == 'https://' ){ _CRL = 'https://dgc17.acecounter.com/logecgather/' ;};
if(!_IDV(_A_i)) var _A_i = new Image() ;if(!_IDV(_A_i0)) var _A_i0 = new Image() ;if(!_IDV(_A_i1)) var _A_i1 = new Image() ;if(!_IDV(_A_i2)) var _A_i2 = new Image() ;if(!_IDV(_A_i3)) var _A_i3 = new Image() ;if(!_IDV(_A_i4)) var _A_i4 = new Image() ;
function _RP(s,m){if(typeof s=='string'){if(m==1){return s.replace(/[#&^@,]/g,'');}else{return s.replace(/[#&^@]/g,'');} }else{return s;} };
function _RPS(a,b,c){var d=a.indexOf(b),e=b.length>0?c.length:1; while(a&&d>=0){a=a.substring(0,d)+c+a.substring(d+b.length);d=a.indexOf(b,d+e);}return a};
function AEC_F_D(pd,md,cnum){var i=0,amt=0,num=0;var cat='',nm='';num=cnum;md=md.toLowerCase();if(md=='b'||md=='i'||md=='o'){for(i=0;i<_A_pl.length;i++){if(_A_nl[i]=='' || _A_nl[i]==0 )_A_nl[i]='1';if(num==0 || num =='')num = '1';if(_A_pl[i]==pd){nm=_RP(_A_pn[i]);amt=(parseInt(_RP(_A_amt[i],1))/parseInt(_RP(_A_nl[i],1)))*num;cat=_RP(_A_ct[i]);var _A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+_RPS(escape(cat+'@'+nm+'@'+amt+'@'+num+'^&'),'+','%2B');break;};};if(_A_cart.length>0)_A_i.src=_A_cart+"rn="+String(new Date().getTime());setTimeout("",2000);};};
if(!_IDV(_A_pl)) var _A_pl = Array(1) ;
if(!_IDV(_A_nl)) var _A_nl = Array(1) ;
if(!_IDV(_A_ct)) var _A_ct = Array(1) ;
if(!_IDV(_A_pn)) var _A_pn = Array(1) ;
if(!_IDV(_A_amt)) var _A_amt = Array(1) ;
if(!_IDV(_pd)) var _pd = '' ;
if(!_IDV(_ct)) var _ct = '' ;
if(!_IDV(_amt)) var _amt = '' ;
</script>
	<!-- Function and Variables Definition Block End-->

	<!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->
	<!-- Data Allocation (Product_Detail) -->
	<script language="javascript">

_pd =_RP('캐시미어 더블 재킷');  
_ct =_RP('BR02'); 
_amt = _RP('1250000',1); 

_A_amt=Array('1250000'); 
_A_nl=Array('1'); 
_A_pl=Array('MN2C8WJC026WP_CM'); 
_A_pn=Array('캐시미어 더블 재킷'); 
_A_ct=Array('BR02'); </script>
	<!-- AceCounter eCommerce (Product_detail) v6.4 Start -->

	<!--  criteo 상품 페이지 트래커 START  -->
	<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
		async="true"></script>
	<script type="text/javascript">
    window.criteo_q = window.criteo_q || [];
    window.criteo_q.push(  
        { event: "setAccount", account: 24596 },
        
        { event: "setSiteType", type: "d" },
        
        //{ event: "viewItem", item: "MN2C8WJC026WP", requiresDOM: "yes"}
        { event: "viewItem", item: "MN2C8WJC026WP"}
        );
</script>
	<!--  criteo 상품 페이지 트래커 END -->

	<!-- Enliple Tracker Start -->
	<script type="text/javascript">
try{
	var ENP_VAR = {
		collect: {},
		conversion: { product: [] }
	};
	ENP_VAR.collect.productCode = 'MN2C8WJC026WP_CM';
	ENP_VAR.collect.productName = '캐시미어 더블 재킷';
	ENP_VAR.collect.price = '1250000';
	ENP_VAR.collect.dcPrice = '1250000';
	ENP_VAR.collect.soldOut = 'N';
	
    ENP_VAR.collect.imageUrl = 'http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_S01.jpg';
	    
	ENP_VAR.collect.topCategory = '여성';
	ENP_VAR.collect.firstSubCategory = '여성';
	ENP_VAR.collect.secondSubCategory = '아우터';
	ENP_VAR.collect.thirdSubCategory = '재킷';
	
	/* 간편 결제 시스템을 통한 전환.*/
	ENP_VAR.conversion.product.push({
		productCode : 'MN2C8WJC026WP_CM',
		productName : '캐시미어 더블 재킷',
		price : '1250000',
		dcPrice : '1250000',
		qty : '1',
		soldOut : 'N',
		
		imageUrl : 'http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_S01.jpg',
		    
		topCategory : '여성',
		firstSubCategory : '여성',
		secondSubCategory : '아우터',
		thirdSubCategory : '재킷'
	});
	
	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
	/* 상품수집 */
	enp('create', 'collect', 'thehandsome', { device: 'W' });
	/* 장바구니 버튼 타겟팅 (이용하지 않는 경우 삭제) */
	enp('create', 'cart', 'thehandsome', { device: 'W', btnSelector: '.cart1803' });
	/* 찜 버튼 타겟팅 (이용하지 않는 경우 삭제) */
	enp('create', 'wish', 'thehandsome', { device: 'W', btnSelector: '.wishlist1803' });
} catch(e) {
    console.log(e)
}
</script>
	<!-- Enliple Tracker End -->

	<script type="text/javascript">
//<![CDATA[

var intervalLoopCnt = 0;
var colorArray = [];
var sizeArray = [];
var fileIdx = 1;
var cartQuantity = {};
var chkLiquides = false;

$(document).ready(function(){
    if("BR02" == 'BR62') {
        chkLiquides = true;    
    }
    
    // start of Facebook Pixel Code
    if('ko' != 'zh'){
        window._fbq.push (['track', 'ViewContent',{'value':$("#productPrice").val(),'currency':'KRW', content_type: 'product',
            content_ids: 'MN2C8WJC026WP'}]);
    }
    // end of Facebook Pixel Code
    
    
    reScroll();
    bodyReSize();
    resizeEtcImage();
    
    //동영상 플레이
    videoFunction();
    videoCloseScroll();
    
    $(window).resize(function(){
        reScroll();
        bodyReSize();
        resizeEtcImage();
        btnPosition();
    });
    
    
    
    
    var testerChkCode = "MN2C8WJC026WP_CM";
    if(testerChkCode.indexOf("_") > -1) {
        testerChkCode = testerChkCode.split("_")[0];
    }
    
    if('ko' == 'ko' && testerChkCode == "101110026") {
      //오에라 특정상품일때만 체험단 하드코딩, 코드 : 상품코드 : 101110026
        /* 211101 체험단 리뷰 추가 S */
        var lis = $(".pop-tester-review .review_tab1_1807 .evaluation_view"),
        paging = $(".pop-tester-review .paging .num > a");
        $('.pop-tester-review .review_tab1_1807 .evaluation_view:gt(3)').hide();

        paging.on({
            click: function(){
                var idx =$(this).index(),
                start = idx * 4,
                end = start + 4;

                var $target = $(this);
                paging.removeClass('on');
                $target.addClass('on');

                lis.hide();
                lis.slice(start, end).show();
            }
        });
        
        testerReviewListMore();//상품평 더보기
        /* 211101 체험단 리뷰 추가 E */ 
    }
    
    
    //리뷰작성
    $("#customerReviewWrite").on("click", function(){
        
        //초기화
        reviewReset();
      
        //로그인이 되어 있는지 확인한다.
        
          //  goLogin("review");
          //미림 주석  return;
        
        
        if ( 'Y' == 'Y' ) {
            $.ajax({
                url     : '/review/reviewWriteBeforeVerify',
                type    : 'GET',
                datatype: 'json',
                data : { "productCode" : $('#productCode').val()// /review/reviewWriteBeforeVerify해당 url 이 호출될때 json타입으로 컨트롤러 보내줌 
                },
                success : function(data) {
                	var purchaseListCount = 0;
                	var la;
                	if('ko' == 'ko') {
        				purchaseListCount = data.orderProductReviewList.length + data.offlineProductReviewList.length;
        				//미림 임시 고정값
        				purchaseListCount = 1;
                    	if ( $('#tempProductId').val() == '' || $('#tempProductId').val() == null ) {
                        	if ( purchaseListCount == 0 ) {
                        		if(data.reviewWriteOnce == true) {
                        			la = new customLayerAlert('더한섬닷컴에서 주문하신 내역에 대한<br/>상품평은 이미 등록되어 있습니다.<br/><br/>오프라인에서 추가 구매하신 경우 1~2<br/>일 후 상품평 작성이 가능합니다.<br/>(1~2일 경과 후에도 상품평 작성이 불가<br/>한 경우 고객센터로 문의 부탁드립니다.)');
                        			return;
                        		} else {
                            		la = new customLayerAlert('해당 상품에 대한 주문 내역이 없습니다.<br/><br/>오프라인에서 구매하신 경우 1~2일 후<br/>상품평 작성이 가능합니다.<br/>(1~2일 경과 후에도 상품평 작성이 불가한<br/>경우 고객센터로 문의 부탁드립니다.)');
                            		return;
                        		}
                        	}
                        	$('#review_title').html('상품평 작성하기'); // 상품평 작성하기
                        	$('#reviewWriteSend').val('등록하기');
                    	} else {
                        	$('#review_title').html('상품평 수정하기');    // 상품평 수정하기
                        	$('#reviewWriteSend').val('수정하기');
                    	}
                    } else {
                    	purchaseListCount = data.orderProductReviewList.length;
	                    if ( $('#tempProductId').val() == '' || $('#tempProductId').val() == null ) {
	                        if ( 0 == Number(data.onlinePossibleReviewCnt) && 0 == Number(data.offlinePossibleReviewCnt) ) {
	                            la = new customLayerAlert('더한섬닷컴에서 주문하신 내역에 대한<br/>상품평은 이미 등록되어 있습니다.<br/><br/>오프라인에서 추가 구매하신 경우 1~2<br/>일 후 상품평 작성이 가능합니다.<br/>(1~2일 경과 후에도 상품평 작성이 불가<br/>한 경우 고객센터로 문의 부탁드립니다.)');
	                            return;
	                        }
	                        $('#review_title').html('상품평 작성하기'); // 상품평 작성하기
	                        $('#reviewWriteSend').val('등록하기');
	                    } else {
	                        $('#review_title').html('상품평 수정하기');    // 상품평 수정하기
	                        $('#reviewWriteSend').val('수정하기');
	                    }
                    }
                    
                	$("#height").val(data.height);
        			$("#enjoySize").val(data.enjoySize);
        			if(data.bodyType != null && data.bodyType != ""){
        				$('input[name="bodyType"]').each(function(index){
        					if(data.bodyType == $(this).val()){
        						$(this).prop('checked', true);
        					}else {
        						$(this).prop('checked', false);
        					}
        				});
        			}
        			
                    $('#photoAccumulationRightYn').val(data.photoAccumulationRightYn);
                    $('.slct_opt').remove();
                    $("#purchased_color_size").remove();
                    
                    if ( purchaseListCount > 0 ) {
                    	if('ko' == 'ko') {
	                        $('.select_options_wrap').hide(); // 색상, 사이즈 박스
	                        if ( $('#tempProductId').val() == '' || $('#tempProductId').val() == null ) {
		                        var productOptions = '' ;
		                        if ( purchaseListCount > 1 ) {
		                            $.each(data.orderProductReviewList, function(idx, productOption) {
		                                if ( idx == 0 ) {
// 		                                    productOptions += '<span class="slct_opt">('+productOption[1]+') ' + productOption[4] + '  /  ' + productOption[5] + '</span>';
		                                    productOptions += '<span class="slct_opt">구매 옵션을 선택해주세요.</span>';
		                                    productOptions += '<div class="transparent_mask1905">&nbsp;</div>';
		                                    productOptions += '<div class="opt_box1905">';
		                                    productOptions += '    <ul id="liOption">';
		                                    $('#orderNumber').val(productOption[1]);
		                                    $('#purchaseColor').val(productOption[3]);
		                                    $('#purchaseColorName').val(productOption[4]);
		                                    $('#purchaseSize').val(productOption[5]);
		                                    $('#purchaseProdYN').val('N');
		                                }
		                                if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
		                                    productOptions += '<li value="' + productOption[1] + '|' + productOption[3] + '|' + productOption[4] +'|' + productOption[5] + '||||ONLINE">('+productOption[1]+') ' + productOption[4] + '</li>';
		                                }else {
		                                    productOptions += '<li value="' + productOption[1] + '|' + productOption[3] + '|' + productOption[4] +'|' + productOption[5] + '||||ONLINE">('+productOption[1]+') ' + productOption[4] + '  /  ' + productOption[5] + '</li>';    
		                                }
		                                
		                            });
		                            $.each(data.offlineProductReviewList, function(idx, productOption) {
		                            	if(data.orderProductReviewList.length < 1) {
		                            		if ( idx == 0 ) {
// 			                                    productOptions += '<span class="slct_opt">('+productOption[7]+') ' + productOption[4] + '  /  ' + productOption[5] + '</span>';
			                                    productOptions += '<span class="slct_opt">구매 옵션을 선택해주세요.</span>';
			                                    productOptions += '<div class="transparent_mask1905">&nbsp;</div>';
			                                    productOptions += '<div class="opt_box1905">';
			                                    productOptions += '    <ul id="liOption">';
			                                    $('#orderNumber').val(productOption[1]);
			                                    $('#purchaseColor').val(productOption[3]);
			                                    $('#purchaseColorName').val(productOption[4]);
			                                    $('#purchaseSize').val(productOption[5]);
			                                    $('#offlineShpNm').val(productOption[7]);
			    								$('#offlineOrdDt').val(productOption[8]);
			    								$('#offlineShpCd').val(productOption[9]);
			                                    $('#purchaseProdYN').val('Y');
			                                }
		                            	}
		                            	
		                            	if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
		                            	    productOptions += '<li value="' + productOption[1] + '|' + productOption[3] + '|' + productOption[4] +'|' + productOption[5] + '|' + productOption[7] + '|' + productOption[8] + '|' + productOption[9] + '|OFFLINE">(' + productOption[7] + ') ' + productOption[4] + '</li>';
		                            	}else {
		                            	    productOptions += '<li value="' + productOption[1] + '|' + productOption[3] + '|' + productOption[4] +'|' + productOption[5] + '|' + productOption[7] + '|' + productOption[8] + '|' + productOption[9] + '|OFFLINE">(' + productOption[7] + ') ' + productOption[4] + '  /  ' + productOption[5] + '</li>';    
		                            	}
		    							
		    						});
		                            productOptions += '    </ul>';
		                            productOptions += '</div>';
		                            $("#productOption").html(productOptions);
		                            $("#productOption").show();
		                            
		                            $( "#liOption > li" ).click(function () {
		                                var selectVal = $(this).attr('value').split('|');
		                                var optionHtml = '';
		                                if(selectVal[7] == "ONLINE") {
		    								$('#orderNumber').val(selectVal[0]);
		    								$('#purchaseColor').val(selectVal[1]);
		    								$('#purchaseColorName').val(selectVal[2]);
		    								$('#purchaseSize').val(selectVal[3]);
		    								$('#purchaseProdYN').val('N');
		    								$("#offlineShpNm").val('');
		    								$("#offlineOrdDt").val('');
		    								$("#offlineShpCd").val('');
		    								optionHtml = '('+selectVal[0]+') ' + selectVal[2] + '  /  ' + selectVal[3] + '';
		    								
		    								if(chkLiquides) {  // 리퀴드(BR62)일경우 , SIZE영역 비노출
		    								    optionHtml = '('+selectVal[0]+') ' + selectVal[2];
		    								}
		    							} else {
		    								$('#orderNumber').val(selectVal[0]);
		    								$('#purchaseColor').val(selectVal[1]);
		    								$('#purchaseColorName').val(selectVal[2]);
		    								$('#purchaseSize').val(selectVal[3]);
		    								$('#offlineShpNm').val(selectVal[4]);
		    								$('#offlineOrdDt').val(selectVal[5]);
		    								$('#offlineShpCd').val(selectVal[6]);
		    								$('#purchaseProdYN').val('Y');
		    								optionHtml = '('+selectVal[4]+') ' + selectVal[2] + '  /  ' + selectVal[3] + '';
		    								
		    								if(chkLiquides) {  // 리퀴드(BR62)일경우 , SIZE영역 비노출
		    								    optionHtml = '('+selectVal[4]+') ' + selectVal[2];
		    								}
		    							}
		                                $('.slct_opt').html(optionHtml);
		                            });
		                        } else if  ( purchaseListCount == 1 ) {
		                        	if(data.orderProductReviewList.length > 0) {
			                            $.each(data.orderProductReviewList, function(idx, productOption) {
			                                if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
			                                    productOptions += '<span class="slct_opt">COLOR : ' + productOption[4] + '  /  더한섬닷컴</span>';			                                    
			                                }else {
			                                    productOptions += '<span class="slct_opt">COLOR : ' + productOption[4] + '  /  SIZE : ' + productOption[5] + ' /  더한섬닷컴</span>';
			                                }
			                                
			                                $('#orderNumber').val(productOption[1]);
			                                $('#purchaseColor').val(productOption[3]);
			                                $('#purchaseColorName').val(productOption[4]);
			                                $('#purchaseSize').val(productOption[5]);
			                                $('#purchaseProdYN').val('N');
			                            });
		                        	} else if(data.offlineProductReviewList.length > 0) {
		                        		$.each(data.offlineProductReviewList, function(idx, productOption) {
		                        		    if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
		                        		        productOptions += '<span class="slct_opt">COLOR : ' + productOption[4] + ' / ' + productOption[7] + '</span>';		                        		        
		                        		    }else {
		                        		        productOptions += '<span class="slct_opt">COLOR : ' + productOption[4] + '  /  SIZE : ' + productOption[5] + ' / ' + productOption[7] + '</span>';    
		                        		    }
			                                
			                                $('#orderNumber').val(productOption[1]);
			                                $('#purchaseColor').val(productOption[3]);
			                                $('#purchaseColorName').val(productOption[4]);
			                                $('#purchaseSize').val(productOption[5]);
			                                $('#offlineShpNm').val(productOption[7]);
		    								$('#offlineOrdDt').val(productOption[8]);
		    								$('#offlineShpCd').val(productOption[9]);
		    								$('#purchaseProdYN').val('Y');
			                            });
		                        	} else {
		                        		$('#purchaseProdYN').val('Y');
		                        	}
		                            $("#productOption").hide();
		                            $("#productOption").after(productOptions);
		                            $("#purchased_color_size").show();
		                        }
	                        }
                    	} else {
                    		if(data.orderProductReviewList.length > 1) {
                    			$('.select_options_wrap').hide(); // 색상, 사이즈 박스
                    			$.each(data.orderProductReviewList, function(idx, productOption) {
	                                if ( idx == 0 ) {
	                                    productOptions += '<span class="slct_opt">('+productOption[1]+') ' + productOption[4] + '  /  ' + productOption[5] + '</span>';
	                                    productOptions += '<div class="transparent_mask1905">&nbsp;</div>';
	                                    productOptions += '<div class="opt_box1905">';
	                                    productOptions += '    <ul id="liOption">';
	                                    $('#orderNumber').val(productOption[1]);
	                                    $('#purchaseColor').val(productOption[3]);
	                                    $('#purchaseColorName').val(productOption[4]);
	                                    $('#purchaseSize').val(productOption[5]);
	                                    $('#purchaseProdYN').val('N');
	                                }
	                                productOptions += '<li value="' + productOption[1] + '|' + productOption[3] + '|' + productOption[4] +'|' + productOption[5] + '||||ONLINE">('+productOption[1]+') ' + productOption[4] + '  /  ' + productOption[5] + '</li>';
	                            });
                    		} else if(data.orderProductReviewList.length == 1) {
                    			$.each(data.orderProductReviewList, function(idx, productOption) {
	                                productOptions += '<span class="slct_opt">더한섬닷컴  /  COLOR : ' + productOption[4] + '  /  SIZE : ' + productOption[5] + '</span>';
	                                $('#orderNumber').val(productOption[1]);
	                                $('#purchaseColor').val(productOption[3]);
	                                $('#purchaseColorName').val(productOption[4]);
	                                $('#purchaseSize').val(productOption[5]);
	                                $('#purchaseProdYN').val('N');
	                            });
                    		}
                    	}
                    } else {
                        if('ko' != 'ko') {
                            if ( $('#tempProductId').val() == '' || $('#tempProductId').val() == null ) {
                                $('.select_options_wrap').show(); // 색상,사이즈 박스
                                //$('.select_checkbox').show();
                                $('#purchaseProdYN').val('Y');
//                                 $('.shoppurchase_check_wrap').show();
                            }
                            
                            $('#packopt').prop('checked', true);
                            $('#packopt').prop('readonly', true);
                            $('#packopt').on('click', function(e) {
                                e.preventDefault();
                                return;
                            });
                        }
                    }
                    
                    // 기존로직
                    $("#reviewFile").val("");
                    $("#textReviewFile").val("");
                    $("#reviewHeadline").val("");
                    
                    var review_color_name = $("#colorName").val();
                    $("#review_color_name").text(review_color_name);
                    
                    viewPopup("#customerReviewWriteDiv");
                    $("#customerReviewDiv").hide();
                    
                    
                        
                    
                   // $("#reviewProducImg").attr('src',imgSrc);
                    $("#reviewProducPrice").text($(".price").find("span:eq(0)").text());
                    $("#reviewProductBrandName").text($("#brandName").val());
                    $("#reviewProductProductName").text($("#productName").val());
                    
                    // 상품평 팝업 닫기시 초기화 용
                    $('#closeWriteChk').val('Y');
                    
                },
                error   : function() {
                    var la = new layerAlert("[Error] " + error);
                    return;
                }
            });
        } else {
        	$(".select_options_wrap").show();
            $(".btn_close").trigger("click");
            
            $("#reviewFile").val("");
            $("#textReviewFile").val("");
            $("#reviewHeadline").val("");
            
            var prodCode = $("#productCode").val();
            var prodSize = "";
            if(prodCode.indexOf('_') > -1){
                var tmpPnt = prodCode.lastIndexOf('_');
                prodSize = prodCode.substring(tmpPnt+1,prodCode.length);
                prodCode = prodCode.substring(0,tmpPnt);
                if(prodCode.indexOf('_') > -1){
                    $("#review_color_name").text($("#colorName").val());
                    $("#review_size").text(prodSize);
                //  $("#purchased_color_size").css("display", "block"); 
                    if('' == 'review'){ // 주문조회에서 왔을 경우 미표시
                        $(".options_change").css("display", "none");    
                    }
                } else {
                    $(".review_header_wrapper").css("margin-top","16px");
                }
            }
            
            var review_color_name = $("#colorName").val();
            $("#review_color_name").text(review_color_name);
            
            viewPopup("#customerReviewWriteDiv");
            $("#customerReviewDiv").hide();
            
            var imgSrc = "";
            
                imgSrc = "http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_S01.jpg";
                
            
            $("#reviewProducImg").attr('src',imgSrc);
            $("#reviewProducPrice").text($(".price").find("span:eq(0)").text());
            $("#reviewProductBrandName").text($("#brandName").val());
            $("#reviewProductProductName").text($("#productName").val());
            
            //사이즈
            //170202
            /*
            var sizeHtml = "";
            $(".size_chip:first > li > a").each(function(idx){
                if(idx > 0){
                    sizeHtml += '<input class="ml20" id="reviewCheckSize'+idx+'" type="radio" name="realSize" value="'+$(this).text()+'" checked="checked"/>';
                    sizeHtml += '&nbsp;<label for="reviewCheckSize'+idx+'">'+$(this).text()+'</label>';
                }else{
                    sizeHtml += '<input id="reviewCheckSize'+idx+'" type="radio" name="realSize" value="'+$(this).text()+'"/>';
                    sizeHtml += '&nbsp;<label for="reviewCheckSize'+idx+'">'+$(this).text()+'</label>';             
                }
            });
            $("#reviewWriteSize").html(sizeHtml);
            */
            
            // 상품평 팝업 닫기시 초기화 용
            $('#closeWriteChk').val('Y');
        }
        
    });
    
    // 컬러칩 색상명
    $('.select_options_wrap .color_chip li a').click(function(){
    $('.select_options_wrap .cl_name').html($(this).attr('data-color'));
    });
    /* $('.select_options_wrap .color_chip li a').mouseleave(function(){
    $('.select_options_wrap .cl_name').html('');
    }); */
    
    $("#productQnAWrite").on("click", function(){
        //로그인이 되어 있는지 확인한다.
        	
        	// 박소은 주석
            // goLogin("productQnA");
            // return;
        
        
        $(".btn_close").trigger("click");
        var btnName = "등록하기";
        // 남아 있는 입력값 초기화
        $("#productQnaCode").val("");
        $("#inquiryTitle").val("");
        $("#inquiryContents").val("");
        $("#textQnAFile").val("");
        $("#qnaFile").val("");
        $("#smsMobileNo").val("");
        $("#inquiryMobileNo1 option:eq(0)").prop("selected", true);
        $("#inquiryMobileNo2").val("");
        $("#inquiryMobileNo3").val("");
        $("#inquirySmsNoticeYn").removeAttr("checked");
        $("#smsNoticeYN").val("N");
        $("#replyToEmail").val("");
        $("#inquiryEmailAddress").val("");
        $("#inquiryEmailDomain").val("");
        $("#inquiryEmailSel option:eq(0)").prop("selected", true);
        $("#securitySentenceYn").removeAttr('checked');
        $("#qnaWriteSend").val(btnName);
        viewPopup("#productQnAWriteDiv");
    });
    
    
    
    //파일 체크
    $(document).on('change', 'input[type=file]', function() {
        
        var file = null;
        var fileName = "";
        var fileSize = "";
        var maxSize = 10 * 1024 * 1024;

        if ($.browser.msie) {
            if($(this).val() == null || $(this).val() == ""){
                $("input[name=fileText]").val("");
                return;
            }
            fileSize = 10; 
            fileName = $(this).val().split(".");
        }else{
            
            file = $(this)[0].files[0];
            if(file == null){   
                $("input[name=fileText]").val("");
                return;
            }
            
            fileName = $(this)[0].files[0].name.split(".");
            fileSize = $(this)[0].files[0].size;    
        }
        
        var fileExtension = fileName[parseInt(fileName.length-1)].toUpperCase();
        
        if(fileExtension == 'JPG'|| fileExtension == 'JPEG' || fileExtension == 'GIF'|| fileExtension == 'PNG'){
                
        }else{
            $(this).val('');
            $("input[name=fileText]").val('');
            var la = new layerAlert('파일 확장자를 확인해 주세요.');
            la.confirmAction = function(){
                $("#productQnAWriteDiv").attr("tabindex", -1).focus();
            };
            return;
        }
        
        if(fileSize > maxSize){
            $(this).val('');
            $("input[name=fileText]").val('');
            var la = new layerAlert('10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.');
            la.confirmAction = function(){
                $("#productQnAWriteDiv").attr("tabindex", -1).focus();
            };
            return;
        }
        
        if($(this).attr("id").indexOf("reviewFile") > -1){
        	var liLen = $('#customerReviewWriteDiv .file_image_wrap2003 li').length;
        	
        	if(liLen < 5){
        		var fileLen = $('#customerReviewWriteDiv input[type=file]').length;
	        	var html = '';
	        	
		        	html += '<input type="file" name="reviewFile" id="reviewFile'+fileIdx+'" class="btn add_s" title="파일찾기">';
		        	html += '<label for="reviewFile'+fileIdx+'">';
		        	html += '<span id="uploadFile1" class="img_upload">파일찾기</span>';        	
		        	html += '</label>';
	        	
	        	$('#customerReviewWriteDiv .upload_btn label').eq(fileLen-1).hide();
	        	$('#customerReviewWriteDiv .upload_btn input[type=file]').eq(fileLen-1).hide();
	        	$("#customerReviewWriteDiv .upload_btn").append(html);
	        	
				var html = '';
				
					html += '<li class="file_image">';
		        	html += '<span>'+$(this)[0].files[0].name+'</span>';
		        	html += '<a href="javascript:void(0);" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
		        	html += '</li>';
	        	$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
	        	
	        	fileIdx++;
        	} else {
        		$(this).val("");
        		layerAlert("사진 등록은 5개까지 가능합니다.");
        	}
        } else {
        	$("input[name=fileText]").val($(this).val());
        }
        	
        
        $("#thFile").css("color", "black");
        $("#thFile").css("font-weight","normal");
    });
    
    
    //리뷰등록하기 버튼을 눌렀을시
    $("#reviewWriteSend").on('click', function(){
        
    	//리뷰 썼는지 안썼는지 
        if(!reviewWriteCheck()){
            return;
        }
        
        
            //goLogin("review"); 추후 로그인처리 미림주석
            //return;
        
        
        $("#reviewHeadline").val($("#reviewHeadline").val().trim());
        $("form[id=reviewForm] input[name=productCode]").val($("#productCode").val());

        uploadFilesubmit();

    });
    

    $("#reviewCancle").on('click', function(){
        
        $('#closeWriteChk').val('');

        var lc = new customLayerConfirm("취소하시겠습니까?", "확인", "취소");
        
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            viewPopup("#customerReviewDiv");
            $(".select_options_wrap").hide();
//             $(".options_change").show();
        };
        
    });
    
    $("#reviewCloseBtn").on('click', function() {
        $('#closeWriteChk').val('');

        var lc = new customLayerConfirm("취소하시겠습니까?", "확인", "취소");
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            viewPopup("#customerReviewDiv");
            $(".select_options_wrap").hide();
//             $(".options_change").show();
        };
    });
    
    $("#qnaWriteSend").on('click', function(){
        
        if(!qnawWriteCheck()){
            return;
        }
        
        
            goLogin("productQnA");
            return;
        
        
        $("#inquiryTitle").val($("#inquiryTitle").val().trim());
        $("#inquiryContents").val($("#inquiryContents").val().trim());
        
        if($("#inquirySmsNoticeYn").is(":checked")) {
        	$("#smsNoticeYN").val("Y");
        }
        
        $("#smsMobileNo").val($("#inquiryMobileNo1 option:selected").val() + "-" + $("#inquiryMobileNo2").val() + "-" + $("#inquiryMobileNo3").val());
        $("#replyToEmail").val($("#inquiryEmailAddress").val() + "@" + $("#inquiryEmailDomain").val());
        
        $("form[id=productQnAForm] input[name=productCode]").val($("#productCode").val());

        qnaFilesubmit();

    });
    

    $("#qnaCancle").on('click', function(){
        
        var lc = new layerConfirm("취소하시겠습니까?", "확인", "취소");
        
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            viewPopup("#productQnADiv");
        };
        
    });

    // 재입고 알림 신청 취소
    $("#rewareHousingCancel").on('click', function(){
        var lc = new customLayerConfirm("취소하시겠습니까?", "확인", "취소");
        
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
        };
    });
    
    // 재입고 알림 신청
    $("#rewareHousingApply").on('click', function(){
        var validLa;
        if($("#email_address").val() == "") {
            validLa = new customLayerAlert("이메일 주소를 확인해 주세요.");
            return;
        }
        
        if($("#email_domain").val() == "") {
            validLa = new customLayerAlert("도메인 주소를 확인해 주세요.");
            return;
        }
        
        var clc = new customLayerConfirm("재입고 알림을 신청하시겠습니까?", "확인", "취소");
        
        clc.confirmAction = function(){
            reqRewarehousingAlram();
        };
    });

    //상품상세 하단 최근,코디,추천 텝
    $("#productEctTab ul li").click(function(){
        
        $(this).addClass("on");
        $(this).parent("li").siblings("li").children("a").removeClass("on");
    
        var content = $('.productEtcDiv');
        content.css('display', 'none');
        i = $(this).index();
        content.eq(i).css('display', 'block');
        
        if($(this).find("a").text().indexOf("룩북") > -1){
            $("#lookbookListContent").show();
            lookBookSwiperSlide1912();//191212 추가1
        }else if($(this).find("a").text().indexOf("추천상품") > -1){ //추천상품
            $("#recommendItemsListContent").show();
        }else if($(this).find("a").text().indexOf("최근본상품") > -1){ //최근본 상품
            $("#newItemsListContent").show();
        }
        
        
    });
    
    $(document).on("click", ".prev" , function(){
        slidPrev();
    });
    $(document).on("click", ".next" ,  function(){
        slidNext();
    });
    
    $("body").on('click', function(){
        
        $("#cardBenefit, #popupDelivery, #sizeQuickReferenceLayer, #addMileageInfo").on('click', function(e){
            e.stopPropagation();
        });
        
        $("#cardBenefit").hide();
        $("#popupDelivery").hide();
        $("#sizeQuickReferenceLayer").hide();
        $("#addMileageInfo").hide();
    });
    
    /*매장수령 Start*/
    $("#storePickupCheck").on("click", function(){
        if($("#storePickupCheck").is(":checked") && ($("#fourpmCheck").is(":checked") || $("#athomeCheck").is(":checked") || $("#quickCheck").is(":checked"))){
            var la = new layerAlert('배송 옵션은 다중 선택이 불가 합니다.');
            la.confirmAction = function(){
                return;
            };
            return false;   
        }
        
        // 매장수령전용상품 체크
        if('false' == 'true' && 'ko' == 'ko'){
            $("#storePickupCheck").prop("checked", true);
            return;
        }
        
        if($("#storePickupCheck").is(":checked")) {
            //매장수령 재고 확인
            var code = "";
            
            $(".color_size_qty ul.color_chip > li").each(function(){
                if($(this).find(" > a").hasClass("on")){
                    code = $(this).attr("id");
                }
            });
            
            $(".size_chip li > a").each(function(){
               if($(this).hasClass("on")){
                   code = $(this).parent().attr("id");
               }
            });
            
            if($("#pickupList").val() != ""){
                setFourpmAthomeCode($("#pickupList").val(),code,"pickup");
                return false;
            }
            
            $.ajax({
                 url: '/ko/p/checkPickup',
                 type: "GET",
                 dataType:"json",
                 data: {"productCode":code},
                 async:false,
                 success: function(data){
                    if(data != ""){
                        setFourpmAthomeCode(data,code,"pickup");
                        $("#pickupList").val(data);
                        $("#storePickupCheck").prop("checked", false);
                        fn_popupStorePickUp();
                    }
                 },
                 error: function(xhr, Status, error) {
                    var la = new layerAlert(error);
                    la.confirmAction = function(){
                        return;
                    };
                 }
            });
        } else {
            tempSetOriginClass();
            $("#storePickupChoice").css("display", "none");
            $("#storeId").val("");
            $("#storePickupDate").val("");
            $("#pickupList").val("");
        }
        
        return false;
    });
    
    $('#storePickupSearchBtn').bind('click',function(){
        /* if($('#storePickupSearchWord').val()==''){
            return false;
        } */
        
        fn_getPopupStoreInfo();
    });

    $('#storePickupChoiceBtn').bind('click',function(){
        var selectChk = 0;
        $(':radio[name="sel_cp"]').each(function(index){
            if($(this).is(":checked")) {
                selectChk = 1;
                $("#storePickupCheck").checked = true;
                $("#storeId").val(storePickUpList[index].branchCode);
                $("#storePickupChoiceName").html(storePickUpList[index].branchName);
                $("#storePickupChoiceName").html(storePickUpList[index].branchName);
                $("#storePickupChoiceAddress").html(storePickUpList[index].branchAddress);
                $("#storePickupChoiceTelephone").html(storePickUpList[index].branchTelephone);
                
            }
        });
        
        if(selectChk == 0) {
            var la = new layerAlert('선택된 매장이 없습니다.');
            return false;
        }
        
        var pickupDateChk = false;
        var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
        $(dateBtn).each(function(){
            if($(this).prop("class") == "on") {
                var selectValue = "" + $(this).data("value");
                var selectValueConv = selectValue.substring(0,4) + "년 " + selectValue.substring(4,6) + "월 " + selectValue.substring(6,8) + "일";
                
                $("#storePickupDate").val(selectValue); // addToCart
                $("#storePickupChoiceDate").html(selectValueConv);
                pickupDateChk = true;
                return false;
            }
        });
        
        if(pickupDateChk == false) {
            var la = new layerAlert('수령신청일이 선택되지 않았습니다.');
            return false;
        }
        
        $("#storePickupCheck").prop("checked", true);       
        $("#storePickupChoice").css("display", "");
        hideProductLayer();
        $("#storePickupDiv").css("display", "none");
        
        if( parseInt(warehouseStockpile[$("#productCode").val()]) > 0 && parseInt(stockOnlineStockpile[$("#productCode").val()]) < $("#txtqty").val() ) {
            $("#txtqty").val(1);
            fn_sumPriceCal();
            
            if('false' == 'true' && 'ko' == 'ko'){
                $("#storePickupCheck").prop("checked", true);
            } else {
                $("#storePickupCheck").prop("checked", false);
            }
            
            $("#storePickupChoice").css("display", "none");
            $("#storeId").val("");
            $("#storePickupDate").val("");
            
            var la = new layerAlert('본 상품은 매장수령이 어려운 상품입니다.<br>매장수령 체크 해제 후 쇼핑백에 담아주세요.<br>일반 배송지로 받으시면, 주문 가능합니다.');
            return false;
        }
        
        if($("#pickupList").val() != ""){
            setFourpmAthomeCode($("#pickupList").val(),$("#productCode").val(),"pickup");
        }
        
        // 매장픽업전용상품인 경우 매장선택 후 바로 쇼핑백에 저장 한다.
        if('false' == 'true' && 'ko' == 'ko'){
            if($("#storePickupDiv").data("ordertype") === 'buynow'){
                addToCart(true);                
            }else{
                addToCart();                
            }
        }
    });

    $('#storePickupCloseBtn, #storePickupClose').bind('click',function(){
        tempSetOriginClass();
        $("#pickupList").val("");
        
        hideProductLayer();
        $("#storePickupDiv").css("display", "none");
    });

    $("#storePickupSearchWord").keypress(function( event ) {
        if ( event.which == 13 ) {
            event.preventDefault();
            $("#storePickupSearchBtn").click();
        }
    });
    /*매장수령 End*/
    
    $(document).on("click","#fourpmCheck , #athomeCheck, #quickCheck" ,function(){
        setFourmpmAthomeProcess(this.id);
    });
    
    $("#postalcode").on("change",function(){
        var tempShortstreet = $("#streetname").val();
        var shortstreet = tempShortstreet.split(" ");
        $("#deliveryStreetTitle").html('서비스 가능 지역');
        if( tempShortstreet != null && tempShortstreet != '') {
            $("#deliveryStreet").html('<span class="athome_adr">'+shortstreet[0]+' '+shortstreet[1]+' '+shortstreet[2]+'</span> 기준');
        }
    });
    
    $("#quickPostalcode").on("change",function(){
        var tempQuickShortstreet = $("#quickStreetname").val();
        var quickShortstreet = tempQuickShortstreet.split(" ");
        $("#quickDeliveryStreetTitle").html('서비스 가능 지역');
        if( tempQuickShortstreet != null && tempQuickShortstreet != '') {
            $("#quickDeliveryStreet").html('<span class="quick_adr">'+quickShortstreet[0]+' '+quickShortstreet[1]+' '+quickShortstreet[2]+'</span> 기준');
        }
    });
    
    //2018.07.18 장바구니개편 시작
    //수령매장 주소선택, 날짜선택
    $(document).on('click',':radio[name="sel_cp"]',function(){
        $('.receive_date_wrap1807').stop().hide();
        $(this).parents('tr').next('tr').stop().slideDown('fast');
        
        var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
        $(dateBtn).each(function(){
            $(this).removeClass('on');
        });
    });
    
    var dateBtn='.receive_date_wrap1807 .receive_date ul li a';
    $(document).on('click',dateBtn,function(){
        $(dateBtn).removeClass('on');
        $(this).addClass('on');
    });
    //2018.07.18 장바구니개편 끝
    
    //상품평 리스트 탭 클릭 
    $('#review_tab li').on('click',function(){
        $("#review_tab_active").val($(this).attr("id"));
        fn_popupCustomerReview(1,$("#review_tab_active").val());
    });
    
    //핏가이드
    var imgRl = ['FIRST','SECOND'];//핏가이드 탭구분
    $('.btn_real_fit').on('click',function(){//핏가이드 버튼 클릭
        fitGuidePopList(imgRl[0]);
    });
    realFitText();
    realFitPopup();
    $(".btn_close").on("click", function(){//팝업 닫기
        hideProductLayer();
        $(".popwrap").hide();
    });
    
    /* if(!$(".image_view3").hasClass("btn_video_play")) {
        $(".btn_real_fit").attr("style", "top:84px; opacity:1");
    } */
    
    // 구매옵션 변경 슬라이드
    $('.pop_cnt.options1811 .options_change').click(function(){
        $('.select_options_wrap').show(); // 색상,사이즈 박스
        $('.select_checkbox').show(); // 상품 매장구매 체크박스
        $('.options_change').hide(); // 변경하기 버튼
        $("#purchased_color_size").css("display", "none"); 
        $('#orderWriteChk').val('Y');
       // $('#purchaseProdYN').val('Y');
    });

    
    
    // 예약주문 토스트팝업 190507
    var toastFirstYn = $("#chkToastFirstYn").val();
    if(toastFirstYn != "Y" && "false" == "true") {
        toastPopupPreOrder();
        
        $("#chkToastFirstYn").val("Y");
    }
    
    mileageInfoView();
    
    $(document).on('click','.evaluation_write1905 .select_group',function(){//옵션선택박스 열기
        if(!$(this).hasClass('open')){
            // 주문내역 선택 클릭시 초기화
            $('.slct_opt').html('구매 옵션을 선택해주세요.');
            $('#orderNumber').val('');
            $('#purchaseColor').val('');
            $('#purchaseColorName').val('');
            $('#purchaseSize').val('');
            $('#purchaseProdYN').val('');
            $("#offlineShpNm").val('');
            $("#offlineOrdDt").val('');
            $("#offlineShpCd").val('');

            $('.opt_box1905').stop().slideDown('fast');
            $(this).addClass('open');
            $(this).find('.transparent_mask1905').stop().show('fast');
        }else{
            $('.opt_box1905').stop().slideUp('fast');
            $(this).removeClass('open');
            $(this).find('.transparent_mask1905').stop().hide('fast');
        }
    });
    
    $(document).on('mouseenter focus','.opt_box1905 li',function(){
        $(this).addClass('active');
    });
    
    $(document).on('mouseleave blur','.opt_box1905 li',function(){
        $(this).removeClass('active');
    });
    
    $('#reviewHeadline').on('keyup', function() {
		if($(this).val().length >= 200) {
			$(this).blur();
			var la = new layerAlert('상품평 내용은 20~200자 사이입니다.');
			return false;
		}
	});
    
    setEcommerceData("Detail");
	
	
	// 20220729 그루비 스크립트 추가
	sendGroobee();
	
});

var toastPopupPreOrderInit = "";
var toastPopupPreOrderAfter = "";
var toastPopupPreOrderStop = "";
function toastPopupPreOrder(){ // 예약주문 토스트팝업 190507
    $('.toast_popup_pre_order1905').stop().show();
    $('.toast_popup_pre_order1905 p').stop().show();
    $('.toast_popup_pre_order1905 .arr').stop().show();
    $('.toast_popup_pre_order1905 p').html('예약 주문이 가능한 옵션(컬러/사이즈)가 있습니다. <br />옵션 선택 후 배송 예정일을 확인해 주세요.');
    toastPopupPreOrderInit = setTimeout(function(){
    	$('.toast_popup_pre_order1905 p').stop().animate({'top':'-60px','opacity':1});
    },500);
    toastPopupPreOrderAfter = setTimeout(function(){
        $('.toast_popup_pre_order1905 p').stop().animate({'top':0,'opacity':0});
    },5000);
    toastPopupPreOrderStop = setTimeout(function(){
        $('.toast_popup_pre_order1905 p').stop().fadeOut();
    },6500);
}

function starCnt(){//상품평 별점 선택
$('.btn_star_score li a').on('click',function(){
    var idx=$(this).parent('li').index()+1;
    for(var i=1;i<6;i++){
        $('.write_star_score1807 .cmt_star .cmt_per').removeClass('star'+i);
    }
    $('.write_star_score1807 .cmt_star .cmt_per').addClass('star'+idx);
});
}

var reviewImgBxSlider = {};
$(function(){
	$('#customerReviewDiv .review_img_cont191216').each(function(idx191216){//상품평리스트(스타일라이브개선)
		if($(this).find('ul').children('li').length > 1){
			$(this).attr('id','reviewImg_'+idx191216);
		}
	});
//	reviewListMore();
//	mileageInfoView();
});
function reviewImg191216(idx191216){//스타일라이브 상품평연계 - 상품평이미지 슬라이드
	var reviewImgTotal = $("#reviewImg_"+idx191216+" .slides > li").length;
	var reviewImg191216 = $("#reviewImg_"+idx191216+" .slides").bxSlider({
			mode:"horizontal",
			speed:500,
			pager:true,
			moveSlides:1,
			minSlides:1,
			maxSlides:1,
			slideMargin:5,
			auto:false,
			autoHover:false,
			infiniteLoop:true,
			pagerCustom:'#reviewImg_'+idx191216+' .bx_pager191219',
			prevSelector:'#reviewImg_'+idx191216+' .prev',
			nextSelector:'#reviewImg_'+idx191216+' .next'
	});
	if(reviewImgTotal <= 1) {
			$('#reviewImg_'+idx191216+'.controls').hide();
	}
};

function testerReviewImg(idx191216) {//체험단 상품평(오에라만사용) - 이미지 슬라이드
    var reviewImgTotal = $("#testerReviewImg_"+idx191216+" .slides > li").length;
    var reviewImg191216 = $("#testerReviewImg_"+idx191216+" .slides").bxSlider({
        mode:"horizontal",
        speed:500,
        pager:true,
        moveSlides:1,
        minSlides:1,
        maxSlides:1,
        slideMargin:5,
        auto:false,
        autoHover:false,
        infiniteLoop:true,
        pagerCustom:'#testerReviewImg_'+idx191216+' .bx_pager191219',
        prevSelector:'#testerReviewImg_'+idx191216+' .prev',
        nextSelector:'#testerReviewImg_'+idx191216+' .next'
    });
    if(reviewImgTotal <= 1) {
        $('#testerReviewImg_'+idx191216+'.controls').hide();
    }
};
function reviewListMore(){//상품평 더보기
$('#customerReviewDiv .review_more_1807 a').on('click',function(){
    if(!$(this).parents('.evaluation_view').hasClass('on')){
        $(this).parents('.evaluation_view').addClass('on');
        if($(this).parents('.evaluation_view').find('.review_img_cont191216').find('ul').children('li').length > 1){
			var thisId = $(this).parents('.evaluation_view').find('.review_img_cont191216').attr('id');
			var idx191216 = thisId.replace(/[^0-9]/g,'');
			if(!$(this).parents('.evaluation_view').find('.review_img_cont191216').children('div').hasClass('bx-wrapper')){
			    reviewImg191216(idx191216);
			}
		}
    }else{
        $(this).parents('.evaluation_view').removeClass('on');
    }
});
};

function testerReviewListMore(){//체험단 상품평 더보기
    $('#testerReviewDiv .review_more_1807 a').on('click',function(){
        if(!$(this).parents('.evaluation_view').hasClass('on')){
            $(this).parents('.evaluation_view').addClass('on');
            if($(this).parents('.evaluation_view').find('.review_img_cont191216').find('ul').children('li').length > 1){
                var thisId = $(this).parents('.evaluation_view').find('.review_img_cont191216').attr('id');
                var idx191216 = thisId.replace(/[^0-9]/g,'');
                if(!$(this).parents('.evaluation_view').find('.review_img_cont191216').children('div').hasClass('bx-wrapper')){
                    testerReviewImg(idx191216);
                }else { // 체험단만 (bxslider 2중으로 먹는경우가 있어서 초기화 로직추가)
                    var testerChkCode = "MN2C8WJC026WP_CM";
                    if(testerChkCode.indexOf("_") > -1) {
                        testerChkCode = testerChkCode.split("_")[0];
                    }
                    
                    if('ko' == 'ko' && testerChkCode == "101110026") {
                        $(this).parents('.evaluation_view').find('.review_img_cont191216').find('.slides').bxSlider().destroySlider();
                        $(this).parents('.evaluation_view').find('.review_img_cont191216').find('.controls span a').remove();
                        testerReviewImg(idx191216);  
                    }
                }
            }
        }else{
            $(this).parents('.evaluation_view').removeClass('on');
        }
    });
}

function reviewImgRatio(){
//이미지 비율
$('.review_img_wrap').each(function(i){
    var eachImg = $(this).find('img');
    if(eachImg.get(0).naturalHeight >= eachImg.get(0).naturalWidth){
        $(this).addClass('wlength');
    }else if(eachImg.get(0).naturalHeight < eachImg.get(0).naturalWidth){
        $(this).addClass('hlength');
    }
});
}

function setFourmpmAthomeProcess(id){
    if($("#storePickupCheck").is(":checked") && ($("#fourpmCheck").is(":checked") || $("#athomeCheck").is(":checked")  || $("#quickCheck").is(":checked"))){
        var la = new layerAlert('배송 옵션은 다중 선택이 불가 합니다.');
        $('#fourpmCheck').prop('checked',false);
        $('#athomeCheck').prop('checked',false);
        $('#quickCheck').prop('checked',false);
        la.confirmAction = function(){
            return;
        };
        return false;
    }
    
    if($("#fourpmCheck").is(":checked") || $("#athomeCheck").is(":checked") || $("#quickCheck").is(":checked")){
        var checkboxCnt = 0;
        if($("#fourpmCheck").is(":checked")){
            checkboxCnt++;
        }
        if($("#athomeCheck").is(":checked")){
            checkboxCnt++;
        }
        if($("#quickCheck").is(":checked")){
            checkboxCnt++;
        }
        
        if(checkboxCnt > 1){
            var la = new layerAlert('배송 옵션은 다중 선택이 불가 합니다.');
            la.confirmAction = function(){
                return;
            };
            $('#'+id).prop('checked',false);
            return false;
        }
    }
    
    if($("#"+id).is(":checked")){
        var type = "";
        var code = "";
        var sizeCode = "";
        var selectSize = false;
        
        if(id == "fourpmCheck"){
            type = "fourpm";
        }else if(id == "athomeCheck"){
            type = "athome";
            
/*          if($("#postalcode").val() == ""){
                var la = new layerAlert('서비스 불가능 지역입니다.</br> 배송지 변경을 통해 서비스 가능 지역으로</br>변경 해주세요.');
                la.confirmAction = function(){
                    return;
                };
                $('#athomeCheck').prop('checked',false);
                return false;
            } */
        }else if(id == "quickCheck"){
            type = "quick";
        }else{
            alert('오류로 인한 서비스 문제');
            return false;
        }
        
        $(".color_size_qty ul.color_chip > li").each(function(){
            if($(this).find(" > a").hasClass("on")){
                code = $(this).attr("id");
                sizeCode = $(this).attr("id");
            }
        });
        
        if(code == ""){
            $(".color_size_qty ul.color_chip > li").each(function(){
                if(!$(this).find(" > a").hasClass("no_color")){
                    code = $(this).attr("id");
                    return false;
                }
                    
            });
        }
        
        $(".color_size_qty .size_chip > li").each(function(){
            if($(this).find(" > a").hasClass("on")){
                sizeCode += "_"+$(this).find(" > a").html();
                selectSize = true;
            }
        });

        if(type == "fourpm"){
            if($("#fourpmList").val() != ""){
                setFourpmAthomeCode($("#fourpmList").val(),selectSize,type);
                return false;
            }
        }else if(type == "quick"){
            if($("#quickList").val() != ""){
                setFourpmAthomeCode($("#quickList").val(),selectSize,type);
                return false;
            }
        }else{
            if($("#athomeList").val() != ""){
                setFourpmAthomeCode($("#athomeList").val(),selectSize,type);
                return false;
            }
        }
        
        $.ajax({
             url: '/ko/p/checkFourpmAtHome',
             type: "GET",
             dataType:"json",
             data: {"productCode":code, "type":type },
             success: function(data){
                if(data != ""){
                    setFourpmAthomeCode(data,selectSize,type);
                    if(type == "fourpm"){
                        $("#fourpmList").val(data);
                    }else if(type == "quick"){
                        $("#quickList").val(data);
                    }else{
                        $("#athomeList").val(data);
                    }
                }
             },
             error: function(xhr, Status, error) {
                var la = new layerAlert(error);
                la.confirmAction = function(){
                    return;
                };
             }
        });         
    }else{
        tempSetOriginClass();
    }
}

function setFourpmAthomeCode(data,selectSize,type){
    tempSetClass();
    $(document).find(".color_size_qty ul.color_chip > li").each(function(){
        if(data.indexOf($(this).attr("id")) == -1){
            $(this).find(" > a").attr("class","no_color");
        }
    });
    
    var checkSizeCode = false;
    $(document).find(".color_size_qty .size_chip > li").each(function(){
        if(!$(this).find(" > a").hasClass("not_stock")){
            if(data.indexOf($(this).attr("id")) == -1){
                $(this).find(" > a").addClass("not_stock");
            }
        }
        
        if($(this).find(" > a").hasClass("on")){
            if(data.indexOf($(this).attr("id")) == -1){
                checkSizeCode = true;
            }
        }
    });
    
    if(selectSize){
        if(checkSizeCode){
            var msg = "";
            if(type == "fourpm"){
                msg = '선택한 색상,사이즈는 {0}PM 서비스</br>대상이 아닙니다.</br>옵션을 다시 선택해주세요.';
            }else if(type == "athome"){
                msg = '선택한 색상,사이즈는 앳홈 서비스</br>대상이 아닙니다.</br>옵션을 다시 선택해주세요.';
            }else if(type == "pickup"){
                msg = '선택한 사이즈는 매장수령</br>대상이 아닙니다.</br>옵션을 다시 선택해주세요.';
            }else if(type == "quick"){
                msg = '선택한 사이즈는 퀵배송</br>대상이 아닙니다.</br>옵션을 다시 선택해주세요.';
            }
            
            var la = new layerAlert(msg);
            la.confirmAction = function(){
                return;
            };
            $('form[name=addToCartForm] input[name=productCodeType]').val("ApparelStyleVariantProduct");
        }
    }
    
    
}

function tempSetOriginClass(){
    $(".color_size_qty ul.color_chip > li").each(function(idx){
        $(this).find(" > a").attr("class",colorArray[idx]);
    });
    
    $(".color_size_qty .size_chip > li").each(function(idx){
        if(sizeArray[idx] == ""){
            $(this).find(" > a").removeClass("not_stock");
        }
    });
}

function tempSetClass(){
    $(".color_size_qty ul.color_chip > li").each(function(idx){
        colorArray[idx] = $(this).find(" > a").attr("class");
    });
    
    $(".color_size_qty .size_chip > li").each(function(idx){
        if($(this).find(" > a").hasClass("not_stock")){
            sizeArray[idx] = "not_stock";
        }else{
            sizeArray[idx] = "";
        }
    });
}

function showExchangeRate(){
    
//     var exchangeRateList = '[{symbol=¥, exchangeRate=199.23, currencyCode=CNY}, {symbol=$, exchangeRate=1430.4, currencyCode=USD}]';
//     
    
//     var productPrice = $("#productPrice").val() == null || $("#productPrice").val() == 0 ? 0 : $("#productPrice").val();
//     var qty = $("#txtqty").val();
//     var sumPrice = parseFloat(productPrice * qty);
    
//     var addHtml = ""; 
    
//     
//         var currecy = "CNY";
//         var rate = "199.23";
//         var simbol = "¥";
        
//         var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
        
//         addHtml += "<p>"+ simbol + ""+addComma(exchangeAmt); +"</p>"
//     
//         var currecy = "USD";
//         var rate = "1430.4";
//         var simbol = "$";
        
//         var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
        
//         addHtml += "<p>"+ simbol + ""+addComma(exchangeAmt); +"</p>"
//     
    var productPrice = $("#productPrice").val() == null || $("#productPrice").val() == 0 ? 0 : $("#productPrice").val();
    var addHtml = "<p>₩"+addComma(productPrice); +"</p>";
    $("#exchangeDiv").html(addHtml);
    //$(".tlt_ship .delch_box").css("display","block");
    
}

function btnPosition(){
    
    var layerImgWidth = $(".gallery-wrapper ul li img").width();
    var layerBtn = $(".gallery-wrapper .close");
    
    $(layerBtn).css("margin-right",-(layerImgWidth/2+60));

};


function resizeEtcImage(){
    var widthLi = $(".adaptive_wrap").width() / 6;
    $(".productSlide li").css("padding","0").css("width","auto");
    $(".productSlide li img").css("width","96%").css("padding","0 2%");
    $(".hidden_wrap ul li").width(widthLi);
    $(".lookbook_list191211 ul li").css({'width':'auto','height':'216px'});
	$(".lookbook_list191211 ul li img").css({'width':'auto','height':'100%','padding':'0 5px'});

}

$(document).on("keyup","#height",function(){
    $("#thHeight").css("color", "black");
    $("#thHeight").css("font-weight","normal");
    $(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
    if ($("#height").val().length > 0) {
        var inputNumberchk = /^[0-9]+$/; // 숫자 체크
        if (!inputNumberchk.test($("#height").val())){
            $(this).val($(this).val().replace(/[^0-9]/gi,""));
	        var la = new layerAlert("숫자만 입력 가능합니다.");
	        la.confirmAction = function(){};
        }    
    }
});

$(document).on("keyup","#enjoySize",function(){
    $("#thEnjoySize").css("color", "black");
    $("#thEnjoySize").css("font-weight","normal");
    $(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
    if ($("#enjoySize").val().length > 0) {
        var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크
        if (!inputHangulchk.test($("#enjoySize").val())){
            $(this).val($(this).val().replace(/[^a-z0-9]/gi,""));
	        var la = new layerAlert("영문/숫자만 입력 가능합니다.");
	        la.confirmAction = function(){};
        }
    }
});



function reviewWriteCheck()
{
    var inputNumberchk = /^[0-9]+$/; // 숫자 체크
    var inputHangulchk = /[^ㄱ-ㅎ|ㅏ-ㅣ]+$/; // 초성(자음/모음) 체크
  
    
  
    
    if ( "Y" == 'Y' ) {
            if ($('#reviewHeadline').val().length == 0 || $.trim($('#reviewHeadline').val()) == '') {
                var la = new customLayerAlert('내용을 입력해주세요.');
                return;
            }
            if ($('#reviewHeadline').val().length < 20) {
                var la = new customLayerAlert('상품평 내용은 20~200자 사이입니다.');
                return;
            }
    } 
    
    var headline = $("#reviewHeadline").val();
    
    if(headline == null || headline.trim() == ''){
        var la = new layerAlert('내용을 입력해 주세요.');
        la.confirmAction = function(){
            $("#customerReviewWriteDiv").attr("tabindex", -1).focus();
        };
        return false;
    }
    
    if(headline.trim().length < 1 && headline.trim().length > 200){
        var la = new layerAlert('내용은 1 ~ 200자 사이입니다.');
        la.confirmAction = function(){
            $("#customerReviewWriteDiv").attr("tabindex", -1).focus();
        };
        return false;
    }
    
    return true;
}

function qnawWriteCheck()
{
    var title = $("#inquiryTitle").val();
    var content = $("#inquiryContents").val();
    var hp2 = $("#inquiryMobileNo2").val();
    var hp3 = $("#inquiryMobileNo3").val();
    var emailAddress = $("#inquiryEmailAddress").val();
    var emailDomain = $("#inquiryEmailDomain").val();
    
    if(title == null || title.trim() == ''){
        var la = new layerAlert('제목을 입력해 주세요.');        
        la.confirmAction = function(){
            $("#productQnAWriteDiv").attr("tabindex", -1).focus();
        };
        return false;       
    }
    
    if(content == null || content.trim() == ''){
        var la = new layerAlert('내용을 입력해 주세요.');
        la.confirmAction = function(){
            $("#productQnAWriteDiv").attr("tabindex", -1).focus();
        };
        return false;
        
    }
    
    if(content.trim().length < 1 && content.trim().length > 200){
        var la = new layerAlert('내용은 1 ~ 200자 사이입니다.');
        la.confirmAction = function(){
            $("#productQnAWriteDiv").attr("tabindex", -1).focus();
        };
        return false;
    }
    
	if($("#inquirySmsNoticeYn").is(":checked")) {
		if((hp2 == null || hp2.trim() == '') || (hp3 == null || hp3.trim() == '')) {
			var la = new layerAlert('SMS를 받을 전화번호를 입력해 주세요.');
			la.confirmAction = function() {
				$("#productQnAWriteDiv").attr("tabindex", -1).focus();
			};
			return false;
		}
	}
	
	if(emailAddress == null || emailAddress.trim() == '') {
		var la = new layerAlert('답변받을 이메일은 필수 항목입니다.');
		la.confirmAction = function() {
			$("#productQnAWriteDiv").attr("tabindex", -1).focus();
		};
		return false;
	}
	
	if(emailDomain == null || emailDomain.trim() == '') {
		var la = new layerAlert('답변받을 이메일은 필수 항목입니다.');
		la.confirmAction = function() {
			$("#productQnAWriteDiv").attr("tabindex", -1).focus();
		};
		return false;
	}
	
    return true;
}

//2018.01.16 로그인 팝업
function goLoginPopup(pageType){    
    
    var url = '/ko/member/login';    
    var param = "?returnType="+pageType+"&loginType=loginPop&productCode="+ $("#productCode").val();
    
    centerPopup(url+param, 'LoginPopup', '520', '709' );
}

function goLogin(pageType){
    
    var url = '/ko/p';
    url += "/"+$("#productCode").val()+"/login";
    var param = "?returnType="+pageType;
    window.location.href=url+param;
}
var intervalId = -1;
function bodyReSize(){
    var imgHeight = $("#imageDiv").height();        //상단 이미지
    var mainHeight = $("#clearfix").height();       //매인
    
    //개별 이미지 높이
    var imageDivSize = 0;
    var imageDivMaxHeight = 0;
    $("#imageDiv > ul > li").each(function(index){
        imageDivSize = index+1; 
        if(imageDivMaxHeight < $(this).height()) {
            imageDivMaxHeight = $(this).height();
        }
    });

    if(imgHeight < ((imageDivMaxHeight+10)*imageDivSize)) {
        intervalLoopCnt = 0;
        intervalId = setTimeout(bodyReSize, 100);
//      intervalId = setInterval(bodyReSize, 100);
        return false;
    } else {
        if(intervalLoopCnt < imageDivSize) {
            intervalLoopCnt = intervalLoopCnt + 1;
            intervalId = setTimeout(bodyReSize, 100);
//          intervalId = setInterval(bodyReSize, 100);
            return false;
        } else {
            clearTimeout(intervalId);
//          clearInterval(intervalId);  
        }
    }

    $("#productDetailEtc").css("display", "block");
    $("#footerWrap").css("display", "block");

    var contentHeight = $("#contentDiv").height();  //상단 detail 내용
    var offset = $("#imageDiv").offset();
    
    if(imgHeight > contentHeight){
        $("#clearfix").height(imgHeight+50);
    }else if(imgHeight < contentHeight){
        $("#clearfix").height(contentHeight+50);
    }
    
    
    var outerWidth = $(window).outerWidth();
    var imgWidth = $("#imageDiv").width();
    var resizeWidth = $("#imageDiv").width() + $('#contentDiv').innerWidth();
    var leftWidth = (outerWidth - resizeWidth) / 2
    var contentWidth = leftWidth + imgWidth;
    
    if($("#contentDiv").css('position') == 'absolute'){
        $("#contentDiv").css('left', imgWidth);
    }else{
        if(outerWidth < 1210){
            $("#contentDiv").css('left', imgWidth);
        }else{
            $("#contentDiv").css('left', contentWidth+2);
        }
    }
}

function reScroll(){
    var $btnwrap = $('.btnwrap.clearfix');
    var btnwrapHeight = $btnwrap.height();
    var btnMarginBottom = 44;

    // WIDTH
    var outerWidth = $(window).outerWidth();
    var imgWidth = $("#imageDiv").width();
    var leftWidth = $("#imageDiv").offset().left;
    var contentWidth = leftWidth + imgWidth;
    
    $(window).scroll(function(){
        
        var scrollTop = $(this).scrollTop();
        var outerHeight = $(window).outerHeight();
        var scrollHeight = parseFloat($("#imageDiv").height() - $('#contentDiv').height());
        
        if(scrollHeight > 0){
            
            if (scrollTop < 100) {
                $('#contentDiv').css({'top':'0','left':imgWidth,'margin-top':'20px'});
                $('#imageDiv').css({'margin-top':'20px'});
                
            } else if ((scrollTop>=100) && (scrollTop<=scrollHeight)) {
                //$('#contentDiv').css({'position': 'fixed', 'top':139,'left':contentWidth});
                $('#contentDiv').css({'margin-top':'0px'});
                if(outerWidth < 1210){
                    //$('#contentDiv').css({'position': 'fixed', 'top':139,'left':imgWidth});
                }
            } else {
                $('#contentDiv').css({'top':scrollHeight,'left':imgWidth});
            }
        }else{
            $('#contentDiv').css({'top':'0','left':imgWidth,'margin-top':'20px'});
            $('#imageDiv').css({'margin-top':'20px'});
        }
        
        var btnwrapOffset = $btnwrap.offset();
        var curBtnwrapMarginTop = parseInt( $btnwrap.css('margin-top') );
        var btnwrapMarginTop = Math.min( scrollTop + outerHeight - btnwrapOffset.top - btnwrapHeight - btnMarginBottom + curBtnwrapMarginTop, 0);

        $btnwrap.css({
            'margin-top': btnwrapMarginTop,
            'margin-bottom': -btnwrapMarginTop
        });
        
        
    }).trigger('scroll');
}

function fn_sumPriceCal(){
    
    var productPrice = $("#productPrice").val() == null || $("#productPrice").val() == 0 ? 0 : $("#productPrice").val();
    var qty = $("#txtqty").val();
    var sumPrice = parseFloat(productPrice * qty);
    
    if("ko" != "ko") {
    	var addHtml = "";
        
        
        	if("ko" == "en") {
        		if("CNY" == "USD") {
		            var rate = "199.23";
		            var simbol = "¥";
		            
		            var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
		            
		            addHtml += simbol + addComma(exchangeAmt);
        		}
        	} else {
        		if("CNY" == "CNY") {
	        		var rate = "199.23";
		            var simbol = "¥";
		            
		            var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
		            
		            addHtml += simbol + addComma(exchangeAmt);
        		}
        	}
        
        	if("ko" == "en") {
        		if("USD" == "USD") {
		            var rate = "1430.4";
		            var simbol = "$";
		            
		            var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
		            
		            addHtml += simbol + addComma(exchangeAmt);
        		}
        	} else {
        		if("USD" == "CNY") {
	        		var rate = "1430.4";
		            var simbol = "$";
		            
		            var exchangeAmt = Math.round(parseFloat(sumPrice) / parseFloat(rate) * 100) / 100 ;
		            
		            addHtml += simbol + addComma(exchangeAmt);
        		}
        	}
        
        
        $("#sumPrice").text(addHtml);
    } else {
    	$("#sumPrice").text('₩' + addComma(sumPrice));
    }
    
}

function fn_qtySubtraction()
{
    var qty  = $("#txtqty").val();
    if(qty < 2){
        return;
    }
    	
    //GA 이벤트 태깅
    GA_Event('상품_상세','수량','-');
    
    $("#txtqty").val(parseInt(qty)-1);
    fn_sumPriceCal();
    
    fn_chkReserveSaleStockpile(parseInt($('#txtqty').val()));
    
    
	   //#3280 인기상품 노출문구 판별 : 재고 - 선택값 = 0 일때 노출
	   chkPopularProudct(qty-1);
	
}

function fn_qtyAdd(){
    var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
    if(productType != 'ApparelSizeVariantProduct'){
        var la = new layerAlert('사이즈를 선택해 주세요.');
        return;
    }
    
    var qty         = parseInt($("#txtqty").val());
    var stockCnt        = ($("#storePickupCheck").is(":checked")) ? parseInt(stockOnlineStockpile[$("#productCode").val()]) : parseInt($("#stockCnt").val());
    var reserveSaleYn = false;
    var cartCnt = 0;
    if(cartQuantity[$("#productCode").val()] != null && cartQuantity[$("#productCode").val()] != "undefined"){
        cartCnt = cartQuantity[$("#productCode").val()];
    }
    
  	//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
    var productCategory = 'WE051';
    if(qty + 1 > 2 && productCategory){
    	var baseCategoryCode = productCategory.substring(0,2);
    	var twoDepthCategoryCode = productCategory.substring(0,4);
    	if('WE' === baseCategoryCode || 'ME' === baseCategoryCode || 'GF01' === twoDepthCategoryCode || 'GF02' === twoDepthCategoryCode || 'GF03' === twoDepthCategoryCode){
    		
    		$("#txtqty").val("2");
    		var la = new layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
            return;	
    	}
    }
    
    if($("input[id^=reserveSalesStockpile_]").length > 0){
        reserveSaleYn = true;
    }
    
    if("ko" != "ko" && stockCnt==1){
        layerAlert('구매가능한 재고는 1개 입니다.');
        return;
    }
    
    if(reserveSaleYn){
//      if ( stockCnt != '' && parseInt(qty)+parseInt(1) > stockCnt ) {
        if(!fn_chkReserveSaleStockpile(qty+1)) {
            //  var la = new layerAlert("재고가 부족합니다.");
            //var la = new layerAlert("예약 상품 주문 가능 수량을 초과하였습니다.<br/>예약 구매 가능한 수량은 " + stockCnt +"개 입니다.");
            var la = new layerAlert("예약 상품 주문 가능 수량을 초과하였습니다.<br/>예약 구매 가능한 수량은 "+qty+"개 입니다.");
            return;
        }
    } else {
        /* PC의 경우 수량 선택 시 쇼핑백 담기나 바로 구매 중 어떤 것을 선택할지 모르기 때문에 주석 처리
        if("ko" == "ko"){
            if (qty >= stockCnt - cartCnt) {
                if(cartCnt > 0){
                    msgCnt = (stockCnt - cartCnt) < 0?0:stockCnt - cartCnt;
                
                    var la = new layerAlert("이미 쇼핑백에 담겨 있습니다.<br/>구매 가능한 재고 "+(msgCnt)+"개만 선택하실 수 있습니다.");
                }else{
                    var la = new layerAlert("구매 가능한 재고 "+stockCnt+"개만 선택하실 수 있습니다.");
                }
                return;
            }
        }else{
            if (qty >= stockCnt) {
                var la = new layerAlert("재고가 부족합니다.");            
                return;
            }
        }
        */
        if (qty >= stockCnt) {
            if("ko" == "ko"){
                var la = new layerAlert("구매 가능한 재고 "+stockCnt+"개만 선택하실 수 있습니다.");
        	}else{
        	    var la = new layerAlert("재고가 부족합니다.");
        	}
            return;
        }

        //#3280 인기상품 노출문구 판별 : 재고 - 선택값 = 0 일때 노출
        if("ko" == "ko"){
            chkPopularProudct(qty+1);
        }
    }
    
//     if(reserveSaleYn && !fn_chkReserveSaleStockpile(qty+1)) {
//         return;
//     }
    
    //GA 이벤트 태깅
    GA_Event('상품_상세','수량','+');
    
    $("#txtqty").val(qty+1);
    fn_sumPriceCal();
    
    
}

function promotionProduct(){
    var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.');
}
    
function chgEnMonth(){
    if($("#deliveryPlanDate").html() != ""){
        if($("#deliveryPlanYear").val() != "" && $("#deliveryPlanMounth").val() != "" && $("#deliveryPlanDay").val() != ""){
            var reMsg = '{0}년 {1}월 {2}일부터 순차배송 예정입니다.';
            var month = convertNumberToMonth($("#deliveryPlanMounth").val());
            
            reMsg = reMsg.replace("{0}",$("#deliveryPlanYear").val());
            reMsg = reMsg.replace("{1}",month);
            reMsg = reMsg.replace("{2}",$("#deliveryPlanDay").val());
            
            $("#deliveryPlanDate").html(reMsg);
        }
        
    }
}


function fn_chkReserveSaleStockpile(qty){
    var rsl = $("input[id^=reserveSalesStockpile_]").length;
    var resultFlag = false;
    for(var i=0; i<rsl; i++){
        var reserveSalesStockpile = parseInt($('#reserveSalesStockpile_'+i).val());
        
        if(reserveSalesStockpile >= qty) {
            
            var erpWorkOrderNumber  = $('#erpWorkOrderNumber_'+i).val();
            var deliveryPlanYear        = $('#deliveryPlanYear_'+i).val();
            var deliveryPlanMounth  = $('#deliveryPlanMounth_'+i).val();
            var deliveryPlanDay     = $('#deliveryPlanDay_'+i).val();
            
            
            var deliveryPlanDateTxt = '{0}년 {1}월 {2}일부터 순차배송 예정입니다.';
            
            deliveryPlanDateTxt = deliveryPlanDateTxt.replace('{0}',deliveryPlanYear);
            deliveryPlanDateTxt = deliveryPlanDateTxt.replace('{1}',deliveryPlanMounth);
            deliveryPlanDateTxt = deliveryPlanDateTxt.replace('{2}',deliveryPlanDay);
            
            $('#erpWorkOrderNumber').val(erpWorkOrderNumber);
            $('#deliveryPlanYear').val(deliveryPlanYear);
            $('#deliveryPlanMounth').val(deliveryPlanMounth);
            $('#deliveryPlanDay').val(deliveryPlanDay);
            
            $('#deliveryPlanDate').html(deliveryPlanDateTxt);
            resultFlag = true;
            break;
        }
    }
    return resultFlag;
}

var addToCartProcess = true;
function addToCart(buyNow)
{
    //2019.09.09 주문 불가능한 상품 선택시
    if("" == $('form[name=addToCartForm] input[name=productCodeType]').val()){
        var la = new layerAlert('사이즈를 선택해 주세요.');
        return;
    }
    
    if(addToCartProcess){
        addToCartProcess = false;
        var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
        var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
        var qty = $("#txtqty").val();
        var productCategory = 'WE051';
    
        if(parseInt($("#productPrice").val()) == 0) {
            var la = new layerAlert('선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
            addToCartProcess = true;
            return;
        }
        if(productType != 'ApparelSizeVariantProduct'){
            var la = new layerAlert('사이즈를 선택해 주세요.');
            addToCartProcess = true;
            return;
        }
        
      	//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
      	var baseCategoryCode = productCategory.substring(0,2);
      	var twoDepthCategoryCode = productCategory.substring(0,4);
      	var cartQty = cartQuantity[productCode];
      	if('WE' === baseCategoryCode || 'ME' === baseCategoryCode || 'GF01' === twoDepthCategoryCode || 'GF02' === twoDepthCategoryCode || 'GF03' === twoDepthCategoryCode){
        	if(qty > 2 && productCategory){
        		var la = new layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
        		addToCartProcess = true;
                return;
        	}
        	
        	if(cartQty + parseInt(qty) > 2 && !buyNow){
        		if(cartQty === 1 || cartQty > 2){
        			var la = new layerAlert('이미 쇼핑백에 '+cartQty+'개가 담겨있습니다.<br/>수량을 다시 선택해주시기 바랍니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');	
        		}else if(cartQty === 2){
        			var la = new layerAlert('구매 가능한 수량 '+cartQty+'개가<br/>이미 쇼핑백에 담겨있습니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');
        		}
        		addToCartProcess = true;
                return;
        	}
        }
      	
        

        var buyNowYn = $.trim(buyNow) == "true" ? true:false;
        $('form[name=addToCartForm] input[name=buyNowYn]').val(buyNowYn);
        
        if(buyNowYn == false){ //프로모션 상품 체크를 위한 선처리 로직 
            $.ajax({
                url: '/ko/p/checkCartProduct',
                type: "GET",            
                data: {productCode: $("#productCode").val()},
                async : false,
                success: function(data){
                    //console.log(data);
                    if(data) { //기존 cart에 존재하면
                        if(data) {
                            var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.'); //"이미 프로모션 상품이 담겨있습니다."
                            addToCartProcess = true;
                            return;                        
                        }
                    }else {
                        addtoCartProcessFunction(); //기존로직
                    }
                },
                error: function(xhr, Status, error) {
                    //
                }
           });

        }else {
            addtoCartProcessFunction(); //기존로직
        }
        
    }
}

// 기존로직
function addtoCartProcessFunction(){
    
    var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
    var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
    var qty = $("#txtqty").val();
    
    	
    if(qty < 1){
        var la = new layerAlert('productdetail.basket.errormag.qty');
        addToCartProcess = true;
        return;
    }
    
    $('form[name=addToCartForm] input[name=qty]').val(qty);
    
    
    $('#workOrder').val($('#erpWorkOrderNumber').val());
    
    //추천상품 

    if('' != null) {
        $('#recommendProduct').val("recommendProd");
    }
    
    if($("#storePickupCheck").is(":checked") && $("#fourpmCheck").is(":checked")){
        var scrollTop = $(document).scrollTop();
        var la = new layerAlert('매장수령과 {0}PM는 동시에 선택할 수 없습니다.');
        var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
        $(document).scrollTop(scrollTop);
        $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
        la.confirmAction = function(){
            return;
        };
        addToCartProcess = true;
        return false;
    }

    var checkQuickProcess = false;
    var checkAthomeProcess = false;
    var check4pmProcess = false;
    var check4pmOver = false;
    if($("#fourpmCheck").is(":checked")){
        $("#deliveryKind").val("4pm");
        $.ajax({
             url: '/ko/shoppingbag/check4pm',
             type: "GET",            
             data: $('form[name=addToCartForm]').serialize(),
             async : false,
             success: function(data){
                 //data가 0 또는 4pm의 경우 담기
                 if(data == "normal"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     check4pmProcess = true;
                 }else if(data == "pm_over"){
                    check4pmOver = true;
                    $("#deliveryKind").val("");
                 }else if(data == "store"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     check4pmProcess = true;
                 }else if(data == "athome"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 앳홈 상품이 담겨 있습니다. 쇼핑백에서 앳홈 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     check4pmProcess = true;
                 }
             },
             error: function(xhr, Status, error) {
                 var la = new layerAlert(error);
                 la.confirmAction = function(){
                        return;
                 };
             }
        });
    }else if($("#athomeCheck").is(":checked")){
        if($("#postalcode").val() == ""){
              addToCartProcess = true;
              layerAlert('앳홈 서비스 불가능 지역 입니다.<br/>(강남,강동,동작,마포,서초,송파,영등포,용산만 가능)');
              return false;
        }
          
        $("#deliveryKind").val("athome");
        $.ajax({
             url: '/ko/shoppingbag/checkAtHome',
             type: "GET",            
             data: $('form[name=addToCartForm]').serialize(),
             async : false,
             success: function(data){
                 if(data == "normal"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 앳홈 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 주문 진행이 가능합니다.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     checkAthomeProcess = true;
                 }else if(data == "store"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 앳홈 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 주문 진행이 가능합니다.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     checkAthomeProcess = true;
                 }else if(data == "login"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('신청 가능합니다.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        var url = '/ko/member/login';
                        window.location.href=url;
                     };
                     checkAthomeProcess = true;
                 }else if(data == "fourpm"){
                     var scrollTop = $(document).scrollTop();
                     var la = new layerAlert('쇼핑백에 앳홈 상품이 아닌 상품이 담겨 있습니다. 쇼핑백에서 상품을&nbsp; 삭제 후 주문 진행이 가능합니다.');
                     var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                     $(document).scrollTop(scrollTop);
                     $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                     la.confirmAction = function(){
                        return;
                     };
                     checkAthomeProcess = true;
                 }
             },
             error: function(xhr, Status, error) {
                 var la = new layerAlert(error);
                 la.confirmAction = function(){
                        return;
                 };
             }
        });
        
        if(!checkAthomeProcess){
            if($("#txtqty").val() != "1"){
                var scrollTop = $(document).scrollTop();
                var la = new layerAlert('앳홈 서비스는 하나의 수량만 가능 합니다.');
                var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                $(document).scrollTop(scrollTop);
                $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                la.confirmAction = function(){
                return;
                };
                checkAthomeProcess = true;
                addToCartProcess = true;
                return false;
            }
        }
    }else if($("#quickCheck").is(":checked")){
        if($("#quickPostalcode").val() == ""){
            addToCartProcess = true;
            layerAlert('퀵배송 서비스 불가능  지역입니다.</br>배송지 변경 후 이용해 주세요.<br/>(서울 전 지역 가능, 향후 서비스 확대 예정입니다.)');
            return false;
        }
        
        if($("#txtqty").val() > 3){
            var scrollTop = $(document).scrollTop();
            var la = new layerAlert('퀵배송 주문은 총 수량이 3개까지만 가능합니다.');
            var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
            $(document).scrollTop(scrollTop);
            $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
            la.confirmAction = function(){
            return;
            };
            checkQuickProcess = true;
            addToCartProcess = true;
            return false;
        }
        
        if(!checkQuickProcess){
            $("#deliveryKind").val("quick");
            $.ajax({
                 url: '/ko/shoppingbag/checkQuick',
                 type: "GET",            
                 data: {zipcode:$("#quickPostalcode").val(),productCode:$("input[name=productCodePost]").val()},
                 async : false,
                 success: function(data){
                     if(data == "time"){
                         var scrollTop = $(document).scrollTop();
                         var la = new layerAlert('퀵배송 주문이 종료되었습니다.</br>내일 00~10시에 다시 이용해 주세요.');
                         var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                         $(document).scrollTop(scrollTop);
                         $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                         la.confirmAction = function(){
                            return;
                         };
                         checkQuickProcess = true;
                     }else if(data == "zipcode"){
                         var scrollTop = $(document).scrollTop();
                         var la = new layerAlert('퀵배송 서비스 불가능  지역입니다.</br>배송지 변경 후 이용해 주세요.<br/>(서울 전 지역 가능, 향후 서비스 확대 예정입니다.)');
                         var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                         $(document).scrollTop(scrollTop);
                         $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                         la.confirmAction = function(){
                            return;
                         };
                         checkQuickProcess = true;
                     }else if(data == "MaxQty"){
                         var scrollTop = $(document).scrollTop();
                         var la = new layerAlert('퀵배송 주문이 마감되었습니다. 내일 다시 이용해 주세요.');
                         var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                         $(document).scrollTop(scrollTop);
                         $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                         la.confirmAction = function(){
                            return;
                         };
                         checkQuickProcess = true;
                     }else if(data == "stock"){
                         var scrollTop = $(document).scrollTop();
                         var la = new layerAlert('퀵배송 대상 상품의 빠른 재고 소진으로<br/>서비스 대상에서 제외되었습니다.');
                         var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                         $(document).scrollTop(scrollTop);
                         $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                         la.confirmAction = function(){
                            return;
                         };
                         checkQuickProcess = true;
                     }
                 },
                 error: function(xhr, Status, error) {
                     var la = new layerAlert(error);
                     la.confirmAction = function(){
                            return;
                     };
                 }
            });
        }
    }else{
        if($("#deliveryKind").val() != "normal"){
            $("#deliveryKind").val("");
        }
    }
    
    if(check4pmProcess || checkAthomeProcess || checkQuickProcess){
        $("#deliveryKind").val("");
        addToCartProcess = true;
        return false;
    }
    
    if(!checkAthomeProcess && $("#deliveryKind").val() == "athome"){
        var athomeProcessCheck = true;
        var athomeMsg = '<span style="color:red;">앳홈 서비스</span>로 <span style="color:red;">결제 없이</span><br><span style="color:red;">홈피팅</span> 하시겠습니까?<br>앳홈 서비스로 <span style="color:red">최대 3개 까지</span><br>이용하실 수 있습니다.';
        var scrollTop = $(document).scrollTop();
        var lc = new layerConfirm(athomeMsg, '앳홈 신청하기', "계속 쇼핑하기");
        var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
        $(".layerArea #clsBtn").remove();
        $(document).scrollTop(scrollTop);
        $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            addtoCartFunction(qty,check4pmOver);
        };
        addToCartProcess = true;
    }else{
        addtoCartFunction(qty,check4pmOver);
        addToCartProcess = true;
    }
}

function addtoCartFunction(qty,check4pmOver){
    $.ajax({
         url: '/ko/shoppingbag/add',
         cache : false,
         async : false,
         type: "GET",            
         data: $('form[name=addToCartForm]').serialize(),
         success: function(msg){
             var errorMsg = msg;
             if(errorMsg == null || errorMsg == ''){
                // start of Facebook Pixel Code
                    if('ko' != 'zh'){
                        window._fbq.push (['track', 'AddToCart',{'value':$("#productPrice").val(),'currency':'KRW', content_type: 'product',
                            content_ids: 'MN2C8WJC026WP'}]);
                    }
                // end of Facebook Pixel Code
                
                _A_pl=Array(productCode); 
                AEC_F_D(productCode, 'i', qty);
                
                var reserveSaleYn = (typeof $("#erpWorkOrderNumber_0").val() != "undefined") ? true : false;
                
                if(reserveSaleYn) {//예약상품일경우
                    
                    var reserveOrderAddToCartMsg = "";
                    
                    if($("#buyNowYn").val()=='false') {//쇼핑백담기
                        reserveOrderAddToCartMsg= "예약상품이 쇼핑백에 담겼습니다.<br/><p style='color:red'>{0}년 {1}월 {2}일부터</p><font style='color:red'>순차적으로 배송</font> 예정 입니다."; 
                    } else {//예약주문
                        reserveOrderAddToCartMsg= "<p style='color:red'>{0}년 {1}월 {2}일부터</p><font style='color:red'>순차적으로 배송</font> 예정 입니다.<br/>(입고예정일은 제작상황에 따라<br />변경될 수 있습니다.)";
                    }
                    reserveOrderAddToCartMsg    = reserveOrderAddToCartMsg.replace("{0}", $('#deliveryPlanYear').val());
                    reserveOrderAddToCartMsg    = reserveOrderAddToCartMsg.replace("{1}", $('#deliveryPlanMounth').val());
                    reserveOrderAddToCartMsg    = reserveOrderAddToCartMsg.replace("{2}", $('#deliveryPlanDay').val());
                    
                    if($("#buyNowYn").val()=='false') {//쇼핑백담기
                        var lc = new layerConfirm(reserveOrderAddToCartMsg, "쇼핑백 바로가기", "계속 쇼핑하기");
                        lc.confirmAction = function(){
                            $(".btn_close").trigger("click");
                            
                            var cartUrl = "/ko/shoppingbag";
                            
                            if($("#storePickupCheck").is(":checked")) {
                                cartUrl += "?cartDivision=store";
                            } else if($("#athomeCheck").is(":checked")) {
                                cartUrl += "?cartDivision=athome";
                            } else if($("#quickCheck").is(":checked")) {
                                cartUrl += "?cartDivision=quick";
                            }
                            
                            window.location.href=cartUrl;
                        };
                        lc.cancelAction = function(){
                        	window.location.reload();
                        }
                        setEcommerceData("Add To Cart");
                    } else {//예약주문
                        var lc = new layerConfirm(reserveOrderAddToCartMsg, "예약상품 바로주문하기");
                        $("#clsBtn").remove();
                        
                        lc.confirmAction = function(){
                            $(".btn_close").trigger("click");
                            buynow(check4pmOver);
                        };
                        lc.cancelAction = function(){
                        	window.location.reload();
                        }
                    } 
                    
                } else {//바로주문
                    buynow(check4pmOver);
                }
                
                if(!check4pmOver){
                    var cnt = $("#cartCount").text();
                    cnt = cnt == null || cnt == "" ? 1 : parseInt(cnt) + parseInt(1);
                    $("#cartCount").text(cnt);
                }
             }else{
                if(msg.indexOf("당일출고") > -1){
                    var scrollTop = $(document).scrollTop();
                    var lc = new layerConfirm(msg, "쇼핑백 담기", "취소");
                    var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                    $(document).scrollTop(scrollTop);
                    $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                    lc.confirmAction = function(){
                        $("#deliveryKind").val("normal");
                        addToCart();
                    };
                }else{
                    var la = new layerAlert(errorMsg);
                    la.confirmAction = function(){
                        return;
                    };               
                }
             }
         },
         error: function(xhr, Status, error) {
             
             var la = new layerAlert(error);
             la.confirmAction = function(){
                    return;
             };
         }
    });
}
function buynow(check4pmOver)
{
    if($('form[name=addToCartForm] input[name=buyNowYn]').val() == "true") {
        $("#addToCartButton, #addToCartBuyNowButton").off("click").on("click",  function(e) {
            new layerAlert("처리중입니다.");
            return false;
        });
        
        $("#addToCartButton").prop("href", "");
        $("#addToCartBuyNowButton").prop("onclick", "");
        
        if("false" == "true"  &&  "ko" == "ko"){
        	NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
        		
                    location.replace("/ko/login/checkout");
                    
        
            });
        }else{
        	
                location.replace("/ko/login/checkout");
            
        }
        
    } else {
        var layerMsg = "";
        if(check4pmOver){
            layerMsg = '오후{0}시 이후 주문시 일반배송으로 변경됩니다.';
        }else{
            layerMsg = "쇼핑백에 담겼습니다.<br />확인하시겠습니까?";
        }
        
        setEcommerceData("Add To Cart");
        var scrollTop = $(document).scrollTop();
        var lc = new layerConfirm(layerMsg, "쇼핑백 바로가기", "계속 쇼핑하기");
        var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
        $(document).scrollTop(scrollTop);
        $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            
            var cartUrl = "/ko/shoppingbag";
            
            if($("#storePickupCheck").is(":checked")) {
                cartUrl += "?cartDivision=store"; 
            } else if($("#athomeCheck").is(":checked")) {
                cartUrl += "?cartDivision=athome"; 
            } else if($("#quickCheck").is(":checked")) {
                cartUrl += "?cartDivision=quick";
            }
            
            window.location.href=cartUrl;
        };
        lc.cancelAction = function(){
        	window.location.reload();
        }
    }
    
}
<!--미림 좋아요기능-->
function addWishList(){
    
    var productCode = $("#productCode").val();
    
    $.ajax({
         url: '/wishlist/add-product-action',
         type: "GET",            
         data: {productCode: productCode
                ,type:'toggle'},
         success: function(errorMsg){
             
             var wishMessageTimer = false;
             
             if(errorMsg != null && errorMsg != ''){
                 if(errorMsg == "erroor1"){
                     var la = new layerAlert('로그인을 해야 합니다.');
                 }else{
                     var cnt = $("#wishlistCount").text();
                     cnt = cnt == null || cnt == "" ? 1 : parseInt(cnt) - parseInt(1);
                     $("#wishlistCount").text(cnt);                  
                     //var la = new layerAlert('위시리스트에서 삭제했습니다.');
                     //addWishListClick();
                     wishMessageTimer = true;
                 }
             }else{
                 var cnt = $("#wishlistCount").text();
                 cnt = cnt == null || cnt == "" ? 1 : parseInt(cnt) + parseInt(1);
                 $("#wishlistCount").text(cnt);
                 wishMessageTimer = true;
             }
             
             if(wishMessageTimer == true) {
                $('.wishlist1803').stop().toggleClass('on');
                $('.' + productCode + 'LIKE').stop().toggleClass('on');
                
                $('.toast_popup').stop().toggleClass('on');
                $('.toast_popup p').stop().show();
                if($('.wishlist1803').hasClass('on')){
                    $('.toast_popup p').text('위시리스트에 담았습니다.');
                    $('.toast_popup').stop().addClass('on');
                }else{
                    $('.toast_popup p').text('위시리스트에서 삭제했습니다.');
                    $('.toast_popup').stop().removeClass('on');
                }
                $('.toast_popup p').stop().animate({'top':'-42px','opacity':1});
                setTimeout(function(){
                    $('.toast_popup p').stop().animate({'top':0,'opacity':0});
                },1750);
                setTimeout(function(){
                    $('.toast_popup p').stop().fadeOut();
                },2000);
             }
         },
         error: function(xhr, Status, error) {
             var la = new layerAlert(error);
             la.confirmAction = function(){
                return;
            };  
         }
    });
}

function addWishListClick()
{   
    
    
        var lc = new layerConfirm("로그인 하시겠습니까?", "확인", "취소");
        
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            goLogin("wishList");    
        };
        return;
    
    
    // start of Facebook Pixel Code
    if('ko' != 'zh'){
        window._fbq.push (['track', 'AddToWishlist',{'value':$("#productPrice").val(),'currency':'KRW', content_type: 'product',
            content_ids: 'MN2C8WJC026WP'}]);
    }
    // end of Facebook Pixel Code
    
    addWishList();
    
}

//상품평쓰기 색상 저장
function fn_clickColorCode(productCode, codeName){
    
    $('.select_colors p').css("color", "black"); // 등록시 밸류 체크때 폰트색 변경한 부분을 사이즈 클릭하면 원래색으로 변경
    $('.select_colors p').css("font-weight","normal");
    var realColor = "";
    if(productCode.indexOf('_') > -1){
        var tmpPnt = productCode.lastIndexOf('_');
       realColor = productCode.substring(tmpPnt+1, productCode.length);
    }
    $('form[name=reviewForm] input[name=purchaseColor]').val(realColor);
    $('form[name=reviewForm] input[name=purchaseColorName]').val(codeName);
    //$('#purchaseColor').val(productCode);
   
    // 사이즈 다시 가져옴
    $('form[name=reviewForm] input[name=purchaseSize]').val("");
    $('form[name=reviewForm] input[name=productCodeType]').val("");
    
    reloadSize(productCode);
}

//상품평 색상 클릭시 사이즈 재조정      
function reloadSize(prodcode) {
	
    $.ajax({
        url     : "/ko/product/reloadProdSize",
        type    : "GET",
        datatype: "json",
        data    : {
            'productcode'   : prodcode,
            'buying_type'   : 9
        },
        success : function(data) {
            var prodcode = data.productCode;
            
            var arrayProd = prodcode.split("_");
            var baseProd  = arrayProd[0];
            var styleProd = ( arrayProd[1] != null ) ? arrayProd[1] : "";
            var sizeProd  = ( arrayProd[2] != null ) ? arrayProd[2] : "";
            
            var product = data.product;
            var variantStyles, variantSizes;

            if ( product.variantType === 'ApparelStyleVariantProduct' ) {
                variantStyles = product.variantOptions
            } else if ( product.baseOptions[0].options != null && product.baseOptions[0].variantType === 'ApparelStyleVariantProduct' ) {
                variantStyles = product.baseOptions[0].options;
                variantSizes  = product.variantOptions;
            } else if ( product.baseOptions[1].options != null && product.baseOptions[0].variantType === 'ApparelSizeVariantProduct' ) {
                variantStyles = product.baseOptions[1].options;
                variantSizes  = product.baseOptions[0].options;
            }
            
            // 사이즈
            var txtSize = "";
            if ( variantSizes !== null ) {
                var sizeClass = '';
                
                for ( var i=0; i < variantSizes.length; i++ ) {
                    var size = variantSizes[i];

                    if ( size.code === prodcode + "_"+$('form[name=reviewForm] input[name=purchaseSize]').val() ) {
                        sizeClass = " on";
                    } else {
                        sizeClass = "";
                    }

                    if ( size.stock.stockLevel > 0 && size.stock.stockLevelStatus.code !== "outOfStock" ) {
                        txtSize += '<li id="'+size.code+'">';
                        for ( var j=0; j < size.variantOptionQualifiers.length; j++ ) {
                            var qualifier = size.variantOptionQualifiers[j];
                            if ( qualifier.qualifier === 'displayErpSize' ) {
                                //var sizeValue = (qualifier.value === "FR" || qualifier.value === "F") ? "FREE" : qualifier.value;
                                var sizeValue = qualifier.value;
                                txtSize += '<a onclick="javascript:fn_clickSizeCode('+"'"+size.code+"'"+');" class="'+sizeClass+'">'+sizeValue;
                                txtSize += '</a>';
                            }
                        }
                        txtSize += '</li>';
                    } else {
                        txtSize += '<li id="'+size.code+'">';
                        for ( var j=0; j < size.variantOptionQualifiers.length; j++ ) {
                            var qualifier = size.variantOptionQualifiers[j];
                            if ( qualifier.qualifier === 'displayErpSize' ) {
                                //var sizeValue = (qualifier.value === "FR" || qualifier.value === "F") ? "FREE" : qualifier.value;
                                var sizeValue = qualifier.value;
                                txtSize += '<a onclick="javascript:fn_clickSizeCode('+"'"+size.code+"'"+');" class="'+sizeClass+'">'+sizeValue;
                                txtSize += '</a>';
                                txtSize += '<productdetails:popupsizequickreference>';
                                txtSize += '</productdetails:popupsizequickreference>';
                            }
                        }
                        txtSize += '</li>';
                    }
                }
            }
            $("#review_size_btn_area").html(txtSize);
        }
    });
}

//상품평쓰기 사이즈 저장
function fn_clickSizeCode(productCode){
    $('.select_options .select_size p').css("color", "black"); // 등록시 밸류 체크때 폰트색 변경한 부분을 사이즈 클릭하면 원래색으로 변경
    $('.select_options .select_size p').css("font-weight","normal");
    
    var realSize = "";
    if(productCode.indexOf('_') > -1){
        var tmpPnt = productCode.lastIndexOf('_');
        realSize = productCode.substring(tmpPnt+1, productCode.length);
    }
    $('form[name=reviewForm] input[name=purchaseSize]').val(realSize);
    $('form[name=reviewForm] input[name=productCodeType]').val("ApparelSizeVariantProduct");
    
    
	// 중복 옵션 조회
	$.ajax({
		url: '/ko/p/duplicateCheckReview' + '?CSRFToken=77badcd5-86c7-4e47-8c1f-0663967bf7b6',
		type: 'POST',
		datatype: 'json',
		data: {'productCode' : productCode,
				'colorName' : $("#purchaseColorName").val(),
				'size' : $("#purchaseSize").val()
		},
		success: function(msg) {
			if(msg != "SUCCESS") {
				$("#"+productCode+" > a").removeClass('on');
				var la = new layerAlert(msg);
				$("#purchaseSize").val('')
				return;
			}
		},
		error: function(xhr, Status, error) {
			var la = new layerAlert(error);
		}
	});
	
}

function fn_detailProductAjax(productCode){
    if($("#"+productCode).find(" > a").hasClass("not_stock")){
        $('form[name=addToCartForm] input[name=productCodeType]').val("");
        return;
    }
    $(".reserveSaleSize").hide();

    $.ajax({
         url: '/ko/p/productDetailAjax.json',
         type: "GET",
         //dataType:"json",
         async:false,
         //data: {code: productCode, CSRFToken:$('[name=CSRFToken]').val()},
         data: {code: productCode},
         success: function(data){
            // START OF 4PM,ATHOME,QUICK SIDE VALUE SAVE
            var tempFourpmValue = "";
            var tempAthomeValue = "";
            var tempPickupValue = "";
            var tempQuickValue = "";
            var checkFourpm = $("#fourpmCheck").is(":checked");
            var checkAthome = $("#athomeCheck").is(":checked");
            var checkQuick = $("#quickCheck").is(":checked");
            var tempPostalcode = $("#postalcode").val();
            var tempStreetname = $("#streetname").val();
            var tempStreetnumber = $("#streetnumber").val();
            var tempQuickPostalcode = $("#quickPostalcode").val();
            var tempQuickStreetname = $("#quickStreetname").val();
            var tempQuickStreetnumber = $("#quickStreetnumber").val();
            if($("#fourpmList").val() != ""){
                tempFourpmValue = $("#fourpmList").val(); 
            }
            if($("#athomeList").val() != ""){
                tempAthomeValue = $("#athomeList").val();
            }
            if($("#pickupList").val() != ""){
                tempPickupValue = $("#pickupList").val();
            }
            if($("#quickList").val() != ""){
                tempQuickValue = $("#quickList").val();
            }
            // END OF 4PM,ATHOME,QUICK SIDE VALUE SAVE 
            
            
            // START OF PICKUP VALUE SAVE
            var checkPickup = $("#storePickupCheck").is(":checked");
            var tempStoreId = "";
            var StorePickupChoiceName = "";
            var StorePickupChoiceAddress = "";
            var StorePickupChoiceTelephone = "";
            var StorePickupDate = "";
            
            if(checkPickup == true){
                tempStoreId = $("#storeId").val();
                StorePickupChoiceName = $("#storePickupChoiceName").html();
                StorePickupChoiceAddress = $("#storePickupChoiceAddress").html();
                StorePickupChoiceTelephone = $("#storePickupChoiceTelephone").html();
                StorePickupDate = $("#storePickupDate").val();
            }
            // END OF PICKUP VALUE SAVE
            
            /* if("false" == "true") {
                clearTimeout(toastPopupPreOrderInit);
                clearTimeout(toastPopupPreOrderAfter);
                clearTimeout(toastPopupPreOrderStop);
            } */
            var description = $(".info_sect .item_txt").html();
            //$("#clearfix").html(data);
            $(".product-detail-img").remove();
            $("#clearfix").replaceWith(data);
            // 상품설명 size 단위로 설정안하나, 혹시 셋팅했을시에 방어로직
            if($('form[name=addToCartForm] input[name=productCodeType]').val() == "ApparelSizeVariantProduct"){
                $(".info_sect .item_txt").html(description);
            }

            if($("#vs-placeholder-cart").length > 0){
                
	                var virtusizeViewYn = false;
	                
	                    virtusizeViewYn = true;
	                    
	                if(virtusizeViewYn){
	                    resetElement();
	                    callCustomIntegration();
	                }
	            
            }

            //oneClick 결제 버튼
            
            
            // START OF 4PM,ATHOME,QUICK SIDE VALUE SET
            $("#postalcode").on("change",function(){
                var tempShortstreet = $("#streetname").val();
                var shortstreet = tempShortstreet.split(" ");
                $("#deliveryStreetTitle").html('서비스 가능 지역');
                if( tempShortstreet != null && tempShortstreet != '') {
                    $("#deliveryStreet").html('<span class="athome_adr">'+shortstreet[0]+' '+shortstreet[1]+' '+shortstreet[2]+'</span> 기준');
                }
            });
            
            $("#quickPostalcode").on("change",function(){
                var tempQuickShortstreet = $("#quickStreetname").val();
                var quickShortstreet = tempQuickShortstreet.split(" ");
                $("#quickDeliveryStreetTitle").html('서비스 가능 지역');
                if( tempQuickShortstreet != null && tempQuickShortstreet != '') {
                    $("#quickDeliveryStreet").html('<span class="quick_adr">'+quickShortstreet[0]+' '+quickShortstreet[1]+' '+quickShortstreet[2]+'</span> 기준');
                }
            });
            
            if(tempPostalcode != "" && $("#postalcode").val() == ""){
                $("#postalcode").val(tempPostalcode);
                $("#streetname").val(tempStreetname);
                $("#streetnumber").val(tempStreetnumber);
                $("#postalcode").trigger("change");
            }
            
            if(tempQuickPostalcode != ""){
                $("#quickPostalcode").val(tempQuickPostalcode);
                $("#quickStreetname").val(tempQuickStreetname);
                $("#quickStreetnumber").val(tempQuickStreetnumber);
                $("#quickPostalcode").trigger("change");
            }
            
            if(tempFourpmValue != ""){
                $("#fourpmList").val(tempFourpmValue);
            }
            if(tempAthomeValue != ""){
                $("#athomeList").val(tempAthomeValue);
            }
            if(tempQuickValue != ""){
                $("#athomeList").val(tempQuickValue);
            }
            if(checkFourpm){
                $(document).find("#fourpmCheck").click();
            }
            if(checkAthome){
                $(document).find("#athomeCheck").click();
            }
            if(checkQuick){
                $(document).find("#quickCheck").click();
            }
            // END OF 4PM,ATHOME,QUICK SIDE VALUE SET
            
            // START OF PICKUP VALUE SET
            if(checkPickup){
                $("#storePickupChoice").css("display", "");
                $(document).find("#storePickupCheck").click();
                $("#storeId").val(tempStoreId);
                $("#storePickupChoiceName").html(StorePickupChoiceName);
                $("#storePickupChoiceAddress").html(StorePickupChoiceAddress);
                $("#storePickupChoiceTelephone").html(StorePickupChoiceTelephone);
                $("#storePickupDate").val(StorePickupDate);
            }
            
            if(tempPickupValue != ""){
                $("#pickupList").val(tempPickupValue);
            }
            
            var code = "";
            $(".color_size_qty ul.color_chip > li").each(function(){
                if($(this).find(" > a").hasClass("on")){
                    code = $(this).attr("id");
                    $(".reserveSaleSize").show();
                }
            });
            
            $(".size_chip li > a").each(function(){
               if($(this).hasClass("on")){
                   code = $(this).parent().attr("id");
                   $(".reserveSaleSize").hide();
               }
            });
            
            if($("#pickupList").val() != ""){
                setFourpmAthomeCode($("#pickupList").val(),code,"pickup");
            }
            // END OF PICKUP VALUE SET
            
            // 상품평쓰기 팝업에선 스크롤 내림 방지
            if($('form[name=reviewForm] input[name=purchaseColor]').val() == ''){
                $("html, body").animate({scrollTop:0}, 300, function(){
                    intervalLoopCnt = 0;
                    bodyReSize();
                    resizeEtcImage();
                });
            }
            
            /*매장수령 Start*/
            $("#storePickupCheck").on("click", function(){
                if($("#storePickupCheck").is(":checked") && ($("#fourpmCheck").is(":checked") || $("#athomeCheck").is(":checked") || $("#quickCheck").is(":checked"))){
                    var la = new layerAlert('배송 옵션은 다중 선택이 불가 합니다.');
                    la.confirmAction = function(){
                        return;
                    };
                    return false;   
                }
                
                // 매장수령전용상품 체크
                if('false' == 'true' && 'ko' == 'ko'){
                    $("#storePickupCheck").prop("checked", true);
                    return;
                }

                if($("#storePickupCheck").is(":checked")) {
                    $.ajax({
                         url: '/ko/p/checkPickup',
                         type: "GET",
                         dataType:"json",
                         data: {"productCode":code},
                         async:false,
                         success: function(data){
                            if(data != ""){
                                $("#pickupList").val(data);
                                $("#storePickupCheck").prop("checked", false);
                                fn_popupStorePickUp();
                            }
                         },
                         error: function(xhr, Status, error) {
                            var la = new layerAlert(error);
                            la.confirmAction = function(){
                                return;
                            };
                         }
                    });
                } else {
                   tempSetOriginClass();
                    $("#storePickupChoice").css("display", "none");
                    $("#storeId").val("");
                    $("#storePickupDate").val("");
                    $("#pickupList").val("");
                }
            });

            /*매장 툴팁*/
            $(".tlt_ship, .store_pickup .tlt").mouseover(function(){
                $("#store_delbox").css("display","block");
            });
            $(".tlt_ship, .store_pickup , .st_receipt_wrap .tlt").mouseout(function(){
                $("#store_delbox").css("display","none");
            });
             /*매장수령 End*/
            
            //4PM START
            if($("#fourpmCheck").length > 0){
                $(".tlt_ship, .fourpm  .tlt").mouseover(function(){
                    $("#fourpm_delbox").css("display","block");
                });
                $(".tlt_ship, .fourpm .tlt").mouseout(function(){
                    $("#fourpm_delbox").css("display","none");
                });
            }
            //4PM END
            
            //At HOME
            if($(".athome_svc").length > 0){
                //AT HOME START
                $(".tlt_ship, .athome_svc  .tlt").mouseover(function(){
                    $("#athome_delbox").css("display","block");
                });
                $(".tlt_ship, .athome_svc .tlt").mouseout(function(){
                    $("#athome_delbox").css("display","none");
                });
                //AT HOME END
            }
            
            //퀵배송
            if($(".quick_deliv").length > 0){
                $(".tlt_ship, .quick_deliv  .tlt").mouseover(function(){
                    $("#quick_delbox").css("display","block");
                });
                $(".tlt_ship, .quick_deliv .tlt").mouseout(function(){
                    $("#quick_delbox").css("display","none");
                });
            }
            
            
            /* CMB : 코디상품 세팅*/
            productCode = productCode.split("_",2).join("_");
            
            $.ajax({
                 url: '/ko/p/getProductColorInofo',
                 type: "GET",
                 dataType:"json",
                 data: {productCode : productCode},
                 error : function( request, status, error ){        
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                 },
                 success: function(data){
                	 
                 	 if(data.referencesList != null){
                         $("#productEctTab li").each(function(idx){
                             if($(this).find("a").text().indexOf("함께 코디한 상품") > -1){
                                 $(this).show();
                                 $(this).find("a").html("함께 코디한 상품("+data.referencesList.length+")");
                             }
                         });
                     }else{
                         $("#productEctTab li").each(function(idx){
                             if($(this).find("a").text().indexOf("함께 코디한 상품") > -1){
                                 $(this).hide();
                             }
                         });
                     }

                     
                   	 var txtCoordiesTab = "";
                     
                   	 if(data.referencesList != null){
						if(data.referencesList.length > 0){
	                   		txtCoordiesTab += '<li class="on"><a href="#cd-n-lb-tab-01" onclick="GA_Event(\'상품_상세\',\'함께 코디한 상품\',\'힘께 코디한 상품\');">함께 코디한 상품</a></li>';                   			
						}
                     }
                   	 if('ko' == 'ko' && data.lookbookList != null ){
                   		if(data.lookbookList.length > 0){
                   		
                   			var addClass = '';
                   			if(data.referencesList == null){
                   				addClass = 'on';
                   			}
                   			txtCoordiesTab += '<li class="' + addClass +'"><a href="#cd-n-lb-tab-02" onclick="GA_Event(\'상품_상세\',\'룩북 제안 스타일\',\'룩북 제안 스타일\');">룩북 제안 스타일</a></li>';             
                   		}
                     }
                     
                   	 if( (data.lookbookList != null && data.lookbookList.length > 0) || (data.referencesList != null && data.referencesList.length > 0) ){
                   		$("#codi_lookbook_tab ul").css("border-bottom", "1px solid #ebebeb");
                   	 }
                   	 $("#codi_lookbook_tab ul").html(txtCoordiesTab);
                   	 
                  
                     if(data.referencesList != null){
                        //코디상품 목록
                         if(data.referencesList.length > 0){
                             //$("#cd-n-lb-tab-01 ul").html("");
                            var html = "";
                             
                            if(data.lookbookList == null){
                            	$("#codi_lookbook_tab li:nth-child(2)").addClass("on");
                            }
                            $("#cd-n-lb-tab-01").css("display", "block");
                            $("#cd-n-lb-tab-02").css("display", "none");
                             
                            for(var i=0;i<data.referencesList.length;i++){
                            	var coordi = data.referencesList[i];
                            	 
                                html +='<li id="prod_'+coordi.code+'">';
                                html +='	<div class="together-codi-pic">';     	                            
                                html +='		<a href="javascript:goDetailPage(\''+coordi.code+'\');" onclick="GA_Event(\'상품_상세\',\'코디상품\',\''+coordi.code+'\');" class="pic">';
                                html +='   			<img src="'+coordi.imageUrl+'" alt="코디상품" class="respon_image">';
                                html +='		</a>';
                                html +='		<a href="#;" id="'+coordi.code+'LIKE" class="add_wishlist ' + coordi.code + 'LIKE like ' + coordi.wishListReside + '" onclick="addWishListProdClick(\''+ coordi.code +'\');GA_Event(\'스타일\', \'코디상품 좋아요\', \'' + escape(coordi.brandName) + '_' + +coordi.name + '\');">위시리스트 담기</a>';
                                html +='	</div>';
                                html +='	<span class="info_wrap item_info2">';
                                html +='   		<span class="brand BR07">'+coordi.brandName+'</span>';
                                html +='   		<span class="title">'+coordi.name+'</span>';
                                html +='   		<span class="price">₩'+addComma(coordi.price)+'</span>';
                                html +='	</span>';
                                 
                                html += '    <div class="we-codi-colorchip">';
                                html += '    	<ul class="color_chip clearfix">';
                                
     	                        var coordiVariantStyles;
     	                        if (coordi.variants.variantType === 'ApparelStyleVariantProduct') {
     	                            coordiVariantStyles = coordi.variants.variantOptions;
     	                        } else if (coordi.variants.baseOptions[0].options != null && coordi.variants.baseOptions[0].variantType == 'ApparelStyleVariantProduct') {
     	                            coordiVariantStyles = coordi.variants.baseOptions[0].options;
     	                        } else if (coordi.variants.baseOptions[1].options != null && coordi.variants.baseOptions[0].variantType == 'ApparelSizeVariantProduct') {
     	                            coordiVariantStyles = coordi.variants.baseOptions[1].options;
     	                        }
     	                        
     	                        
     	                        for ( var c=0; c < coordiVariantStyles.length; c++ ) {
     	                            var color = coordiVariantStyles[c];
     	                            if ( coordi.code === color.code ) {
     	                                addClass = "on";
     	                            } else {
     	                                addClass = "";
     	                            }

									var erpCodeArr = coordi.codiColorChip[0].erpCode.split(";");
                              		var C01Image = coordi.codiColorChip[0].C01imageUrl.split(";");
	                               	var C01ImageStyle = "background:" + color.rgbcode;
	
	                               	for(var k=0; k<erpCodeArr.length; k++){
	   	                            	
	   	                            	if(color.colorcode == erpCodeArr[k]){	                            		
	   		                            	if(C01Image[k] != 'ZZZZ') {
	   		                            		C01ImageStyle = "background:" + color.rgbcode + " url('" + C01Image[k] + "/dims/resize/24x24');"
	   		                            	}
	   		                            	
	   	                            		html += '		<li id="chipbtn_'+coordi.code+'">';
	   	   	                            	html += '			<input type="hidden" class="colorNameVal" value="'+color.erpColorName+'"/>';
	   	     	                            if ( color.displayStock === true || color.displayStock === 'true' ) {
	   	     	                            	html += '		<a href="#;" onclick="chngColorChip(this, \''+coordi.code+'\',\''+color.code+'\');" class="beige '+addClass+'" style="'+C01ImageStyle+'"></a>';
	   	     	                            } else {
	   	     	                            	html += '		<a href="#;" onclick="chngColorChip(this, \''+coordi.code+'\',\''+color.code+'\');" class="no_color '+addClass+'" style="'+C01ImageStyle+'"></a>';
	   	     	                            }
	   	    	                            html += '		</li>';
	   	    	                            
	   	                            	}
	   	                            }
	     	                        	
     	                        
     	                        }
     	                        html += '    	</ul>';
     	                     	html += '    </div>';
                                html +="</li>";
                             }
                             $("#referencesListContent ul").css("margin-left","0px");
                             $("#referencesListContent ul").html(html);
                             $(".related_evt:not('#exhibitionList')").show();
                             
                             if($('#referencesListContent ul:eq(0) > li').length > 3) {
                                 var conthtml = '';
                                 conthtml += '<div class="controls" id="referencesControls">';
                                 conthtml += '    <a href="javascript:void(0);" class="prev">이전</a>';
                                 conthtml += '    <a href="javascript:void(0);" class="next">다음</a>';
                                 conthtml += '</div>';
                                 
                                 $("#referencesListContent").append(conthtml);
                                matchItemSlider();
                             }else {
                                $(".related_evt .matches_list > ul > li").css("margin-right", "10px");
                             }
                         } 
                     }else{
                    	if('ko' != 'ko' || data.lookbookList == null ){
 							//$(".related_evt:not('#exhibitionList')").hide();
 						}
                     }
                     
                     
                     
                     //탭초기화
                     $("#productEctTab li a").removeClass("on");
                     $("#productEctTab li:first a").addClass("on");
                     
                     //컬러칩, 사이즈 변경시 탭초기화되며 GA이벤트 발생 안되도록 수정
                     var gaEvent = $("#productEctTab li:first a").attr("onclick");
                     $("#productEctTab li:first a").removeAttr("onclick");
                     
                     $("#productEctTab li:first a").trigger("click");
                     
                     //컬러칩, 사이즈 변경시 탭초기화되며 GA이벤트 발생 안되도록 수정
                     $("#productEctTab li:first a").attr("onclick",gaEvent);
                     
                     
                     //룩북세팅
                     if('ko' == 'ko'){
                         
						if(data.lookbookList != null){
							//룩북 목록
							if(data.lookbookList.length > 0){
                                 
								var html = "";
                                var txtLookbookProduct = "";
                                
                                if(data.referencesList == null){
                                	 $("#codi_lookbook_tab li:nth-child(2)").addClass("on");
                                }
                                
                                html += "<div class=\"swiper-container\">";
                                html += "	<div class=\"swiper-wrapper\">";
                                
                                for(var i=0; i<data.lookbookList.length; i++){	
									html +="<div class=\"swiper-slide\" >";
                                    html +="	<a href='/ko/magazine/lookbookDetail/"+data.lookbookList[i].lookbookPk+"?currentPage="+data.lookbookList[i].page+"' onclick=\"GA_Event('상품_상세','룩북이미지','"+data.lookbookList[i].lookbookPk+ "_" + data.lookbookList[i].title + "');\">";
                                    html +="       <img src=\""+data.lookbookList[i].lookbookUrl+"\" alt=\"코디상품\" class=\"respon_image\" >";
                                    html +="    </a>";
                                    html +="</div>";
                                     
								}
                                
                                html +="	</div>";
                                if(data.lookbookList.length > 1){ 
                                	html +="<div class='swiper-pagination tt-nav-page'></div> ";
                                }
                                
                                html +="</div>";
                                
                                if(data.lookbookList.length > 1){                                	
	                                html +="<div class=\"swiper-button-prev tt-nav-left\"></div>";
	                                html +="<div class=\"swiper-button-next tt-nav-right\"></div>";
                                }
                                
								if(data.lookbookProductList != null){
									if(data.lookbookProductList.length > 0){
										var lookbookProducts = data.lookbookProductList;
										
										
			                   			for(i=0; i<data.lookbookList.length; i++){
                                     		var lookbook = data.lookbookList[i];
                                
                                     		var display = (i == 0 ? 'display:block' : 'display:none') ;

                                     		txtLookbookProduct += '	<div class="slide-box" style="' + display + '">';
                                     		txtLookbookProduct += '		<div class="swiper-container ">';
                                     		txtLookbookProduct += '			<div class="swiper-wrapper">';
    			                   			
    			                   			if (lookbookProducts != null && lookbookProducts.length > 0) {
    			                       			
    			                   				for(var b=0; b<lookbookProducts[i].length; b++){
    			                   		
    			                   					var lookbookProduct = lookbookProducts[i][b];
    			                   					if (lookbookProduct.brandCode != null && lookbookProduct.brandCode != ''){
    			                   						
														txtLookbookProduct += '<div class="swiper-slide" id="prod_' + lookbookProduct.code + '">';
														txtLookbookProduct += '		<div class="img">';
														txtLookbookProduct += '			<a class="pic" href="#;" onclick="goDetailPage(\''+lookbookProduct.code+'\');GA_Event(\'상품_상세\',\'룩북상품\',\'' + lookbookProduct.name + '\');">';
														txtLookbookProduct += '				<img src="' + lookbookProduct.imageUrl + '" alt="제품이미지">';
														txtLookbookProduct += '			</a>';
														txtLookbookProduct += '			<a href="#;" id="'+lookbookProduct.code+'LIKE" class="add_wishlist '+lookbookProduct.code+'LIKE like ' + lookbookProduct.wishListReside + '" onclick="addWishListProdClick(\'' + lookbookProduct.code + '\');GA_Event(\'스타일\', \'룩북상품 좋아요\', \'' + escape(lookbookProduct.name) + '\');">위시리스트 담기</a>';
														txtLookbookProduct += '		</div>';
														txtLookbookProduct += '		<div class="con info_wrap">';
														txtLookbookProduct += '			<strong>' + lookbookProduct.brandName + '</strong>';
														txtLookbookProduct += '			<p>' + lookbookProduct.name + '</p>';
														txtLookbookProduct += '     	<span>';
														txtLookbookProduct += '      		₩' + addComma(lookbookProduct.price);
				                						txtLookbookProduct += '    		</span>';
														txtLookbookProduct += '		</div>';
														
														txtLookbookProduct += '    	<div class="we-codi-colorchip">';
														txtLookbookProduct += '    	<ul class="color_chip clearfix">';
						                                
						     	                        var lookbookVariantStyles;
						     	                        if (lookbookProduct.variants.variantType === 'ApparelStyleVariantProduct') {
						     	                        	lookbookVariantStyles = lookbookProduct.variants.variantOptions;
						     	                        } else if (lookbookProduct.variants.baseOptions[0].options != null && lookbookProduct.variants.baseOptions[0].variantType == 'ApparelStyleVariantProduct') {
						     	                        	lookbookVariantStyles = lookbookProduct.variants.baseOptions[0].options;
						     	                        } else if (lookbookProduct.variants.baseOptions[1].options != null && lookbookProduct.variants.baseOptions[0].variantType == 'ApparelSizeVariantProduct') {
						     	                        	lookbookVariantStyles = lookbookProduct.variants.baseOptions[1].options;
						     	                        }
						     	                        
						     	                        var addClass = "";
						     	                        for ( var m=0; m < lookbookVariantStyles.length; m++ ) {
						     	                            var color = lookbookVariantStyles[m];

						     	                            if ( lookbookProduct.code === color.code ) {
						     	                                addClass = "on";
						     	                            } else {
						     	                                addClass = "";
						     	                            }
						     	                            
															var erpCodeArr = lookbookProduct.lookbookColorChip[0].erpCode.split(";");
				                                       		var C01Image = lookbookProduct.lookbookColorChip[0].C01imageUrl.split(";");
				                                        	var C01ImageStyle = "background:" + color.rgbcode;

				                                        	for(var h=0; h<erpCodeArr.length; h++){
				            	                            	
				            	                            	if(color.colorcode == erpCodeArr[h]){	                            		
				            		                            	if(C01Image[h] != 'ZZZZ') {
				            		                            		C01ImageStyle = "background:" + color.rgbcode + " url('" + C01Image[h] + "/dims/resize/24x24');"
				            		                            	}
																	
				            		                            	txtLookbookProduct += '		<li id="chipbtn_'+lookbookProduct.code+'">';
								     	                          	txtLookbookProduct += '			<input type="hidden" class="colorNameVal" value="'+color.erpColorName+'"/>';
								     	                            if ( color.displayStock === true || color.displayStock === 'true' ) {
								     	                            	txtLookbookProduct += '		<a href="#;" onclick="chngColorChip(this, \''+lookbookProduct.code+'\',\''+color.code+'\');" class="beige '+addClass+'" style="'+C01ImageStyle+'"></a>';
								     	                            } else {
								     	                            	txtLookbookProduct += '		<a href="#;" onclick="chngColorChip(this, \''+lookbookProduct.code+'\',\''+color.code+'\');" class="no_color '+addClass+'" style="'+C01ImageStyle+'"></a>';
								     	                            }
								     	                           	txtLookbookProduct += '		</li>';
								     	                           	
				            	                            	}
				            	                            }
						     	                            
						     	                        
						     	                        }
						     	                        txtLookbookProduct += '    	</ul>';
						     	                      	txtLookbookProduct += '    </div>';
						     	                     	
														txtLookbookProduct += '</div>';
    			                   					
    			                   					} // if end
	    			                   					
    			                   				} // for end
    			                   			}
    			                   			
    			                   			txtLookbookProduct += '			</div>';	                   				
    			                   			txtLookbookProduct += '			<div class="swiper-button-prev sub-nav-left"></div>';
    			                   			txtLookbookProduct += '			<div class="swiper-button-next sub-nav-right"></div>';
   			                   
    			                   			txtLookbookProduct += '		</div>';
    			                   			txtLookbookProduct += '	</div>';
                                		} // for end
                                		
									}
									
									
									//룩북 탭 타이틀
		                            if(data.lookbookList.length > 0){
	                                	$("#productEctTab li").each(function(idx){
											if($(this).find("a").text().indexOf("룩북") > -1){
		                                    	$(this).show();
		                                        $(this).find("a").html("룩북("+data.lookbookList.length+")");
		                                    }
										});
		                              
									}
									
									$("#lookbookListContent ul").html("");
									
									var bottomLookbookTab = "";
                                	for(var i=0;i<data.lookbookList.length;i++){
	                                    bottomLookbookTab +="<li class=\"swiper-slide\" style=\"padding: 0px; \">";
	                                    bottomLookbookTab +="   <span>";
	                                    bottomLookbookTab +="       <a href='/ko/magazine/lookbookDetail/"+data.lookbookList[i].lookbookPk+"?currentPage=0'>";
	                                    bottomLookbookTab +="       <img src=\""+data.lookbookList[i].lookbookUrl+"\" alt=\"코디상품\" class=\"respon_image\" style=\"width: auto; padding: 0px 5px; height: 100%;\">";
	                                    bottomLookbookTab +="       </a>";
	                                    bottomLookbookTab +="</span>";
	                                    bottomLookbookTab +="</li>";
	                                }
									
                                	//slider 초기화
                                	$("#lookbookListContent ul").css("margin-left","0px");
                                	$("#lookbookListContent ul").append(bottomLookbookTab);
								}
                                 
                                 //slider 초기화
                                 $("#cd-n-lb-tab-02 .title-slide-zone .swiper-wrapper").css("margin-left","0px");
                                 $("#cd-n-lb-tab-02 .title-slide-zone .swiper-wrapper").append(html);
                                 
                         
                                 $("#cd-n-lb-tab-02 .sub-slide-zone").append(txtLookbookProduct);
                            
                                 swiperslideForLookbook();
                             } 
							
                         }else{
                             $("#productEctTab li").each(function(idx){
                                 if($(this).find("a").text().indexOf("룩북") > -1){
                                     $(this).hide();
                                 }
                             });
                             
                             $("#lookbookListContent").hide();
                         }
                     }
                 },
            });
            /* 코디상품 세팅 End*/
            
            //동영상 플레이
            videoFunction();
            videoCloseScroll();
            
            //컬러칩만 선택 시 '옵션 별로 배송 일자를 확인해 주세요.'
            if($(".color_chip li a").hasClass("on")) {
                $("#deliveryPlanDate").hide();
                $("#deliveryPlanDateDefault").show();
                //사이즈도 선택 시 '{0}년 {1}월 {2}일부터 순차배송 예정입니다.' 
                if($(".size_chip li a").hasClass("on")) {
                    $("#deliveryPlanDate").show();
                    $("#deliveryPlanDateDefault").hide();
                }
            }
            if($("#reserveSalesStockpile_0").val() == 0){
                fn_chkReserveSaleStockpile(1);
            }
            
            
         },
         error: function(xhr, Status, error) {
             console.log(xhr, Status, error);
         }
    });
}

function imageZoom(){
    
    var layerTag = '<div class="layerArea" style="z-index:8;">';
    layerTag +='<div id="imgLayerArea" class="layerBg" style="background:#FFFFFF; position: inherit;z-index:7;width:100%;height:auto;outline:none;">';
    layerTag +='    <div id="item_vsl_modal"> ';
    layerTag +='        <div class="gallery-wrapper" id="productImagePop"> ';
    layerTag +='            <a class="close productImagePopClose" href="javascript:void(0);"/> ';
    layerTag +='        </div>';
    layerTag +='    </div>';
    layerTag +='</div>';
    layerTag +='</div>';
    
    var thisLayer = $(layerTag).appendTo($('.item_detail > .adaptive_wrap'));
    
    $("#productImagePop").append($("#imageDivW ul").clone());
    
    /* $("#productImagePop ul").children('li').each(function(index){
        var arrLenChk = $(this).children('img').attr('src').split("_P").length;
        alert(arrLenChk +", :"+ $(this).children('img').attr('src'));
        if(arrLenChk > 2) {
            var arrLen = $(this).children('img').attr('src').split("_").length - 1;
            var arrImg = $(this).children('img').attr('src').split("_");
            var arrLen = $(this).children('img').attr('src').split("_").length - 1;
            arrImg[arrLen] = arrImg[arrLen].replace("P0", "W0");
            $(this).children('img').attr('src', arrImg.join("_"));
        } else {
            //$(this).children('img').attr('src', $(this).children('img').attr('src').replace("_P0", "_W0"));
            var imgsrc = $(this).children('img').attr('src').split("/dims")[0];
            //$(this).children('img').attr('src', imgsrc.replace("_P0", "_W0"));
        }
    });  */
    btnPosition();
    
    thisLayer.find(".layerBg").css("width", $('.item_detail > .adaptive_wrap').width() + 4);
    var height = $("#bodyWrap").height();
    $("#bodyWrap").height($("#item_vsl_modal").height());
    
    thisLayer.find('.productImagePopClose').click(function(){
        thisLayer.remove();
        $("#bodyWrap").css("height", "");
        $(window).scrollTop("0");
        return false;
    });
}

function fn_popAddMileageInfo(){ // 추가적립 안내 팝업
    //fn_parentLayer();
    $("#addMileageInfo").show();
}

function fn_cardBenefit(){
    //fn_parentLayer();
    $("#cardBenefit").show();
}

function fn_popupDelivery(){
    //fn_parentLayer();
    $("#popupDelivery").show();
}

function fn_popupSizeQuickReference(){
    //fn_parentLayer();
    $("#sizeQuickReferenceLayer").show();
}

function fn_parentLayer(){
    
    $("#productLayer .layerBg").addClass("white");
    
    $("#productLayer").show();
}


function reviewDetail(cnt){
    //$("tr[name=reviewDetail]").css("display", "none");
    
    if($("#reviewDetail_"+cnt).css("display") == 'block'){
        $("#reviewDetail_"+cnt).css("display", "none");
    }else{
        $("#reviewDetail_"+cnt).css("display", "block");    
    }
}

function qnaDetail(cnt){
    //$("tr[name=reviewDetail]").css("display", "none");
    
    if($("#qnaDetail_"+cnt).css("display") == 'block'){
        $("#qnaDetail_"+cnt).css("display", "none");
    }else{
        $("#qnaDetail_"+cnt).css("display", "block");   
    }
}

function reviewHtml(data){
    /* 최근 주문 상품 정보 start */
    // 0.uid 1.p_code 2.purchaseColor 3.purchaseSize 4.erpsizeno 5.orderNumber 6.erpdetailcodename
    var reviewOrder = ""; 
    if(data.reviewOrderData != undefined){
       reviewOrder = data.reviewOrderData.toString().split(",");
    }
    
    if(reviewOrder != ''){ // 주문 내역이 있을 경우
        $("#purchased_color_size").css("display", "block"); 
        if('' == 'review'){ // 주문조회에서 왔을 경우 미표시
            $(".options_change").css("display", "none");   
            $('.select_options_wrap').hide();
            $('.select_checkbox').hide();
            $('#orderWriteChk').val('N');
        }else{
            $('.select_options_wrap').hide();
            $('.select_checkbox').hide();
            $('#orderWriteChk').val('N');
        }
        $("#review_color_name").text(reviewOrder[6]);
        $("#review_size").text(reviewOrder[3]);
        $("#orderNumber").val(reviewOrder[5]);
    }else{ // 주문 내역이 없을 경우
        $('.color_op').hide();
        if("ko" != "ko") {
            $('.select_options_wrap').show();
            //$('.select_checkbox').show();
        }
        $('#orderWriteChk').val('Y');
        //$("#purchaseProdYN").prop('checked', true);
    }
    
   // 상품평쓰기 default 색상, 사이즈
   
   if(reviewOrder[2] != undefined){  // 주문내역이 없을 경우, 기본 색상 적용
       $('form[name=reviewForm] input[name=purchaseColor]').val(reviewOrder[2]);
       $('form[name=reviewForm] input[name=purchaseColorName]').val(reviewOrder[6]);
   }else{
       $('form[name=reviewForm] input[name=purchaseColor]').val('CM');
       $('form[name=reviewForm] input[name=purchaseColorName]').val('CAMEL');
   }
   $('form[name=reviewForm] input[name=purchaseSize]').val(reviewOrder[3]);
   /* 최근 주문 상품 정보 end */
   
    if(data.reviewCnt != null && data.reviewCnt != ""){
        $("#review_cnt").text(data.reviewCnt);
    }
    
    if(data.reviewCnt == 0) {
    	$("#review_cnt").text("0");
    }
    
    var starWidth = 0;
    if(data.reviewList != undefined){
        starWidth = getStarScore(data.reviewAvg);
    }
    
    if(starWidth==0){
        $("#totalStarScoreWrapper").css("display","none");
    }else{
    	$("#totalStarScoreWrapper").css("display","inline-block");
        $("#totalStarScore").css("width",starWidth+"%")
    }
    
    //수량 셋팅
    $("#customerReviewCnt").text(data.reviewCnt);
    
    var list='';
    var paging = '';
    
    if ( 'Y' == 'Y' ) {
        if(data.reviewList != undefined){
            list = data.reviewList.results;
            paging = data.reviewList.pagination;
        }
        
        $('#ALL > a').html('전체 ('+ data.reviewCnt +')');
        $('#PHOTO > a').html('포토 상품평 ('+ data.reviewPhotoCnt +')');
        $('#TEXT > a').html('일반 상품평 ('+ data.reviewTextCnt +')');
    } else {
        if(data.reviewType=='PHOTO') {
            list = data.photoData.results;
            paging = data.photoData.pagination;
        } else if(data.reviewType=='TEXT') {
            list = data.textData.results;
            paging = data.textData.pagination;
        } else {
            if(data.reviewList != undefined){
	            list = data.reviewList.results;
	            paging = data.reviewList.pagination;
            }
        } 
    }
    
    if(data.reviewList != undefined){
	    //미림 임시주석 var totalNumberOfResults = parseInt(paging.totalNumberOfResults);
	     var cookieUid = 'anonymous';
	     
	     var reviewHtml = "";
	     if(list == null || list.length < 1){
	         if ( 'Y' == 'Y' ) {
	             reviewHtml += '<li class="evaluation_view no_list_data1905" style="text-align:center">';
                 if ( data.reviewType=='PHOTO' && data.reviewCnt > 0 ) {
                     reviewHtml += '포토 상품평이 없습니다.';
                 } else if ( data.reviewType=='TEXT' && data.reviewCnt > 0 ) {
                     reviewHtml += '일반 상품평이 없습니다.';
                 } else {
                     reviewHtml += '등록된 상품평이 없습니다.<br />이 상품에 대한 첫 번재 리뷰 글을 작성해주세요~';
                 }
	             if("" != "" && "" != "MEMBER_EASY") {
	             reviewHtml += '<p class="gray_box">';
	             reviewHtml += '<strong>온라인 구매 후 상품평 작성 시 추가 마일리지를 드립니다!</strong><br/>';
	             reviewHtml += '*최초 ‘포토 상품평’은 추가로 2,000마일리지를 더 드려요~';
	             reviewHtml += '</p>';
	             }
                 reviewHtml += '</li>';
	         } else {
	             reviewHtml += "<li class='evaluation_view' style='text-align:center'> ";
	             reviewHtml += "등록된 상품평이 없습니다.<br />이 상품에 대한 첫 번재 리뷰 글을 작성해주세요~";
	             reviewHtml += "</li>";
	         }
	     }else{
	        for(var i=0; i<list.length; i++){
	            reviewHtml += "<li class='evaluation_view' id='evaluation_view"+i+"'>";
	            reviewHtml += "<div class='member_info_top'>";
	            reviewHtml += "    <ul>";
	            reviewHtml += "        <li class='name'>"+list[i].principal.uid+"</li>";
	            if ( list[i].profileData != null && list[i].profileData != "") {
	                reviewHtml += "      <li class='grade'>"+list[i].profileData+"</li>";
	                <!-- 고객등급 -->
	            }
	            reviewHtml += "        <li class='date'>"+list[i].displayCreateDate+"</li>";
	            reviewHtml += "        <li class='stars'>";
	            if(list[i].rating != null && list[i].rating != "" && list[i].rating > 0){
	                if ( 'Y' == 'Y' && list[i].bestYN == true) {
	                    reviewHtml += "            <div class='star_score1807 best_review1905'>";
	                } else {
	                    reviewHtml += "            <div class='star_score1807'>";
	                }
	            reviewHtml += "                <span class='cmt_star'>";
	            reviewHtml += "                    <span class='cmt_per star"+list[i].rating+"'>별점</span>";
	            reviewHtml += "                </span>";
	            reviewHtml += "            </div>";
	            }
	            if(list[i].originUid == 'anonymous'){
	                if ( 'Y' == 'Y' ) {
	                    if ( list[i].bestYN != true ) {
	                        if ( (list[i].realAccumulationReviewPoint == null || list[i].realAccumulationReviewPoint <= 0)
                                            && (list[i].realAccumulationPhotoPoint == null || list[i].realAccumulationPhotoPoint <= 0) ) {
	                            reviewHtml += '        <li class="float_right delete"><a href="#;" onclick="javascript:deleteReview('+list[i].id+','+i+')">삭제</a></li>';
	                        }
	                        reviewHtml += '        <li class="float_right modify"><a href="#;" onclick="javascript:modifyReview('+"'"+list[i].id+"'"+",'"+list[i].purchaseColor+"'"+",'"+list[i].purchaseColorName+"'"+",'"+list[i].purchaseSize+"'"+",'"+list[i].orderNumber+"'"+",'"+list[i].purchaseProdYN+"'"+')">수정</a></li>';            
	                    }
	                    
	                } else {
	                    reviewHtml += '        <li class="float_right delete"><a href="#;" onclick="javascript:deleteReview('+list[i].id+','+i+')">삭제</a></li>';
	                    reviewHtml += '        <li class="float_right modify"><a href="#;" onclick="javascript:modifyReview('+"'"+list[i].id+"'"+",'"+list[i].purchaseColor+"'"+",'"+list[i].purchaseColorName+"'"+",'"+list[i].purchaseSize+"'"+",'"+list[i].orderNumber+"'"+",'"+list[i].purchaseProdYN+"'"+')">수정</a></li>';
	                }
	            }
	            reviewHtml += "    </ul>";
	            reviewHtml += "    </ul>";
	            
	            reviewHtml += "    </ul>";
	            reviewHtml += "</div>";
	            reviewHtml += "<div class='member_info_bottom'>";
	            reviewHtml += "    <ul>";
	            if('false' == 'true' || 'false' == 'true') {
	                var cusFlagYn = false;
		            if(list[i].age != null && list[i].age != ""){
		                cusFlagYn = true;
		            } else if(list[i].skinType != null && list[i].skinType != ""){
		                cusFlagYn = true;
		            } else {
		                cusFlagYn = false;
		            }
		            if(cusFlagYn){
		                reviewHtml += "        <li class='choice'>";
		                reviewHtml += "            •";
		            }else {
		                reviewHtml += "        <li class='choice'>";
		            }
		            if(list[i].age != null && list[i].age != ""){
		                reviewHtml += "            <span>"+list[i].age+"</span> ";
		            }
		            if( (list[i].age != null && list[i].age != "") && (list[i].skinType != null && list[i].skinType != "") ) {
						reviewHtml += " / ";
					}
					if(list[i].skinType != null && list[i].skinType != ""){
						reviewHtml += "            <span>"+list[i].skinType+"</span>";
					}
					
	            } else {
	                var cusFlagYn = false;
		            if(list[i].age != null && list[i].age != ""){
		                cusFlagYn = true;
		            }else if(list[i].height != null && list[i].height != ""){
		                cusFlagYn = true;
		            }else if(list[i].bodyType != null && list[i].bodyType != ""){
		                cusFlagYn = true;
		            }else if(list[i].enjoySize != null && list[i].enjoySize != ""){
		                cusFlagYn = true;
		            } else {
		                cusFlagYn = false;
		            }
		            if(cusFlagYn){
		                reviewHtml += "        <li class='choice'>";
		                reviewHtml += "            •";
		            }else {
		                reviewHtml += "        <li class='choice'>";
		            }
		            if(list[i].age != null && list[i].age != ""){
		                reviewHtml += "            <span>"+list[i].age+"</span> ";
		            }
		            
		            if( (list[i].age != null && list[i].age != "") && ((list[i].height != null && list[i].height != "")
		            				                               || (list[i].bodyType != null && list[i].bodyType != "")
		                                                           || (list[i].enjoySize != null && list[i].enjoySize != "")) ) {
		            	reviewHtml += " / ";
		            }
		            if(list[i].height != null && list[i].height != ""){
		                reviewHtml += "            <span>"+list[i].height+"CM</span>";
		            }
		            
		            if( (list[i].height != null && list[i].height != "") && ((list[i].bodyType != null && list[i].bodyType != "")
	                                                                     || (list[i].enjoySize != null && list[i].enjoySize != "")) ) {
		            	reviewHtml += " / ";
		            }
		            
		            if(list[i].bodyType != null && list[i].bodyType != ""){
		                reviewHtml += "            <span>"+list[i].bodyType+"</span>";
		            }
		            
		            if( (list[i].bodyType != null && list[i].bodyType != "") && (list[i].enjoySize != null && list[i].enjoySize != "") ) {
		            	reviewHtml += " / ";
		            }
		            
		            if(list[i].enjoySize != null && list[i].enjoySize != ""){
		                reviewHtml += "            평소 사이즈 : <span>"+list[i].enjoySize+"</span>";
		            }
	            }
	            
	            reviewHtml += "        </li>";
	            reviewHtml += "        <li class='must'>";
	            if( "Y" == "Y" ) {
	            	if("ko" != "ko") {
	            		if(list[i].purchaseColorName != "" && list[i].purchaseColorName != null){
	    	                reviewHtml += "             • <span>"+list[i].purchaseColorName+"</span>";
	    	            }
	    	            if(list[i].purchaseSize != "" && list[i].purchaseSize != null){
	    	                reviewHtml += "             / <span>"+list[i].purchaseSize+"</span>";
	    	            }
	            	} else {
	            	    reviewHtml += "             • 구매 정보 :";
	    	            if(list[i].purchaseColorName != "" && list[i].purchaseColorName != null){
	    	                reviewHtml += "              <span>"+list[i].purchaseColorName+"</span>";
	    	            }
	    	            if(list[i].purchaseSize != "" && list[i].purchaseSize != null && !chkLiquides){
	    	                reviewHtml += "             / <span>"+list[i].purchaseSize+"</span>";
	    	            }
	    	            if ( list[i].purchaseProdYN == 'Y' ) {
	    	                reviewHtml += "             / <span>" + list[i].offlineShpNm + "</span>";
	    	            } else {
	    	                reviewHtml += "             / <span>더한섬닷컴</span>";
	    	            }
	            	}
	            } else {
	                reviewHtml += "             • 구매 정보 :";
		            if(list[i].purchaseColorName != "" && list[i].purchaseColorName != null){
		                reviewHtml += "               <span>"+list[i].purchaseColorName+"</span>";
		            }
		            if(list[i].purchaseSize != "" && list[i].purchaseSize != null){
		                reviewHtml += "             / <span>"+list[i].purchaseSize+"</span>";
		            }
		            if ( list[i].purchaseProdYN == 'Y' ) {
		                reviewHtml += "             / <span>오프라인매장</span>";
		            } else {
		                reviewHtml += "             / <span>더한섬닷컴</span>";
		            }
	            } 
	            
	            reviewHtml += "        </li>";
	            reviewHtml += "    </ul>";
	            reviewHtml += "</div>";
	            if(list[i].photograph != null){
	            reviewHtml += "<div class='review_represent_img1912'>";
	            reviewHtml += "    <img src='"+list[i].photograph.url+"' alt='리뷰 이미지'>";
	            if(list[i].photographCnt > 1){
	            reviewHtml += "    <div class='img_count191212'>";
	            reviewHtml += "        <span class='img_count191212_inner'>+</span>";
	            reviewHtml += "    </div>";
	            }
	            reviewHtml += "</div>";
	            reviewHtml += "<div class='review_img_wrap review_img_cont191216' id='reviewImg_"+i+"'>";
	            reviewHtml += "    <ul class='slides'>";
	            reviewHtml += "        <li>";
	            reviewHtml += "            <div class='review_img_cont_inner191216'>";
	            reviewHtml += "                <div class='img_wrap'>";
	            reviewHtml += "                    <img src='"+list[i].photograph.url+"' alt='리뷰 이미지'>";
	            reviewHtml += "                </div>";
	            reviewHtml += "            </div>";
	            reviewHtml += "        </li>";
	            if(list[i].photograph2 != null){
		        reviewHtml += "        <li>";
		        reviewHtml += "            <div class='review_img_cont_inner191216'>";
		        reviewHtml += "                <div class='img_wrap'>";
		        reviewHtml += "                    <img src='"+list[i].photograph2.url+"' alt='리뷰 이미지'>";
		        reviewHtml += "                </div>";
		        reviewHtml += "            </div>";
		        reviewHtml += "        </li>";
	            }
	            if(list[i].photograph3 != null){
			    reviewHtml += "        <li>";
			    reviewHtml += "            <div class='review_img_cont_inner191216'>";
			    reviewHtml += "                <div class='img_wrap'>";
			    reviewHtml += "                    <img src='"+list[i].photograph3.url+"' alt='리뷰 이미지'>";
			    reviewHtml += "                </div>";
			    reviewHtml += "            </div>";
			    reviewHtml += "        </li>";
		        }
	            if(list[i].photograph4 != null){
				reviewHtml += "        <li>";
				reviewHtml += "            <div class='review_img_cont_inner191216'>";
				reviewHtml += "                <div class='img_wrap'>";
				reviewHtml += "                    <img src='"+list[i].photograph4.url+"' alt='리뷰 이미지'>";
				reviewHtml += "                </div>";
				reviewHtml += "            </div>";
				reviewHtml += "        </li>";
			    }
	            if(list[i].photograph5 != null){
				reviewHtml += "        <li>";
				reviewHtml += "            <div class='review_img_cont_inner191216'>";
				reviewHtml += "                <div class='img_wrap'>";
				reviewHtml += "                    <img src='"+list[i].photograph5.url+"' alt='리뷰 이미지'>";
				reviewHtml += "                </div>";
				reviewHtml += "            </div>";
				reviewHtml += "        </li>";
			    }
	            reviewHtml += "    </ul>";
	            if(list[i].photographCnt > 1){
	            reviewHtml += "    <div class='controls'>";
	            reviewHtml += "        <span class='prev'></span>";
	            reviewHtml += "        <span class='next'></span>";
	            reviewHtml += "	       <div class='bx_pager191219'>";
	            for(var j=0;j < list[i].photographCnt; j++){
	            reviewHtml += "            <a class ='bx-pager-link' data-slide-index='"+j+"' href='#;'></a>";
	            }
		        reviewHtml += "        </div>";
		        reviewHtml += "    </div>";
	            }
	            reviewHtml += "</div>";
	            }
	            reviewHtml += "<div class='review_txt_wrap'>";
	            reviewHtml += "    <p class='review_txt'>"+decodeText(list[i].headline)+"</p>";
	            reviewHtml += "</div>";
	            
	            if ( 'Y' == 'Y' ) {
	                if ( 'Y' == list[i].prevReviewYn ) {
	                    reviewHtml += "<div class='sizecolor clearfix'>";
	                    reviewHtml += "    <div>";
	                    reviewHtml += "        <strong>실 착용 사이즈</strong>";
	                    reviewHtml += "        <div class='clearfix'>";
	                    if(list[i].realWearSize == 1){
	                        reviewHtml += "                 <span class='on'>작다</span>";
	                    }else{
	                        reviewHtml += "                 <span>작다</span>";  
	                    }
	                    if(list[i].realWearSize == 2){
	                        reviewHtml += "                 <span class='on'>예상했던 사이즈</span>";
	                    }else{
	                        reviewHtml += "                 <span>예상했던 사이즈</span>";   
	                    }
	                    if(list[i].realWearSize == 3){
	                        reviewHtml += "                 <span class='on'>크다</span>";
	                    }else{
	                        reviewHtml += "                 <span>크다</span>";    
	                    }
	                    reviewHtml += "        </div>";
	                    reviewHtml += "    </div>";
	                    reviewHtml += "    <div>";
	                    reviewHtml += "        <strong>실 제품 색상</strong>";
	                    reviewHtml += "        <div class='clearfix'>";
	                    if(list[i].realProductColor == 1){
	                        reviewHtml += "                 <span class='on'>어둡다</span>";
	                    }else{
	                        reviewHtml += "                 <span>어둡다</span>";
	                    }
	                    if(list[i].realProductColor == 2){
	                        reviewHtml += "                 <span class='on'>화면과 같다</span>";
	                    }else{
	                        reviewHtml += "                 <span>화면과 같다</span>";
	                    }
	                    if(list[i].realProductColor == 3){
	                        reviewHtml += "                 <span class='on'>밝다</span>";
	                    }else{
	                        reviewHtml += "                 <span>밝다</span>";
	                    }
	                    reviewHtml += "        </div>";
	                    reviewHtml += "    </div>";
	                    reviewHtml += "</div>";
	                } else {
	                    if ( 'top' == 'top' ) {
                            reviewHtml += '<div class="sizecolor clearfix">';
                            reviewHtml += '    <div class="real_fit_size1905">';
                            reviewHtml += '            <strong>• 실 착용 사이즈</strong>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>어깨너비 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].shoulderWidth === 1 ? ' on' : '') +'">타이트함</span>';
                            reviewHtml += '                    <span class="' + (list[i].shoulderWidth === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].shoulderWidth === 3 ? ' on' : '') +'">여유있음</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>가슴둘레 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].chestSize === 1 ? ' on' : '') +'">타이트함</span>';
                            reviewHtml += '                    <span class="' + (list[i].chestSize === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].chestSize === 3 ? ' on' : '') +'">여유있음</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>총길이 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 1 ? ' on' : '') +'">짧은 편</span>';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 3 ? ' on' : '') +'">긴 편</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '        </div>';
                            reviewHtml += '        <div class="real_color1905">';
                            reviewHtml += '            <strong>• 실 제품 색상</strong>';
                            reviewHtml += '            <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 1 ? ' on' : '') +'">어두워요</span>';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 2 ? ' on' : '') +'">화면과 같아요</span>';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 3 ? ' on' : '') +'">밝아요</span>';
                            reviewHtml += '            </div>';
                            reviewHtml += '        </div>';
                            reviewHtml += '    </div>';
                        }
                        if ( 'top' == 'bottoms' ) {
                            reviewHtml += '<div class="sizecolor clearfix">';
                            reviewHtml += '    <div class="real_fit_size1905">';
                            reviewHtml += '            <strong>• 실 착용 사이즈</strong>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>허리둘레 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].waistSize === 1 ? ' on' : '') +'">타이트함</span>';
                            reviewHtml += '                    <span class="' + (list[i].waistSize === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].waistSize === 3 ? ' on' : '') +'">여유있음</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>엉덩이둘레 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].buttSize === 1 ? ' on' : '') +'">타이트함</span>';
                            reviewHtml += '                    <span class="' + (list[i].buttSize === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].buttSize === 3 ? ' on' : '') +'">여유있음</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '            <div class="evaluation_wrap1905">';
                            reviewHtml += '                <p>총길이 : </p>';
                            reviewHtml += '                <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 1 ? ' on' : '') +'">짧은 편</span>';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 2 ? ' on' : '') +'">적당함</span>';
                            reviewHtml += '                    <span class="' + (list[i].totalSize === 3 ? ' on' : '') +'">긴 편</span>';
                            reviewHtml += '                </div>';
                            reviewHtml += '            </div>';
                            reviewHtml += '        </div>';
                            reviewHtml += '        <div class="real_color1905">';
                            reviewHtml += '            <strong>• 실 제품 색상</strong>';
                            reviewHtml += '            <div class="clearfix">';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 1 ? ' on' : '') +'">어두워요</span>';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 2 ? ' on' : '') +'">화면과 같아요</span>';
                            reviewHtml += '                    <span class="' + (list[i].realProductColor === 3 ? ' on' : '') +'">밝아요</span>';
                            reviewHtml += '            </div>';
                            reviewHtml += '        </div>';
                            reviewHtml += '    </div>';
	                    }
                        if ( 'top' == 'cosmetic' ) {
                            if(list[i].moisturize != null && list[i].spreadability != null && list[i].scent != null) {
                                reviewHtml += '<div class="sizecolor clearfix">';
                                reviewHtml += '    <div class="real_beauty">';
                                reviewHtml += '            <div class="evaluation_wrap1905">';
                                reviewHtml += '                <p>보습력</p>';
                                reviewHtml += '                <div class="clearfix">';
                                reviewHtml += '                    <span class="' + (list[i].moisturize === '1' ? ' on' : '') +'">조금 건조해요</span>';
                                reviewHtml += '                    <span class="' + (list[i].moisturize === '2' ? ' on' : '') +'">보통이에요</span>';
                                reviewHtml += '                    <span class="' + (list[i].moisturize === '3' ? ' on' : '') +'">촉촉해요</span>';
                                reviewHtml += '                </div>';
                                reviewHtml += '            </div>';
                                reviewHtml += '            <div class="evaluation_wrap1905">';
                                reviewHtml += '                <p>발림성</p>';
                                reviewHtml += '                <div class="clearfix">';
                                reviewHtml += '                    <span class="' + (list[i].spreadability === '1' ? ' on' : '') +'">조금 뻑뻑해요</span>';
                                reviewHtml += '                    <span class="' + (list[i].spreadability === '2' ? ' on' : '') +'">보통이에요</span>';
                                reviewHtml += '                    <span class="' + (list[i].spreadability === '3' ? ' on' : '') +'">부드러워요</span>';
                                reviewHtml += '                </div>';
                                reviewHtml += '            </div>';
                                reviewHtml += '            <div class="evaluation_wrap1905">';
                                reviewHtml += '                <p>향</p>';
                                reviewHtml += '                <div class="clearfix">';
                                reviewHtml += '                    <span class="' + (list[i].scent === '1' ? ' on' : '') +'">조금 아쉬워요</span>';
                                reviewHtml += '                    <span class="' + (list[i].scent === '2' ? ' on' : '') +'">보통이에요</span>';
                                reviewHtml += '                    <span class="' + (list[i].scent === '3' ? ' on' : '') +'">좋아요</span>';
                                reviewHtml += '                </div>';
                                reviewHtml += '            </div>';
                                reviewHtml += '        </div>';
                                reviewHtml += '    </div>';
                            }
                        }
                        
                        if ( 'top' == 'perfume' ) {
                            if(list[i].scent != null && list[i].persistence != null) {
                                reviewHtml += '<div class="sizecolor clearfix">';
                                reviewHtml += '    <div class="real_beauty">';
                                reviewHtml += '            <div class="evaluation_wrap1905">';
                                reviewHtml += '                <p>향</p>';
                                reviewHtml += '                <div class="clearfix">';
                                reviewHtml += '                    <span class="' + (list[i].scent === '1' ? ' on' : '') +'">조금 아쉬워요</span>';
                                reviewHtml += '                    <span class="' + (list[i].scent === '2' ? ' on' : '') +'">보통이에요</span>';
                                reviewHtml += '                    <span class="' + (list[i].scent === '3' ? ' on' : '') +'">좋아요</span>';
                                reviewHtml += '                </div>';
                                reviewHtml += '            </div>';
                                reviewHtml += '            <div class="evaluation_wrap1905">';
                                reviewHtml += '                <p>지속성</p>';
                                reviewHtml += '                <div class="clearfix">';
                                reviewHtml += '                    <span class="' + (list[i].persistence === '1' ? ' on' : '') +'">조금 짧아요</span>';
                                reviewHtml += '                    <span class="' + (list[i].persistence === '2' ? ' on' : '') +'">보통이에요</span>';
                                reviewHtml += '                    <span class="' + (list[i].persistence === '3' ? ' on' : '') +'">오래 유지돼요</span>';
                                reviewHtml += '                </div>';
                                reviewHtml += '            </div>';
                                reviewHtml += '        </div>';
                                reviewHtml += '    </div>';
                            }
                        }
                        
	                }
	            } else {
	                reviewHtml += "<div class='sizecolor clearfix'>";
	                reviewHtml += "    <div>";
	                reviewHtml += "        <strong>실 착용 사이즈</strong>";
	                reviewHtml += "        <div class='clearfix'>";
	                if(list[i].realWearSize == 1){
	                    reviewHtml += "                 <span class='on'>작다</span>";
	                }else{
	                    reviewHtml += "                 <span>작다</span>";  
	                }
	                if(list[i].realWearSize == 2){
	                    reviewHtml += "                 <span class='on'>예상했던 사이즈</span>";
	                }else{
	                    reviewHtml += "                 <span>예상했던 사이즈</span>";   
	                }
	                if(list[i].realWearSize == 3){
	                    reviewHtml += "                 <span class='on'>크다</span>";
	                }else{
	                    reviewHtml += "                 <span>크다</span>";    
	                }
	                reviewHtml += "        </div>";
	                reviewHtml += "    </div>";
	                reviewHtml += "    <div>";
	                reviewHtml += "        <strong>실 제품 색상</strong>";
	                reviewHtml += "        <div class='clearfix'>";
	                if(list[i].realProductColor == 1){
	                    reviewHtml += "                 <span class='on'>어둡다</span>";
	                }else{
	                    reviewHtml += "                 <span>어둡다</span>";
	                }
	                if(list[i].realProductColor == 2){
	                    reviewHtml += "                 <span class='on'>화면과 같다</span>";
	                }else{
	                    reviewHtml += "                 <span>화면과 같다</span>";
	                }
	                if(list[i].realProductColor == 3){
	                    reviewHtml += "                 <span class='on'>밝다</span>";
	                }else{
	                    reviewHtml += "                 <span>밝다</span>";
	                }
	                reviewHtml += "        </div>";
	                reviewHtml += "    </div>";
	                reviewHtml += "</div>";
	                
	            }
	            
	            reviewHtml += "<div class='review_more_1807'>";
	            reviewHtml += "    <a href='#;' onclick='GA_Event(\"상품평\",\"자세히보기\",\"클릭\");'>리뷰 더보기</a>";
	            reviewHtml += "</div>";
	            reviewHtml += "</li>";
	        }
	     }
	     
	     $("#customerReviewDiv .review_tab1_1807 ul ").html(reviewHtml);
	     
	     if(list == null || list.length < 1){
	        var pagingHtml = '<a class="prev2" href="javascript:void(0);" onclick="GA_Event(\'상품평\', \'페이지\', \'PREV2\')">처음 페이지로 이동</a>';
	        pagingHtml += '<a href="javascript:void(0);" class="prev" onclick="GA_Event(\'상품평\', \'페이지\', \'PREV\')">이전 페이지로 이동</a>';
	        pagingHtml += '<span class="num"><a href="javascript:void(0);" class="pageBtn" pageNum="1" onclick="GA_Event(\'상품평\', \'페이지\', \'1\')">1</a></span>';
	        pagingHtml += '<a href="javascript:void(0);" class="next" onclick="GA_Event(\'상품평\', \'페이지\', \'NEXT\')">다음 페이지로 이동</a>';
	        pagingHtml += '<a href="javascript:void(0);" class="next2" onclick="GA_Event(\'상품평\', \'페이지\', \'NEXT2\')">마지막 페이지로 이동</a>';
	        $("#reviewPagingDiv").html(pagingHtml);
	     }else{
	         var reviewpaging = new PageNavigationController("#reviewPagingDiv", 4, 10);
	         reviewpaging.setPage(paging.totalNumberOfResults, paging.currentPage+1);
	         
	         reviewpaging.dynamicAction = function(targetPageNum){
	             fn_popupCustomerReview(targetPageNum,$("#review_tab_active").val());
	         };
	         
	         $("#reviewPagingDiv a.prev").on("click",function(){
	         	GA_Event('상품평','페이지','PREV');
	         });
	         $("#reviewPagingDiv a.prev2").on("click",function(){
	         	GA_Event('상품평','페이지','PREV2');
	         });
	         $("#reviewPagingDiv a.pageBtn").on("click",function(){
	         	GA_Event('상품평','페이지',$(this).attr("pagenum"));
	         });
	         $("#reviewPagingDiv a.next").on("click",function(){
	         	GA_Event('상품평','페이지','NEXT');
	         });
	         $("#reviewPagingDiv a.next2").on("click",function(){
	         	GA_Event('상품평','페이지','NEXT2');
	         });
	         
	     }
	     
	     if($("#customerReviewDiv").css("display") == "none"){
	         viewPopup("#customerReviewDiv"); 
	         //layPop = new layerPopup("#customerReviewDiv");
	         
	     }
	        starCnt();//상품평 별점 선택
	        reviewListMore();//상품평 더보기
	        reviewImgRatio();//이미지 비율
     }else{
         $("form#reviewForm #productId").val("");
         fn_popupCustomerReview();
     }
}

function reviewReset(){
    var returnType = "";
    
    $("#productId").val('');
    
    //색상 초기화
    $("#customerReviewWriteDiv .color_chip li > a").each(function(){
         $(this).removeClass("on");
    });
    $("#customerReviewWriteDiv #colorNameContent").html("");
    if("review" != returnType){
        $('form#reviewForm #purchaseColor').val("");
    }
    $('.select_colors p').css("color", "black");
    $('.select_colors p').css("font-weight","normal");
    
    //사이즈 초기화
    $("#customerReviewWriteDiv .size_chip li > a").each(function(){
         $(this).removeClass("on");
    });
    if("review" != returnType){
        $('form#reviewForm #purchaseSize').val("");
    }
    $('.select_options .select_size p').css("color", "black");
    $('.select_options .select_size p').css("font-weight","normal");
    
    //연령
    $("#customerReviewWriteDiv input[name=age]").prop("checked",false);
    
    //체형
    $("#customerReviewWriteDiv input[name=bodyType]").prop("checked",false);
    
    $("#customerReviewWriteDiv input[name=skinType]").prop("checked",false);
    
    //키
    $("#customerReviewWriteDiv #height").val("");
    $("#thHeight").css("color", "black");
    $("#thHeight").css("font-weight","normal");
    
    //평소 사이즈
    $("#customerReviewWriteDiv #enjoySize").val("");
    $("#thEnjoySize").css("color", "black");
    $("#thEnjoySize").css("font-weight","normal");
    
    $("#thBodyType").css("color", "black");
    $("#thBodyType").css("font-weight","normal");
    
    $("#thFile").css("color", "black");
    $("#thFile").css("font-weight","normal");
    
    $(".write_star_wrap").next().find("th").css("color", "black");
    $(".write_star_wrap").next().find("th").css("font-weight","normal");
    
    $(".write_star_wrap").next().next().find("th").css("color", "black");
    $(".write_star_wrap").next().next().find("th").css("font-weight","normal");
    
    $(".write_star_wrap").next().next().next().find("th").css("color", "black");
    $(".write_star_wrap").next().next().next().find("th").css("font-weight","normal");
    
    if ( "Y" == 'Y' ) {
        if  ( 'top' == 'top' || 'top' == 'bottoms' ) {
            $("#realWearSize1_01").prop("checked",false);
            $("#realWearSize1_02").prop("checked",false);
            $("#realWearSize1_03").prop("checked",false);
            
            $("#realWearSize2_01").prop("checked",false);
            $("#realWearSize2_02").prop("checked",false);
            $("#realWearSize2_03").prop("checked",false);
            
            $("#realWearSize3_01").prop("checked",false);
            $("#realWearSize3_02").prop("checked",false);
            $("#realWearSize3_03").prop("checked",false);
            
            $('#shoulderWidth').val('');
            $('#chestSize').val('');
            $('#waistSize').val('');
            $('#buttSize').val('');
            $('#totalSize').val('');
            $('#photoAccumulationRightYn').val('');
            $("form#reviewForm #productId").val("");
            $('#tempProductId').val('');
        }
        
        if('top' == 'cosmetic') {
            $("#moisturize1").prop("checked",false);
            $("#moisturize2").prop("checked",false);
            $("#moisturize3").prop("checked",false);
            $("#spreadability1").prop("checked",false);
            $("#spreadability2").prop("checked",false);
            $("#spreadability3").prop("checked",false);
            $("#scent1").prop("checked",false);
            $("#scent2").prop("checked",false);
            $("#scent3").prop("checked",false);
            $('#photoAccumulationRightYn').val('');
            $("form#reviewForm #productId").val("");
            $('#tempProductId').val('');
        }
        
        if('top' == 'perfume') {
            $("#scent1").prop("checked",false);
            $("#scent2").prop("checked",false);
            $("#scent3").prop("checked",false);
            $("#persistence1").prop("checked",false);
            $("#persistence2").prop("checked",false);
            $("#persistence3").prop("checked",false);
            $('#photoAccumulationRightYn').val('');
            $("form#reviewForm #productId").val("");
            $('#tempProductId').val('');
        }
        
    } else {
        //실착용
        $("#customerReviewWriteDiv input[name=realWearSize]").prop("checked",false);
    }
    
    //실 제품 색상
    $("#customerReviewWriteDiv input[name=realProductColor]").prop("checked",false);
    
    //상품평
    $("#customerReviewWriteDiv #reviewHeadline").val("");
    
    //사진등록
    $("#customerReviewWriteDiv #textReviewFile").val("");
    $("#customerReviewWriteDiv .file_image_wrap2003 li").remove();
    
    var labelLeng = $('#customerReviewWriteDiv .upload_btn label').length-1;
    $('#customerReviewWriteDiv .upload_btn label').each(function(i){
    	if(i != labelLeng){
    		$('#customerReviewWriteDiv .upload_btn label').eq(0).remove();
    		$('#customerReviewWriteDiv .upload_btn input[type=file]').eq(0).remove();
    	}
    });
    
	
    //평점
    $("#customerReviewWriteDiv .btn_star_score li:eq(4) > a").click();
    
    //올린파일
    $("#customerReviewWriteDiv #uploadedFiles").hide();
    
    //상품 매장 구매여부
    $("#packopt").prop("checked",false);
    
    $("#offlineShpNm").val('');
    $("#offlineOrdDt").val('');
    $("#offlineShpCd").val('');
}

function modifyReview(reviewPk, color, colorName, size, orderNumber, purchaseProdYN) {
    
	//초기화
    reviewReset();
	
    //$("#customerReviewWrite").click();
    $('#review_title').html('상품평 수정하기');    // 상품평 수정하기
    $('#reviewWriteSend').val('수정하기');
    
    viewPopup("#customerReviewWriteDiv");
    $("#customerReviewDiv").hide();
    $("#tempProductId").val(reviewPk);
    
    $.ajax({
        url     : '/ko/p/modifyReviewPageAjax',
        type    : 'GET',
        datatype: 'json',
        data    : {
            "customerReviewId" : reviewPk,
            "purchaseColor" : color,
            "purchaseColorName" : colorName,
            "purchaseSize" : size,
            "orderNumber" : orderNumber,
            "purchaseProdYN" : purchaseProdYN
        },
        success : function(data) {
            if ( "Y" == 'Y' ) {
                if ( $('#tempProductId').val() != '' && $('#tempProductId').val() != null ) {
                    //if("ko" == "ko") {
	                    $('.select_options_wrap').hide();
	                    $('.slct_opt').remove();
	                    var productOptions = "";
	                    if("ko" == "ko") {
	                        if(data.purchaseProdYN == "Y") {
	                            if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
	                                productOptions = '<span class="slct_opt">COLOR : ' + data.purchaseColorName + ' / ' + data.offlineShpNm + '</span>';
	                            }else {
	                                productOptions = '<span class="slct_opt">COLOR : ' + data.purchaseColorName + '  /  SIZE : ' + data.purchaseSize + ' / ' + data.offlineShpNm + '</span>';	                                
	                            }
	                        }else {
	                            if(chkLiquides) { // 리퀴드(BR62)일경우 , SIZE영역 비노출
	                                productOptions = '<span class="slct_opt">COLOR : ' + data.purchaseColorName + '  /  더한섬닷컴</span>';	                                
	                            }else {
	                                productOptions = '<span class="slct_opt">COLOR : ' + data.purchaseColorName + '  /  SIZE : ' + data.purchaseSize + '  /  더한섬닷컴</span>';    
	                            }
	                        }
                        }else {
                            productOptions = '<span class="slct_opt">COLOR : ' + data.purchaseColorName + '  /  SIZE : ' + data.purchaseSize + '</span>';
                        }
	                    $("#productOption").hide();
	                    $("#productOption").after(productOptions);
                    //}
                    $("#purchased_color_size").show();
                    $("#categoryCode").val(data.categoryCode);
                    $("#shoulderWidth").val(data.shoulderWidth);
                    $("#chestSize").val(data.chestSize);
                    $("#waistSize").val(data.waistSize);
                    $("#buttSize").val(data.buttSize);
                    $("#totalSize").val(data.totalSize);
                    $("#fileDeleteYN").val('');
                    
                    
                    $("#moisturize"+data.moisturize).prop("checked",true);
                    $("#spreadability"+data.spreadability).prop("checked",true);
                    $("#scent"+data.scent).prop("checked",true);
                    $("#persistence"+data.persistence).prop("checked",true);

                    if(data.shoulderWidth != ""){
                        $("#customerReviewWriteDiv input[name=realWearSize1]").each(function(){
                           if($(this).val() == data.shoulderWidth){
                               $(this).click();
                           } 
                        });
                    }
                    
                    if(data.chestSize != ""){
                        $("#customerReviewWriteDiv input[name=realWearSize2]").each(function(){
                           if($(this).val() == data.chestSize){
                               $(this).click();
                           } 
                        }); 
                    }
                    
                    if(data.waistSize != ""){
                        $("#customerReviewWriteDiv input[name=realWearSize1]").each(function(){
                           if($(this).val() == data.waistSize){
                               $(this).click();
                           } 
                        }); 
                    }
                    
                    if(data.buttSize != ""){
                        $("#customerReviewWriteDiv input[name=realWearSize2]").each(function(){
                           if($(this).val() == data.buttSize){
                               $(this).click();
                           } 
                        }); 
                    }
                    
                    if(data.totalSize != ""){
                        $("#customerReviewWriteDiv input[name=realWearSize3]").each(function(){
                           if($(this).val() == data.totalSize){
                               $(this).click();
                           } 
                        }); 
                    }
                    
                    if($("#categoryCode").val() == null || $("#categoryCode").val() == "") {
                    	$("#categoryCode").val(data.product.actualMeasurementSizeCode.code);
                    }
                }
            }
            $('#tempProductId').val('');
            
            $("form#reviewForm #productId").val(reviewPk);
            $("form#reviewForm input[name=productCode]").val(data.product.code);
            $("form#reviewForm input[name=orderNumber]").val(data.orderNumber);
            $("form#reviewForm input[name=purchaseColor]").val(data.purchaseColor);
            $("form#reviewForm input[name=purchaseColorName]").val(data.purchaseColorName);
            $("form#reviewForm input[name=purchaseSize]").val(data.purchaseSize);
            $("form#reviewForm input[name=purchaseProdYN]").val(data.purchaseProdYN);
            
            var imgSrc = "";
            
                imgSrc = "http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_S01.jpg";
                
            
            $("#reviewProducImg").attr('src',imgSrc);
            $("#reviewProducPrice").text($(".price").find("span:eq(0)").text());
            $("#reviewProductBrandName").text($("#brandName").val());
            $("#reviewProductProductName").text($("#productName").val());
            
            $("#customerReviewWriteDiv .color_chip li > a").each(function(){
                if($(this).attr("data-color") == data.purchaseColorName){
                    //$(this).click();
                	$(this).addClass('on');
                }
            });
            
            $("#customerReviewWriteDiv .size_chip li > a").each(function(){
                if($(this).html() == data.purchaseSize){
                	$('form[name=reviewForm] input[name=productCodeType]').val("ApparelSizeVariantProduct");
                    //$(this).click();
                	$(this).addClass('on');
                }
            });
            
            if(data.age != ""){
                $("#customerReviewWriteDiv input[name=age]").each(function(){
                   if($(this).val() == data.age){
                       $(this).click();
                   } 
                }); 
            }
            
            if(data.skinType != ""){
                $("#customerReviewWriteDiv input[name=skinType]").each(function(){
                   if($(this).val() == data.skinType){
                       $(this).click();
                   } 
                }); 
            }
            
            $("#customerReviewWriteDiv #height").val(data.height);
            
            if(data.bodyType != ""){
                $("#customerReviewWriteDiv input[name=bodyType]").each(function(){
                   if($(this).val() == data.bodyType){
                       $(this).click();
                   } 
                }); 
            }
            
            $("#customerReviewWriteDiv #enjoySize").val(data.enjoySize);
            
            if(data.realWearSize != ""){
                $("#customerReviewWriteDiv input[name=realWearSize]").each(function(){
                   if($(this).val() == data.realWearSize){
                       $(this).click();
                   } 
                }); 
            }
            
            if(data.realProductColor != ""){
                $("#customerReviewWriteDiv input[name=realProductColor]").each(function(){
                   if($(this).val() == data.realProductColor){
                       $(this).click();
                   } 
                }); 
            }
            
            $("#customerReviewWriteDiv .btn_star_score li:eq("+(data.rating - 1)+") > a").click();
            
            $("#customerReviewWriteDiv #reviewHeadline").val(decodeText(data.headline));
            
            $("#thFile").css("color", "black");
            $("#thFile").css("font-weight","normal");
            
            
            if(data.realFileName != ""){
				var html = '';
				
					html += '<li class="file_image">';
		        	html += '<span>'+data.realFileName+'</span>';
		        	html += '<a href="javascript:void(0);" id="0" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
		        	html += '</li>';
	        	$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
	        	$("#customerReviewWriteDiv #reviewFileCd").val(data.reviewFileCd);
	        	
	        	fileIdx++;
            }
            if(data.realFileName1 != ""){
            		
            	var html = '';
    			
				html += '<li class="file_image">';
	        	html += '<span>'+data.realFileName1+'</span>';
	        	html += '<a href="javascript:void(0);" id="1" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
	        	html += '</li>';
	        	
        		$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
        		$("#customerReviewWriteDiv #reviewFileCd1").val(data.reviewFileCd1);
        		
        		fileIdx++;
            }
            if(data.realFileName2 != ""){
            
				var html = '';
    			
				html += '<li class="file_image">';
	        	html += '<span>'+data.realFileName2+'</span>';
	        	html += '<a href="javascript:void(0);" id="2" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
	        	html += '</li>';
	        	
        		$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
        		$("#customerReviewWriteDiv #reviewFileCd2").val(data.reviewFileCd2);
        		fileIdx++;
            }
            if(data.realFileName3 != ""){

            	var html = '';

				html += '<li class="file_image">';
	        	html += '<span>'+data.realFileName3+'</span>';
	        	html += '<a href="javascript:void(0);" id="3" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
	        	html += '</li>';
	        	
        		$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
        		$("#customerReviewWriteDiv #reviewFileCd3").val(data.reviewFileCd3);
        		fileIdx++;
            }
            if(data.realFileName4 != ""){
				var html = '';
    			
				html += '<li class="file_image">';
	        	html += '<span>'+data.realFileName4+'</span>';
	        	html += '<a href="javascript:void(0);" id="4" class="file_del" onclick="deleteReviewFile($(this),'+fileIdx+');">파일삭제</a>';
	        	html += '</li>';
	        	
        		$("#customerReviewWriteDiv .file_image_wrap2003").append(html);
        		$("#customerReviewWriteDiv #reviewFileCd4").val(data.reviewFileCd4);
        		fileIdx++;
            }
            $("#customerReviewWriteDiv .upload_btn input[type=file]").eq(0).attr("id","reviewFile"+fileIdx);
            $("#customerReviewWriteDiv .upload_btn label").eq(0).attr("for","reviewFile"+fileIdx);
            fileIdx++;
            if(data.purchaseProdYN == "Y"){
            	$('#packopt').prop('checked', true);
                $('#packopt').prop('readonly', true);
                $('#packopt').on('click', function(e) {
                    e.preventDefault();
                    return;
                });
            }
        },
        error   : function(error) {
            la = new layerAlert("[Error] " + error);
            return;
        }
    });
    
    return;
}


function encodeText( s ) {
	if ( !s ) {
		return "";
	}
	
	return s.replace( /['"<>&]/g, function( s ) {
		switch ( s ) {
			case "'":
				return "&#039;";
			case "\"":
				return "&#034;"
			case "\\(":
				return "&#40;";
			case "\\)":
				return "&#41;";
			case "<":
				return "&lt;";
			case ">":
				return "&gt;";
			case "&":
				return "&amp;";
		}
	});
}
function decodeText( s ) {
	if ( !s ) {
		return "";
	}

	return s.replace(/&#040;/g, "\\(")
			.replace(/&#041;/g, "\\)")
			.replace(/&lt;/g,"<")
			.replace(/&gt;/g,">")
			.replace(/&amp;/g, "&")
			.replace(/&039;/g, "'")
			.replace(/&034;/g, "\"");
}

function deleteReviewFile(li,idx){
    
	li.parent().remove();
    idx -= 1
    
    if(idx == 0) { idx = "";}
    $('.upload_btn label[for=reviewFile'+idx+']').remove();
	$('.upload_btn #reviewFile'+idx).remove();
	if ( $('#productId').val() != '' && $('#productId').val() != null ) {
		if(li.attr("id") != "" && li.attr("id") != null){	
			$("#reviewFileCd"+(li.attr("id")=="0"?"":li.attr("id"))).val('');
		}
	}
    
    
}

function deleteReview(reviewPk, deleteTarget) {
    var lc;
    if ( 'Y' == 'Y' ) {
        lc = new customLayerConfirm('삭제 하시겠습니까?', '확인', '취소');    
    } else {
        lc = new layerConfirm('삭제 하시겠습니까?', '확인', '취소');
        var scrollTop = $(document).scrollTop();
        var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
        $(document).scrollTop(scrollTop);
        $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
    }
    lc.cancelAction = function() {
        return;     
    };
    lc.confirmAction= function() {
        var la;
        $.ajax({
            url     : '/ko/p/deleteCustomerReview',
            type    : 'GET',
            datatype: 'json',
            data    : {
                        "productId" : reviewPk
            },
            success : function(result) {
                if ( 'Y' == 'Y' ) {
                    if ( result == "SUCCESS" ) {
                        var cla = new customLayerAlert('삭제 되었습니다.');
                        fn_popupCustomerReview('',$("#review_tab_active").val());
                    } else if ( result == "No Match" ) {
                        var cla = new customLayerAlert("잘못된 접근입니다.");
                    } else if ( result == "F_BEST" ) {
                        var cla = new customLayerAlert("베스트 리뷰는 삭제할 수 없습니다.");
                    } else if ( result == "F_NORMAL" ) {
                        var cla = new customLayerAlert("마일리지가 적립된 상품평입니다.");
                    } else if ( result == "F_PHOTO" ) {
                        var cla = new customLayerAlert("마일리지가 적립된 포토상품평입니다.");
                    } else {
                        var cla = new customLayerAlert(result);
                    }
                } else {
                    var scrollTop = $(document).scrollTop();
                    la = new layerAlert('삭제 되었습니다.');
                    var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
                    $(document).scrollTop(scrollTop);
                    $(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
                    $("#evaluation_view"+deleteTarget).remove();
                    $(".layerArea .layerBg").last().click();
                    
                    if ( $('.evaluation_view').length == 0 ) {  // 상품평이 없으면
                        var pageNum = $('#reviewPagingDiv > span > a:last').attr('pagenum');
                        if ( pageNum > 1 ) {
                            fn_popupCustomerReview((pageNum-1),$("#review_tab_active").val());
                        } else {
                            var reviewHtml = '';
                            reviewHtml += "<li class='evaluation_view' style='text-align:center'> ";
                            reviewHtml += "등록된 상품평이 없습니다.<br />이 상품에 대한 첫 번재 리뷰 글을 작성해주세요~";
                            reviewHtml += "</li>";
                            $("#customerReviewDiv .review_tab1_1807 ul ").html(reviewHtml);
                        }
                    }
                }
            },
            error   : function() {
                la = new layerAlert("[Error] " + error);
                return;
            }
        });
    };
}

function qaAHtml(data){

     var list = data.qnAList.results;
     var paging = data.qnAList.pagination;

     var totalNumberOfResults = parseInt(paging.totalNumberOfResults);
     //수량셋팅
     $("#productQnACnt").text(data.qnACnt);

     var qnaHtml = "";
     if(list == null || list.length < 1){
         qnaHtml += "<tr>";
         qnaHtml +=     "<td colspan='4' class='no_data'>";
         qnaHtml +=     '등록된 Q&A가 없습니다.<br />이 상품에 대한 첫 번재 Q&A 글을 작성해주세요~';
         qnaHtml +=     "</td>";
         qnaHtml += "</tr>";
     }else{
        for(var i=0; i<list.length; i++){

            qnaHtml += "<tr>";
            qnaHtml += "    <td>"+ (totalNumberOfResults-((parseInt(paging.currentPage) * 10)  + i)) + "</td>";
            qnaHtml += "    <td>";
            if(list[i].securitySentenceYn == 'Y'){
            qnaHtml += "        <span class='ico_secret'>비밀글</span>";
            }
            if(list[i].securitySentenceYn == 'Y' && list[i].userPk != data.userPk){
                qnaHtml += "        <a href='javascript:void(0);'>"+ wordLengthReplace(list[i].inquiryTitle, '20', '...')+"</a>";
            }else{
                qnaHtml += "        <a href='javascript:qnaDetail("+i+");'>"+ wordLengthReplace(list[i].inquiryTitle, '20', '...')+"</a>";
            }
            if(list[i].replyContents == null || list[i].replyContents == ''){
                qnaHtml += "        <span class='answer_ready'>답변대기중</span>";
            }else{
                qnaHtml += "        <span class='answer_ready'>답변완료</span>";
            }

            qnaHtml += "    </td>";
            
            //qnaHtml += "  <td>"+fn_reName(list[i].userName)+"</td>";
            qnaHtml += "    <td>"+list[i].userName+"</td>";
            qnaHtml += "    <td>"+list[i].createDate+"</td>";
            qnaHtml += "</tr>";
            
            qnaHtml += "<tr style='display:none' id='qnaDetail_"+i+"' name='qnaDetail'>";
            qnaHtml += "    <td colspan='4' class='evaluation_view'>";
            if(list[i].attachmentPhoto != null){
                qnaHtml += "        <p class='evaluation_pic'><img src='"+list[i].attachmentPhoto.url+"' alt='구매자 착용 이미지' /></p>"; 
            }
            //qnaHtml += "        <p class='txt'>"+list[i].inquiryContents+"</p>";
            var inquiryContents = list[i].inquiryContents != null ? list[i].inquiryContents.replace(/(\n|\r\n)/g, '<br/>') : "";
            qnaHtml += "        <p class='txt'>"+inquiryContents+"</p>";
            if(list[i].replyContents != null && list[i].replyContents != ''){
                qnaHtml += "        <div class='answer_wrap'>"+list[i].replyContents+"</div>";
            }

            if(list[i].replyContents == null || list[i].replyContents == ''){
                // 작성자만 수정 허용
                if(list[i].editYn == "Y") {
                    qnaHtml += "<div class='deledit_wrap'>";
                    qnaHtml += "<a href=\"javascript:productEditQnaForm('"+ paging.currentPage +"','"+list[i].productQnACode+"')\">수정</a> ";
                    qnaHtml += "<a href=\"javascript:productEditQna('Y', '"+list[i].productQnACode+"')\">삭제</a>";
                    qnaHtml += "</div>";                    
                }
            } else {

                var securitySentenceYnChecked = "";
                if(list[i].securitySentenceYn == 'Y'){
                    securitySentenceYnChecked = "checked";
                }

                // 작성자만 수정 허용
                if(list[i].editYn == "Y") {
                    qnaHtml += "<span class='float_right'>";
                    qnaHtml += "<input type='checkbox' onClick=\"productEditQna('N', '"+list[i].productQnACode+"')\" name='editSecuritySentenceYn' id='editSecuritySentenceYn' value='Y' "+securitySentenceYnChecked+"/> <label for='editSecuritySentenceYn'>비밀글 설정</label>";
                    qnaHtml += "</span>";                   
                }
            }
        
            qnaHtml += "    </td>";
            qnaHtml += "</tr>";
        }
     }
     
     $("#productQnADiv table tbody").html(qnaHtml);
     
     if(list == null || list.length < 1){
        var pagingHtml = '<a class="prev2" href="javascript:void(0);">처음 페이지로 이동</a>';
        pagingHtml += '<a href="javascript:void(0);" class="prev">이전 페이지로 이동</a>';
        pagingHtml += '<span class="num"><a href="javascript:void(0);" class="pageBtn" pageNum="1" >1</a></span>';
        pagingHtml += '<a href="javascript:void(0);" class="next" >다음 페이지로 이동</a>';
        pagingHtml += '<a href="javascript:void(0);" class="next2" >마지막 페이지로 이동</a>';
        $("#qnAPagingDiv").html(pagingHtml);
     }else{
         var reviewpaging = new PageNavigationController("#qnAPagingDiv", 10, 10);
         reviewpaging.setPage(paging.totalNumberOfResults, paging.currentPage+1);
         
         reviewpaging.dynamicAction = function(targetPageNum){
             fn_popupProductQnA(targetPageNum);
         }; 
         
     }
     
     if($("#productQnADiv").css("display") == "none"){
         viewPopup("#productQnADiv"); 
         //layPop = new layerPopup("#customerReviewDiv");
     }
}

function fn_reName(str){
    var name = str.split("");
    var reName = "";
    for(var i=0; i<name.length;i++){
        if(i != 1){
            reName += name[i];  
        }else{
            reName +="*";
        }
    }
    return reName;
}

function fn_popupCustomerReview(pageNum,reviewType){
    if(reviewType == null || reviewType == ''){
    	$("#PHOTO a").removeClass("active");
    	$("#TEXT a").removeClass("active");
    	$("#ALL a").addClass("active");
    	
    	reviewType='ALL';
    }
    
    if(pageNum == null || pageNum == ''){
        pageNum=1;
    }

    var productCode = $("#productCode").val();
    //미림 alert("여기다: "+productCode);
    $.ajax({
         url: '/review/getproductreview',
         type: "GET",
         dataType:"json",
         data: {"productCode":productCode, "pageNum":pageNum, "pageSize":4, "reviewType": reviewType},
         success: function(data){
             reviewHtml(data);
         },
         error: function(xhr, Status, error) {
             var la = new layerAlert(error);
                la.confirmAction = function(){
                    return;
                };
         }
    });
    
}

function fn_popupProductQnA(pageNum){
    
    if(pageNum == null || pageNum == ''){
        pageNum=1;
    }
    
    var productCode = $("#productCode").val();
    
    $.ajax({
         url: '/ko/p/productQnA',
         type: "GET",
         dataType:"json",
         data: {"productCode":productCode, "pageNum":pageNum, "pageSize":10 },
         success: function(data){
             qaAHtml(data);          
         },
         error: function(xhr, Status, error) {
            var la = new layerAlert(error);
            la.confirmAction = function(){
                return;
            };
         }
    });
    
}



function fn_popupStorePickUp(param) {
    
    // 매장픽업전용 상품인 경우 컬러와 수량 선택여부 체크.
    if('false' == 'true' && 'ko' == 'ko'){
        var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
        var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
        var qty = $("#txtqty").val();

        if(parseInt($("#productPrice").val()) == 0) {
            var la = new layerAlert('선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
            return;
        }
        if(productType != 'ApparelSizeVariantProduct'){
            var la = new layerAlert('사이즈를 선택해 주세요.');
            return;
        }
        
        if(qty < 1){
            var la = new layerAlert('productdetail.basket.errormag.qty');
            return;
        }       
    }
    
    var obj=$("#storePickupDiv");
    var lp=($(window).width()-obj.width())/2;
    var tp=($(window).height()-obj.height())/2+$(window).scrollTop();
    if(lp < 0) lp=0;
    if(tp < 0) tp=0;
    
    $("#productLayer").show();

    obj.css("top", tp).css("position", "absolute").css("z-index", 101);
    obj.show();
    
    var ordertype = param === 'buynow' ? param : '';
    obj.data("ordertype",ordertype);
    
    $("#storePickupSearchWord").focus();
    
    fn_getPopupStoreInfo();
}


function viewPopup(v, n){

    if ( 'Y' == 'Y' ) {
        var obj=$("#"+v.split("#")[1]);
        var lp=($(window).width()-obj.outerWidth())/2;
        var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
        var scrollTop = $(window).scrollTop();
        if(lp < 0) lp=0;
        if(tp < 0) tp=0;
        $('#productLayer').show();
        if($(window).height() < obj.outerHeight()){
        obj.css("top", scrollTop).css("position", "absolute").css("z-index", 101);
        }else{
        obj.css("top", tp).css("position", "absolute").css("z-index", 101);
        }
        obj.show();
        return false;
    } else {
        var obj=$("#"+v.split("#")[1]);
        var lp=($(window).width()-obj.outerWidth())/2;
        var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
        if(lp < 0) lp=0;
        if(tp < 0) tp=0;
        
        if(obj.outerHeight() == 1104) {
            tp = tp + 122;
        }
        
        showProductLayer();
        
        obj.css("top", tp).css("position", "absolute").css("z-index", 101);
        obj.show();
        
        return false;
    }

}

function showProductLayer(backgroud) {
    $("#productLayer").show();
}
function hideProductLayer() {
	
	$("#customerReviewWriteDiv #reviewFileCd").val('');
	$("#customerReviewWriteDiv #reviewFileCd1").val('');
	$("#customerReviewWriteDiv #reviewFileCd2").val('');
	$("#customerReviewWriteDiv #reviewFileCd3").val('');
	$("#customerReviewWriteDiv #reviewFileCd4").val('');
    $("#productLayer .layerBg").removeClass("white");
    $("#productLayer").hide();
    
}

//파일 업로드 
function uploadFilesubmit(){
	
	var msg = "";
	
 //   $('#shoulderWidth').val($('input[name=realWearSize1]:checked').val());
  //  $('#chestSize').val($('input[name=realWearSize2]:checked').val());
   // $('#totalSize').val($('input[name=realWearSize3]:checked').val());
    
    
    
    var liSize = $('#customerReviewWriteDiv .file_image_wrap2003 li').size();
    var fileSize = $('#customerReviewWriteDiv .upload_btn input[type=file]').size();
    //사진 전체 삭제여부 체크
    if(liSize == 0){
		$("#fileDeleteYN").val("Y");
	}
    
    var tUrl = "";
    $("#reviewHeadline").val(encodeText($("#reviewHeadline").val()));
    //사진 첨부안함
    if(fileSize <= 1){
        var url = "";
        var type = "";
        if($("form#reviewForm #productId").val() != ""){
            url = '/review/modifyCustomerReview';
            type = "POST";
            msg = '수정되었습니다.';
        }else{
            url = '/review/reviewWriteNew';    
            type = "GET";
            msg = '등록되었습니다.';
        }
        
        $.ajax({
             url: url,
             type: type,
             data: $('form#reviewForm').serialize(),//form에 있는 것들을 보내고
             success: function(data){
                 if ( "F" == data.rsltCd ) {
                     if ( 'Y' == 'Y' ) {
                         var la = new customLayerAlert(data.rsltMsg);
                     } else { 
                         var la = new layerAlert(data.rsltMsg);
                     }
                     return;
                 } else {
                     if(data == "F_PHOTO") {
                    	la = new layerAlert("최초 포토상품평 작성으로 마일리지 지급이<br/>완료 된 상품평 입니다.<br /><br/>사진을 첨부해서 상품평을 수정해 주세요.");
 						la.confirmAction = function() {
 							$("#thFile").css("color", "#ff0000");
 							$("#thFile").css("font-weight","normal");
 							$("#textReviewFile").focus();
 						};
                     } else if(data == "FAIL") {
                     	la = new layerAlert("예상치 못한 오류가 발생하였습니다.</br>다시 시도해 주시기 바랍니다.");
 						return;
                     } else if(data == "No Match") {
                     	la = new layerAlert("잘못된 접근입니다.");
 						return;
                     } else {
                		var la = new layerAlert(msg); // 수정 되었습니다.
                		la.confirmAction = function(){
                            reviewWriteSuccess(data);
                		};
                	}
                 }
             },
             error: function(xhr, Status, error) {
                 var la = new layerAlertNew(error);
             }
        });
        
    }else{
    	//사진첨부 함
    	var labelLeng = $('#customerReviewWriteDiv .upload_btn label').length - 1;
    	$('#customerReviewWriteDiv .upload_btn label').each(function(i){
    		if(i != labelLeng){
    	    	$('#customerReviewWriteDiv .upload_btn input[type=file]').eq(i).attr("name", "reviewFile"+(i==0?"":i));
    		} else {
    			$('#customerReviewWriteDiv .upload_btn input[type=file]').eq(i).attr("disabled",true);
    		}
        });
    	
        var url = "";
        if($("form#reviewForm #productId").val() != ""){
            url = "/review/modifyCustomerReview" + "?CSRFToken=77badcd5-86c7-4e47-8c1f-0663967bf7b6";
            msg = '수정되었습니다.';
        }else{
            url = "/review/reviewWriteNew" + "?CSRFToken=77badcd5-86c7-4e47-8c1f-0663967bf7b6";
            msg = '등록되었습니다.';
        }
        $('form#reviewForm').ajaxSubmit({
            type : "post", 
            async:false,
            url : url,
            error : function( request, status, error ){
                var la = new layerAlert(error);
            }, 
            success : function(data){
                if ( 'Y' != 'Y' ) {
                    if($("form#reviewForm #productId").val() != ""){
                        if(data == "SUCCESS"){
                            $('#closeWriteChk').val('Y');
                            $(".btn_close").trigger("click");
                            var la = new layerAlert(msg); // 수정 되었습니다.
                            la.confirmAction = function() {
	                            reviewWriteSuccess(data);
                            }
                        }else{
                            var la = new layerAlert('파일 확장자를 확인해 주세요.'); // 확장자를 확인해 주세요
                        }
                    }else{
                        if(typeof data.errorMsp != 'undefined'){
                            new layerAlertNew(data.errorMsp);
                        }else{
                            if(data.fileCheck == "success"){
                                reviewWriteSuccess(data);
                            }else{
                                var la = new layerAlert('파일 확장자를 확인해 주세요.'); // 확장자를 확인해 주세요
                            }
                        }
                    }
                } else {
                    if ( "F" == data.rsltCd ) {
                        var la = new layerAlert(data.rsltMsg);
                        return;
                   } else {
                       if(data == "SUCCESS"){
                           $('#closeWriteChk').val('Y');
                           //$(".btn_close").trigger("click");
                           var la = new layerAlert(msg); // 수정 되었습니다.
                           la.confirmAction = function(){
                               reviewWriteSuccess(data);
                           };
                       } else {
                           reviewWriteSuccess(data);
                       }
                   }
               }
            }
        });
        
        $('#customerReviewWriteDiv .upload_btn input[type=file]').eq(labelLeng).attr("disabled",false);
    }
}


function qnaFilesubmit(){
    
    var tUrl = "";
    if($('#qnaFile').val() == null || $('#qnaFile').val() == ''){
        
        $.ajax({
             url: '/ko/p/qnaWriteNofile',
             type: "GET",
             data: $('form#productQnAForm').serialize(),
             success: function(data){
                 qnaWriteSuccess(data);
             },
             error: function(xhr, Status, error) {
                 var la = new layerAlert(error);                 
                    la.confirmAction = function(){
                        return;
                    };
             }
        });
        
    }else{
        $('form#productQnAForm').ajaxSubmit({
            type : "post", 
            url : "/ko/p/qnaWrite" + "?CSRFToken=77badcd5-86c7-4e47-8c1f-0663967bf7b6",
            //dataType : "json",
            error : function( request, status, error ){
                var la = new layerAlert(error);
            }, 
            success : function(data){
                if(data.fileCheck == "success"){
                    qnaWriteSuccess(data);                  
                }else{
                    var la = new layerAlert('파일 확장자를 확인해 주세요.'); // 확장자를 확인해 주세요
                }
            }
        });
    }
    
}


//상품 Q&A 수정폼
function productEditQnaForm(pageNum, productQnaCode){
    
    if(pageNum == null || pageNum == "" || pageNum == "0"){
        pageNum=1;
    }

    var params = {"productQnaCode": productQnaCode};
        
    $("#productQnaCode").val("");
    $("#inquiryTitle").val("");
    $("#inquiryContents").val("");
    $("#textQnAFile").val("");
    $("#smsMobileNo").val("");
    $("#inquiryMobileNo1 option:eq(0)").prop("selected", true);
    $("#inquiryMobileNo2").val("");
    $("#inquiryMobileNo3").val("");
    $("#inquirySmsNoticeYn").removeAttr("checked");
    $("#smsNoticeYN").val("N");
    $("#replyToEmail").val("");
    $("#inquiryEmailAddress").val("");
    $("#inquiryEmailDomain").val("");
    $("#inquiryEmailSel option:eq(0)").prop("selected", true);
    
    
    //로그인이 되어 있는지 확인한다.
    
        goLogin("productQnA");
        return;
    
    
    $.ajax({
         url: "/ko/p/productEditQnaForm",
         type: "GET",
         dataType:"json",
         data: params,       
         success: function(data){
            var result = data.result;
            
            // 목록 레이어 닫기
            $(".btn_close").trigger("click");
            $("#productQnaCode").val(result.productQnaCode);
            $("#inquiryTitle").val(result.inqueryTitle);
            $("#inquiryContents").val(result.inqueryContents);
            $("#textQnAFile").val(result.attachmentPhoto);
            var smsMobileNoArr, replyToEmailArr = result.replyToEmail.split("@");
            
            if(result.smsMobileNo != null && result.smsMobileNo != "") {
            	smsMobileNoArr = result.smsMobileNo.split("-");
            	
            	$("#inquiryMobileNo1 option").each(function() {
            		if($(this).val() == smsMobileNoArr[0]) {
            			$(this).attr("selected", "selected");
            		} else {
            			$(this).removeAttr("selected");
            		}
            	});
            	
            	$("#inquiryMobileNo1").val(smsMobileNoArr[0]);
            	$("#inquiryMobileNo2").val(smsMobileNoArr[1]);
            	$("#inquiryMobileNo3").val(smsMobileNoArr[2]);
            }
            
            if(result.smsNoticeYN == "Y") {
            	$("#inquirySmsNoticeYn").prop("checked", true);
            }
            
            $("#inquiryEmailAddress").val(replyToEmailArr[0]);
            $("#inquiryEmailDomain").val(replyToEmailArr[1]);
            $("#inquiryEmailSel option:eq(0)").prop("selected", true);
            
            if( result.securitySentenceYn === true){
               $("#securitySentenceYn").prop('checked', true);
            } else {
               $("#securitySentenceYn").removeAttr('checked'); 
            }
            
            viewPopup("#productQnAWriteDiv");
            btnName = "수정하기";
            $("#qnaWriteSend").val(btnName);
         },
         error: function(xhr, Status, error) {
            var la = new layerAlert(error);         
            la.confirmAction = function(){
                return;
            };
         }
    });     
}


// 상품 문의 삭제하기
function productEditQna(r, code){

    $.ajax({
         url: '/ko/p/productEditQna?productQnaCode='+code+'&productQnaRemoveYn='+r,
         type: "GET",
         success: function(data){
             $(".btn_close").trigger("click");          
         },
         error: function(xhr, Status, error) {
             var la = new layerAlert(error);
                la.confirmAction = function(){
                    return;
                };
         }
    });
}

var layerAlertNew = function(msg){
    var t = this;
    
    this.confirmAction = function(){};

    var scrollTop = $(window).scrollTop()+"px";
    var tp=($(window).height()-250)/2+"px";

    var alertTag = '<div class="layerArea" style="z-index:1110">';
    alertTag +='<div class="layerBg"></div> ';
    alertTag +='<div class="popwrap w_type_1" style="z-index:150;top:'+scrollTop+';margin-top:'+tp+'">';
    alertTag +='<div class="pop_cnt">';
    alertTag +='<h3 class="pop_tlt copy">'+msg+'</h3>';
    alertTag +='<div class="btnwrap">';
    alertTag +='<input type="button" class="btn gray_s mr0" value="확인" />';
    alertTag +='</div>';
    alertTag +='</div>';
    alertTag +='<a href="javascript:void(0);" class="btn_close"><img src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png" alt="닫기"></a>';
    alertTag +='</div>';
    alertTag +='</div>';

    var $alertLayer = $(alertTag).appendTo('body');

    $alertLayer.find('.btn.gray_s').click(function(){
        $alertLayer.remove();
        t.confirmAction();
    });
    
    $alertLayer.find('.btn.wt_s, .btn_close').click(function(){
        $alertLayer.remove();
    });
}

function reviewWriteSuccess(data){
    
    if(data.errorMsp != null && data.errorMsp != ''){
        if(data.errorMsp == "ANONYMOUS") {
            //goLogin("review");
            // 2018.01 로그인 팝업 처리
            goLoginPopup("review");
            return;
        }else {
            var la = new layerAlertNew(data.errorMsp);
            la.confirmAction = function(){
                return;
            }; 
        }
        
    }else{
         $('#closeWriteChk').val('Y');
         $(".btn_close").trigger("click");
         reviewHtml(data);
    }
    
    if ( 'Y' == 'Y' ) {
        resetReviewTab();
    }
    
}

function qnaWriteSuccess(data){
    if(data.errorMsp != null && data.errorMsp != ''){
        if(data.errorMsp == "ANONYMOUS") {
            // 2018.01 로그인 팝업 처리
            goLoginPopup("productQnA");      
            return;
        }else {
            var la = new layerAlert(data.errorMsp);
            la.confirmAction = function(){
                return;
            };
        }
        
    }else{
         $(".btn_close").trigger("click");
         qaAHtml(data); 
         fn_popupProductQnA();
    }
    
}


function slidPrev(){
    
    var objDiv;
    
    if(status == 1 ){
        return;
    }
    status = 1;
    $("#productDetailEtc .productEtcDiv").each(function(){
        
        if( $(this).css('display') == 'block' ){
            objDiv = $(this);
        }
    });
    
    var slidUl = objDiv.find("ul");
    
    //상품평이 아닐 때 
    if(document.getElementById("customerReviewDiv").style.display == "none"){
      //추천상품,최근본상품
        var liWidth = slidUl.find("li").width()*6;
        var max = (slidUl.find("li").size()) * slidUl.find("li").width();
        
        var marginLeft = slidUl.css("marginLeft").replace("px", "");
        
        var rest = slidUl.find("li").size()%6;
        
        if((marginLeft*-1)<liWidth){
            liWidth = slidUl.find("li").width()*rest;
        }
        //추천상품,최근본상품끝
        
        //룩북
        $("#productEctTab ul li").each(function(){
            if($(this).find("a").text().indexOf("룩북") > -1 && $(this).find("a").attr('class') == 'on'){
                liWidth = slidUl.find("li").width();
                max = (slidUl.find("li").size() - 4) * liWidth;
            }
        });
        //룩북끝
    }
    
    if( marginLeft >= 0 ){
        status = 0;
        return false;
    }
    slidUl.stop().animate({'marginLeft': '+='+liWidth+'px'}, 'normal', function(){status = 0;});
    
    return false;
}


function slidNext(){
    
    var objDiv;
    
    if(status == 1 ){
        return;
    }
    status = 1;
    $("#productDetailEtc .productEtcDiv").each(function(){
        
        if( $(this).css('display') == 'block' ){
            objDiv = $(this);
        }
    });
    
    var slidUl = objDiv.find("ul");
    
    //상품평이 아닐 때 
    if(document.getElementById("customerReviewDiv").style.display == "none") {
        //추천상품,최근본상품
        var liWidth = slidUl.find("li").width()*6;
        var max = (slidUl.find("li").size()) * slidUl.find("li").width();
        
        var marginLeft = slidUl.css("marginLeft").replace("px", "");
        
        marginLeft = parseFloat(marginLeft)-liWidth;
          
        var rest = slidUl.find("li").size()%6;
        
        if((max+marginLeft)<liWidth){
            liWidth = slidUl.find("li").width()*rest;
        }
        //추천상품끝
        
        //룩북
        $("#productEctTab ul li").each(function(){
            if($(this).find("a").text().indexOf("룩북") > -1 && $(this).find("a").attr('class') == 'on'){
                liWidth = slidUl.find("li").width();
                max = (slidUl.find("li").size() - 4) * liWidth;
                marginLeft = slidUl.css("marginLeft").replace("px", "");
            }
        });
        //룩북끝
     }
    
    if( (parseFloat(max) + parseFloat(marginLeft)) <= 0 ){
        status = 0;
        return;
    }
    
    slidUl.stop().animate({'marginLeft': '-='+liWidth+'px'}, 'normal', function(){status = 0;});
    
    return false;
}

function goDetailPage(productCode){
    var url = '/ko/p';
    url += "/"+productCode;
    window.location.href=url;
}

function goDetailPagebyRecommend(productCode, clickUrl){

    var url = '/ko/p' + "/" + productCode;
    var host = "http://"+ $(location).attr('host') + url +"?type=recommendProd";
    
    var tempUrl = clickUrl + "&url=" + encodeURI(host);
        
    window.location.href=tempUrl;
}

function pstFaceBook() {    
    var url = "www.thehandsome.com/handsome"+"/ko/p"+"/"+$("#productCode").val();
    var href = "http://www.facebook.com/sharer.php?u="+url+"&t=" + encodeURIComponent($("#productName"));
    var a = window.open(href, 'facebook', '');
    if ( a ) {
        a.focus();
    }
}

function pstTwitter() {
    var url = "www.thehandsome.com/handsome"+"/ko/p"+"/"+$("#productCode").val();
    var href = "http://twitter.com/home?status=" + encodeURIComponent($("#productName")) + " " + encodeURIComponent(url);
    var a = window.open(href, 'twitter', '');
    if (a) {
        a.focus();
    }
}

function fn_goCategori(categori){
    window.location.href= "/ko/c/"+categori+"/"+categori;
}

function fn_goOuCategori(categori){
    window.location.href= "/ko/c/ou_"+categori+"/ou";
}

function fn_goSubCategori(categori, subBrandCd){
    window.location.href= "/ko/c/"+categori+"/"+categori+"?subBrand="+subBrandCd;
}

function fn_layerAlert(text) {
    var la = new layerAlert(text);
    return;
}

/*매장수령*/
function fn_getPopupStoreInfo(){
    
    var productCode = $("#productCode").val();
    
    $.ajax({
         url: '/ko/b/searchPickUpStore',
         type: "GET",
         dataType:"json",
         data: {"brandCode":"BR02","storeType": "BR02", "searchWord":$('#storePickupSearchWord').val()},
         success: function(data){
             storePickUpHtml(data);
             
            var tbodyTr=$('#popupStorePickupContent tr');
            var trLength=$('#popupStorePickupContent tr').length;
            for(var i=2;i<trLength;i++){
                tbodyTr.eq(i).css('background','#f8f8f8');
                tbodyTr.eq(i+1).css('background','#f8f8f8');
                i+=3;
            }
         },
         error: function(xhr, Status, error) {
            /* var la = new layerAlert(error);
            la.confirmAction = function(){
                return;
            }; */
            console.log(error);
         }
    });
    
}

var storePickUpList = "";
function storePickUpHtml(data){
     storePickUpList = data;
     var paging = data.pagination;
     
     var storeId = $("#storeId").val();
     var storePickupDate = $("#storePickupDate").val();
     var selectStorePickupDateDivison = "";

     var storePickUpHtml = "";
     if(storePickUpList == null || storePickUpList.length < 1){
         storePickUpHtml += "<tr>";
         storePickUpHtml +=     "<td colspan='4' class='no_data'>";
         storePickUpHtml +=     '입력하신 매장명 혹은 주소로는 선택하신</br>상품을 수령 할 수 있는 매장이 없습니다.';
         storePickUpHtml +=     "</td>";
         storePickUpHtml += "</tr>";
     }else{
        for(var i=0; i<storePickUpList.length; i++){
            var selectStoreIdProp = "";
            
            if(storeId != "" && storePickUpList[i].branchCode == storeId) {
                selectStoreIdProp = "checked";
                selectStorePickupDateDivison = "#sel_rd"+i;
            }
            
            storePickUpHtml += "<tr> \n";
            storePickUpHtml += "<td><input name=\"sel_cp\" id=\"sel_rd"+i+"\" type=\"radio\" title=\"배송지 선택\" "+selectStoreIdProp+"></td> \n";
            
            storePickUpHtml += "<td> \n";
            storePickUpHtml += " <div> \n";
            storePickUpHtml += "  <span>"+storePickUpList[i].branchName+"</span> \n";
            storePickUpHtml += "   <p>"+storePickUpList[i].branchAddress+"</p> \n";
            storePickUpHtml += " </div> \n";
            storePickUpHtml += "</td> \n";
            storePickUpHtml += "<td>"+storePickUpList[i].branchTelephone+"</td> \n";
            storePickUpHtml += "</tr> \n";
            
            storePickUpHtml += "<tr class=\"receive_date_wrap1807\" style=\"display:none;\"> \n";
            storePickUpHtml += "    <td></td> \n";
            storePickUpHtml += "    <td colspan=\"2\"> \n";
            storePickUpHtml += "        <div class=\"receive_date\"> \n";
            storePickUpHtml += "            <p class=\"receive_date_tlt\">수령 신청일 선택</p> \n";
            
            storePickUpHtml += "            <ul> \n";
            for(var j=0; j<storePickUpList[i].pickupPossibleDateList.length; j++) {
                var pickupPossibleDate = storePickUpList[i].pickupPossibleDateList[j];
                var pickupPossibleDateConv = pickupPossibleDate.substring(4,6) + "월 " + pickupPossibleDate.substring(6,8) + "일";
                storePickUpHtml += "                <li><a href=\"#;\" name=\"storePickupDate\" data-value="+pickupPossibleDate+" data-storeid="+storePickUpList[i].branchCode+">"+pickupPossibleDateConv+"</a></li> \n";
            }
            storePickUpHtml += "            </ul> \n";
            storePickUpHtml += "        </div> \n";
            storePickUpHtml += "    </td> \n";
            storePickUpHtml += "</tr> \n";
        }
     }
     $("#popupStorePickupContent").html(storePickUpHtml);
     
     if(storeId != "") {
         $(selectStorePickupDateDivison).click();
         
        $("a[name='storePickupDate'][data-storeid='"+storeId+"']").each(function(){
            var pickupDate = $(this).data("value");
            
            if(pickupDate == storePickupDate) {
                $(this).click();
                return false;
            }
        });
     }
}
/*매장수령*/

function setColorName(color) {
    $("#colorNameContent").html(color);
}

// 재입고 알림 신청
function getWarehousingPage(productcode, size) {
    
    $('form[name=addToCartForm] input[name=productCodePost]').val(productcode);
    $('form[name=addToCartForm] input[name=productCodeType]').val('ApparelStyleVariantProduct');
    
    
    var clc = new customLayerConfirm('로그인 후 신청 가능합니다.<br />로그인 하시겠습니까?', '확인', '취소');
    clc.confirmAction = function(){
        location.href='/ko/member/login';
    };
    
    return;
    
    
    var color, colorCode;
    var productCodeArr = new Array();
    
    if(productcode.indexOf("_") > -1) {
        productCodeArr = productcode.split("_");
    }
    
    
        if(productCodeArr[1] == "CM") {
            
                    color = "CAMEL";
                
        }
    
    
    $("#popupHProduct").val(productcode);
    $("#popupBrandName").text($("#brandName").val());
    $("#popupProductName").text($("#productName").val());
    $("#popupProductColor").html("COLOR : " + color + "<span class='and_line'>/</span> SIZE : " + size);
    $("#popupProductSize").val(size);
    $("#popupProductPrice").text('₩1,250,000');
    if($(".respon_image:eq(0)").attr("src").indexOf("dims") > -1) {
        $("#popupProductImageS01").attr("src", $(".respon_image:eq(0)").attr("src").substring( 0, $(".respon_image:eq(0)").attr("src").lastIndexOf("_")) + "_S01.jpg");
    } else {
        $("#popupProductImageS01").attr("src", $(".respon_image:eq(0)").attr("src").replace( $(".respon_image:eq(0)").attr("src").substring( $(".respon_image:eq(0)").attr("src").lastIndexOf("_"), $(".respon_image:eq(0)").attr("src").length-4 ), "_S01"));
    }
    $("#popupProductImageS01").attr("alt", $("#productName").val());
    
    $.ajax({
        url: '/ko/p/checkRewareHousing',
        type: 'GET',
        dataType: 'json',
        data: { code:productcode },
        success: function(data) {
            if ( 'N' == data.loginYn ) {
                var clc = new customLayerConfirm("장시간 사용하지 않아 로그아웃 되었습니다.", "확인", "취소");
                clc.confirmAction = function() {
                    location.href='/ko/member/login';
                };
            }
            
            if ( data.rewareHousingUserYn == "Y" ) {
                var cla = new customLayerAlert(""+data.userID+"(ID) 로<br/>이미 재입고 알림 신청 이력이 있습니다.<br/>(동일 e-mail)");
            } else if ( data.rewareHousingYn == "Y" ) {
                var cla = new customLayerAlert("이미 신청을 완료하였습니다.");
            } else {
                if ( data.rewareHouseOtherProductYn == "Y" ) {
                    var clc = new customLayerConfirm("동일상품의 재입고 알림 신청내역이 있습니다.<br/>다른 옵션으로 재입고 알림 신청을<br/>추가하시겠습니까?", "확인", "취소");
                    clc.confirmAction = function() {
                        viewPopup("#restockReminder");
                    }
                } else {
                    viewPopup("#restockReminder");
                }
            }
            
        }
    });
}

//재입고 완료 신청
function reqRewarehousingAlram() {
    
    //로그인체크
    
    var clc = new customLayerConfirm("로그인 후 신청 가능합니다.<br />로그인 하시겠습니까?", "확인", "취소");
    clc.confirmAction = function(){
        location.href='/ko/member/login';
    };
    return;
    
    
    //신청
    $.ajax({
        url : '/ko/p/setRewareHousing',
        type : 'GET',
        datatype: 'json',
        data :
        {
            'code' : $('#popupHProduct').val(),
            'emailAddress' : $('#email_address').val() + '@' + $('#email_domain').val(),
            'CSRFToken' : "77badcd5-86c7-4e47-8c1f-0663967bf7b6"
        },
        success : function(data) 
        {
            if ( data.rsltCd == 'E1') {
                var clc = new customLayerConfirm("장시간 사용하지 않아 로그아웃 되었습니다.", "확인", "취소");
                clc.confirmAction = function() {
                    location.href='/ko/member/login';
                };
            } else {
                var msg = '';
                if ( data.rsltCd == 'S') {
                    msg = "재입고 알림 신청을 완료하였습니다.";
                } else if ( data.rsltCd == 'E2') {
                    msg = "등록된 이메일 정보와 다릅니다.<br />확인 후 다시 시도하여 주세요.";
                } else if ( data.rsltCd == 'E3') {
                    msg = ""+data.userID+"(ID) 로<br/>이미 재입고 알림 신청 이력이 있습니다.<br/>(동일 e-mail)";
                } else if ( data.rsltCd == 'E4') {
                    msg = "이미 신청을 완료하였습니다.";
                }
                var cla = new customLayerAlert(msg);
                cla.confirmAction = function(){
                    hideProductLayer();
                    $(".popwrap").hide();
                };    
            }
        },
        error   : function(xhr, Status, error) {
            var la = new layerAlert("[Error] " + error);
            return;
        }
    });
    
}

/* 1주년 이벤트 처리 */
function enterEvent(id,name){
    var uid = "anonymous";
    var html = "";
    html += '<div class="popwrap w_type_6" id="oneEventLayer">';
    html += '   <div class="pop_cnt">';
    html += '       <div class="evt_1st_wrap">';
    html += '           <div class="evt_product_wrap">';
    html += '               <div class="evt_img">';
    html += '                   <img src="'+$("#imageDiv ul li:eq(0) img").attr("src")+'" alt="">';
    html += '               </div>';
    html += '               <div class="evt_box cover" style="top: 0px;">';
    html += '                   <button type="button"></button>';
    html += '               </div>';
    html += '           </div>';
    html += '           <div class="evt_txt_wrap">';
    html += '               <img src="${pageContext.request.contextPath}/resources/images/products/evt_1st_title.png" alt="“ONE HANDSOME YEAR” TIME TO BE HANDSOME">';
    html += '               <p class="evt_1st_txt">';
    html += '                   지금 <strong>이 아이템을 가지고 싶은 이유</strong>를 작성하여<br>';
    html += '                   응모해 주세요.<br>';
    html += '                   더한섬닷컴이 당신을 더 HANDSOME하게<br>'; 
    html += '                   만들어 줄 아이템을 선물로 드립니다.';
    html += '               </p>';
    if(uid == "anonymous"){
        html += '               <textarea rows="5" id="oneEventTxt" onclick="alert(\'로그인 후, 응모 가능합니다.\'); goLogin(\'OneYearEvent\');" placeholder="50자 이상 500자 내외의 텍스트로 작성해주세요. 욕설, 비방 등의 글은 임의로 삭제될 수 있습니다.(1일 1회 응모 가능)"></textarea>';
    }else{
        html += '               <textarea rows="5" id="oneEventTxt" placeholder="50자 이상 500자 내외의 텍스트로 작성해주세요. 욕설, 비방 등의 글은 임의로 삭제될 수 있습니다.(1일 1회 응모 가능)"></textarea>';
    }   
    html += '               <p class="guide_comment">50자 이상 입력해주세요.</p>';
    html += '           </div>';
    html += '       </div>';
    html += '       <div class="btnwrap">';
    html += '           <input value="이벤트 응모하기" id="enterEventBtn" class="btn gray" type="button">';
    html += '           <input class="btn wt mr0 okBtn" value="취소하기" type="button">';
    html += '       </div>';
    html += '       <p class="evt_1st_txt">※ 응모 후 SNS 공유를 통해 당첨 확률을 높혀보세요.</p>';
    html += '   </div>';
    html += '   <a href="#;" class="btn_close"><img src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png" alt="닫기"></a>';
    html += '</div>';
    
    $("#bodyWrap").prepend(html);
    var popupControll = new LayerPopupController("oneEventLayer");
    popupControll.openNewLayerCenter("oneEventLayer");
    $("#bodyWrap #oneEventLayer").remove();
    
    /*
    $.ajax({
         url: '/ko/magazine/oneItemEventCheck',
         type: "GET",
         dataType:"json",
         data: {product : $(".item_detail_info .color_chip > li > a.on").parent().attr("id"), contents : $("#oneEventTxt").val(), userId : "anonymous", userName : "Anonymous"},
         async: false,
         success: function(data){
            if(data.contents != null){
                $("#oneEventTxt").val(data.contents);
                $("#enterEventBtn").val("이벤트 확인하기");
            }else{
                var i = $(".evt_box").index($(this));
                $('.evt_box').eq(i).removeClass('cover');
                $('.evt_box').eq(i).animate({top: 346 + "px"}, 1000);
            }
         },
         error: function(xhr, Status, error) {
            console.log(error);
         }
    });
    
    $("#enterEventBtn").on("click",function(){
        //응모하기
        if($("#enterEventBtn").val() == "이벤트 응모하기"){
            if($("#oneEventTxt").val().length < 50){
                alert("50자 이상 입력해주세요.");
                return false;
            }
            if($("#oneEventTxt").val().length > 501){
                alert("500자 내외의 텍스트로 작성해주세요.");
                $("#oneEventTxt").val($("#oneEventTxt").val().substr(0, 500));
                return false;
            }
            
            $.ajax({
                 url: '/ko/magazine/oneItemEvent',
                 type: "GET",
                 dataType:"json",
                 data: {product : $(".item_detail_info .color_chip > li > a.on").parent().attr("id"), contents : $("#oneEventTxt").val(), userId : id, userName : name},
                 async: false,
                 success: function(data){
                     if(data == "success"){
                        var i = $(".evt_box").index($(this));
                        $('.evt_box').eq(i).addClass('cover');
                        $('.evt_box').eq(i).animate({top: 0}, 1000,function(){
                            alert("이벤트에 응모 되었습니다.");
                        });
                        $("#enterEventBtn").val("이벤트 확인하기");
                     }else{
                        alert("1일 1회 응모 가능합니다. 내일 다시 응모해 주세요.");
                        return false;
                     }
                 },
                 error: function(xhr, Status, error) {
                    console.log(error);
                 }
            });
        }else{
            //페이지 이동
            location.href = '/ko/magazine/eventOneYearItem';
        }
    });
    */
}

function videoControls(){
    var video = document.getElementById("video180706");
    var playButton = document.getElementById("video_playpause");
    var seekBar = document.getElementById("seekBar");
    seekBar.addEventListener("change", function() {
        var time = video.duration * (seekBar.value / 100);
        video.currentTime = time;
    });
    video.addEventListener("timeupdate", function() {
        var value = (100 / video.duration) * video.currentTime;
        seekBar.value = value;
    });
    seekBar.addEventListener("mousedown", function() {
        video.pause();
    });
    seekBar.addEventListener("mouseup", function() {
        video.play();
    });
}
var v2 = false;
function videoFunction(){
    $('.btn_video_play').on('click',function(){//동영상 재생
        $('.item_visual').css('opacity','0');
        $('.play_video180706').stop().show();
        $('.btn_video_play, .btn_zoom').stop().hide();
        $('#video_playpause').removeClass('on').css('background-image','url("${pageContext.request.contextPath}/resources/images/products/ico_pause1807.png")');
        if(v2 == true){
            var html="";
            html+='<video style="width:100%;" id="video180706" onended="videoEnd()">';
            
            html+='</video>';
            $('.reload_video').html(html);
        }
        $('#video180706')[0].play();
        $('.btn_video_close').stop().show();
    });
    $(".play_video180706").hover(
      function () {
        $('#video_playpause').stop(true, true).delay(800).fadeTo('slow', 1)
      },
      function () {
          $('#video_playpause').stop(true, true).delay(1000).fadeTo('slow', 0)
      }
    );
    $('#video_playpause').on('click',function(){
        if(!$(this).hasClass('on')){
            $(this).addClass('on');
            $('#video180706')[0].pause();
            $('#video_playpause').css('background-image','url("${pageContext.request.contextPath}/resources/images/products/ico_play1807.png")');
            v2 = false;
        }else{
            $(this).removeClass('on');
            $('#video180706')[0].play();
            $('#video_playpause').css('background-image','url("${pageContext.request.contextPath}/resources/images/products/ico_pause1807.png")');
            v2 = false;
        }
    });
}
function videoEnd(){
    $('.play_video180706').stop().hide();
    $('.item_visual').css('opacity','1');
    $('.btn_video_play, .btn_zoom').stop().show();
    $('.btn_video_close').stop().hide();
    v2 = false;
}
function videoClose(){
    $('.play_video180706').stop().hide();
    $('.item_visual').css('opacity','1');
    $('.btn_video_play, .btn_zoom').stop().show();
    $('.btn_video_close').stop().hide();
    v2 = true;
}
function videoCloseScroll(){//스크롤
    $(window).scroll(function(){
        if($('.play_video180706').is(":visible")){
            var y = $(this).scrollTop();
            var z = $('#video180706').offset().top;
            if (y >= z) {
        videoClose();
            }
            
            if($('#video_playpause').hasClass('on')) {
                $('#video_playpause').removeClass('on');
                $('#video_playpause').css('background-image','url("${pageContext.request.contextPath}/resources/images/products/ico_pause1807.png")');
            }
        }
    });
}

//핏가이드 팝업 리스트 생성
function fitGuidePopList(fitGuideTabCode){
    var imgList = ["", ""];
    var imgList2 = ["", ""];
    
    if($('.rlfit_slide1 .slides li').length == 0 && fitGuideTabCode =='FIRST'){
        var rlfitImgTag = "";
        for(var i=0;i<imgList.length;i++){
            if(i == 1){
                rlfitImgTag += '<li style="display:none;">';
            }else{
                rlfitImgTag += '<li>';
            }
            rlfitImgTag += '<img src="'+imgList[i]+'/dims/resize/500x500/" alt="173리얼핏 이미지 앞" width="500" height="500"></li>';
        }
        $('.rlfit_slide1 .slides').append(rlfitImgTag).find('img').on('load',function(){
            if($('.rlfit_slide1').find('.bx-wrapper').length == 0){
                rlfitPopSlide1();
                $('.rlfit_slide1 .slides').find('li:eq(1)').css('display','block');
            }
        });
    }else if($('.rlfit_slide2 .slides li').length == 0 && fitGuideTabCode =='SECOND'){
        var rlfitImgTag2 = "";
        for(var i=0;i<imgList2.length;i++){
            if(i == 1){
                rlfitImgTag2 += '<li style="display:none;">';
            }else{
                rlfitImgTag2 += '<li>';
            }
            rlfitImgTag2 += '<img src="'+imgList2[i]+'/dims/resize/500x500/" alt="177리얼핏 이미지 앞" width="500" height="500"></li>';
        }
        $('.rlfit_slide2 .slides').append(rlfitImgTag2).find('img').on('load',function(){
            if($('.rlfit_slide2').find('.bx-wrapper').length == 0){
                rlfitPopSlide2();
                $('.rlfit_slide2 .slides').find('li:eq(1)').css('display','block');
            }
        });
    }
}
//핏가이드 팝업 첫번째탭 슬라이드
function rlfitPopSlide1(){
    var widthLi = $(".rlfit_slide1").width();
    var rlfitTotal = $(".rlfit_slide1 .slides li").length;
    var rlfitPopSlide1 = $(".rlfit_slide1 .slides").bxSlider({
        mode:"horizontal",
        speed:500,
        pager:true,
        moveSlides:1,
        slideWidth:widthLi,
        minSlides:1,
        maxSlides:1,
        auto:false,
        autoHover:false,
        infiniteLoop:false,
        pagerCustom:'.rlfit_slide1 .bx_pager1810',
        prevSelector:'#fitGuiPrev1',
        nextSelector:'#fitGuiNext1'
    });
    if(rlfitTotal <= 1) {
        $(".rlft_slide1 .controls").hide();
    }
}
//핏가이드 팝업 두번째탭 슬라이드
function rlfitPopSlide2(){
    var widthLi = $(".rlfit_slide1").width();
    var rlfitTotal = $(".rlfit_slide2 .slides li").length;
    var rlfitPopSlide1 = $(".rlfit_slide2 .slides").bxSlider({
        mode:"horizontal",
        speed:500,
        pager:true,
        moveSlides:1,
        slideWidth:widthLi,
        minSlides:1,
        maxSlides:1,
        auto:false,
        autoHover:false,
        infiniteLoop:false,
        pagerCustom:'.rlfit_slide2 .bx_pager1810',
        prevSelector:'#fitGuiPrev2',
        nextSelector:'#fitGuiNext2'
    });
    if(rlfitTotal <= 1) {
        $(".rlft_slide2 .controls").hide();
    }
}
//핏가이드 팝업 탭
function chageFitGuideTab(fitGuideTabCode) {
    if(fitGuideTabCode == "FIRST"){
            $('.rlfit_pop_slider .rlfit_slide2').stop().hide();
            $('.rlfit_pop_slider .rlfit_slide1').stop().show();
      if($(".rlfit_slide1 .slides li").length == 0){
                fitGuidePopList(fitGuideTabCode);
      }
    }else if(fitGuideTabCode == "SECOND"){
            $('.rlfit_pop_slider .rlfit_slide1').stop().hide();
            $('.rlfit_pop_slider .rlfit_slide2').stop().show();
      if($(".rlfit_slide2 .slides li").length == 0){
                fitGuidePopList(fitGuideTabCode);
      }
    }
}
function realFitPopup(){//핏가이드 팝업창 열기
    $('.btn_real_fit').on('click',function(){
        if($('#viewRealFit1810').css('display')=="none"){
            viewPopup('#viewRealFit1810');
        }
    });
}
function realFitText(){//핏가이드 말풍선
    $('.btn_real_fit').mouseenter(function(){
        $('.view_realfit1810 .rlfit_txt_expl').stop().show();
    });
    $('.btn_real_fit').mouseleave(function(){
        $('.view_realfit1810 .rlfit_txt_expl').stop().hide();
    });
}
function resetReviewTab(){
    $("#review_tab > li > a").each(function() {
        $(this).removeClass('active');
    });
    $("#review_tab > li:first-child > a").attr('class','active');
    $("#review_tab_active").val('ALL');
}
function mileageInfoView(){//noti 자세히 보기
    $('.mileage_info_wrap1906 .btn_noti_box > span').on('click',function(){
        if($(this).parents('.mileage_info_wrap1906').find('.noti_box').css("display") == "none"){
            $(this).parents('.mileage_info_wrap1906').find('.noti_box').stop().slideDown('fast');
            $(this).closest('.btn_noti_box').addClass('on');
            $(this).text('닫기');
            
            GA_Event('상품평','마일리지 자세히 보기','클릭');
        }else{
            $(this).parents('.mileage_info_wrap1906').find('.noti_box').stop().slideUp('fast');
            $(this).closest('.btn_noti_box').removeClass('on');
            $(this).text('자세히 보기');
        }
    });
}

function onErrorImg(washCode){

    if(washCode.tagName == "IMG"){          // 정상 이미지 일 때
	    $("#newHowToWash img").each(function(){
	        if($(this).attr("alt") == washCode.alt){
	            $(this).hide();
	            $(this).parent().find(".code_num").css("display", "block");
	        }
	    });
    } else if(washCode.tagName == "SPAN"){   // 에러 이미지 대체 화면 일 때
        
        $("#newHowToWash img").each(function(){
            
            var origin = $(washCode).parent().find("img").attr("alt");
            
            if($(this).attr("alt") == origin){
                $(this).show();
                $(this).parent().find(".code_num").css("display", "none");
            }
        });
    }
}
var lookBookSwiper1912 = "";
var lookBookbxslider ="";
function lookBookSwiperSlide1912(){//191212 추가2
	prevMoveImageWidth = 0;
    moveYn = true;
	
	if(lookBookbxslider!=""){
		
		$(".bx-prev").show();
		$(".bx-next").show();
		$(".lookbook_prev").hide();
		$(".lookbook_next").hide();
	
		lookBookbxslider.destroySlider();
	}
	
	lookBookbxslider = $('#lookbookListContent .productSlide').bxSlider({
		pager:false,
		infiniteLoop: false,
		slideWidth: 'auto',
		onSliderLoad:function(){
			var viewpordWidth = $('#lookbookListContent .bx-viewport').width(); //룩북 보여지는 DIV크기
			var viewpordOffsetLeft = $('#lookbookListContent .bx-viewport').offset().left; //룩북 DIV 위치
			
			var liLastWidth = $('#lookbookListContent .productSlide li:last').width(); 
			var liFirstOffsetLeft = $('#lookbookListContent .productSlide li:first').offset().left; 
			var liLastOffsetRight = $('#lookbookListContent .productSlide li:last').offset().left + liLastWidth; //마지막이미지의 왼쪽위치값 + 마지막이미지사이즈 + padding값
			
			var totalImgWidth = liFirstOffsetLeft + liLastOffsetRight - viewpordOffsetLeft - viewpordOffsetLeft; //첫번째 이미지의 왼쪽 위치값1 + 마지막 이미지의 오른쪽 위치값 - 첫번째,마지막 이미지의 공백부분 위치값 
			
			if(viewpordWidth > totalImgWidth){
				$(".bx-has-controls-direction").hide();
			}else{
			
				var nowImageWidth = $('#lookbookListContent .productSlide li:first').width();
				var viewpordOffsetRight = $('#lookbookListContent .bx-viewport').offset().left + viewpordWidth; 
				
				var restImageWidth = liLastOffsetRight - viewpordOffsetRight;
				
				if(nowImageWidth > restImageWidth){
					$(".bx-next").hide();
					$(".lookbook_next").show();
				}else{
					$(".bx-next").show();
					$(".lookbook_next").hide();
				}
			}
			
			
		},
		onSlideAfter:function($slideElement, oldIndex, newIndex){
			var viewpordWidth = $('#lookbookListContent .bx-viewport').width();
			var viewpordOffsetRight = $('#lookbookListContent .bx-viewport').offset().left + viewpordWidth;
			
			var liLastWidth = $('#lookbookListContent .productSlide li:last').width();
			var liFirstOffsetLeft = $('#lookbookListContent .productSlide li:first').offset().left;
			var liLastOffsetRight = $('#lookbookListContent .productSlide li:last').offset().left + liLastWidth;
			
			var nowImageWidth = $('#lookbookListContent .productSlide li').eq(newIndex).width();
			var restImageWidth = liLastOffsetRight - viewpordOffsetRight;
			
			if(nowImageWidth > restImageWidth){
				$(".bx-next").hide();
				$(".lookbook_next").show();
			}else{
				$(".bx-next").show();
				$(".lookbook_next").hide();
			}
			
		}
	});
}
var prevMoveImageWidth = 0;
var moveYn = true;

function lastImgMove(){
	if(moveYn){
		var isChrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
		var viewpordWidth = $('#lookbookListContent .bx-viewport').width();
		var viewpordOffsetRight = $('#lookbookListContent .bx-viewport').offset().left + viewpordWidth;
	
		var liLastWidth = $('#lookbookListContent .productSlide li:last').width();
		var liLastOffsetRight = $('#lookbookListContent .productSlide li:last').offset().left + liLastWidth;
		
		var moveImageWidth = liLastOffsetRight - viewpordOffsetRight;
		
		if(moveImageWidth > 5){
			if($.browser.msie == true && Number($.browser.version) <= 9) { 
				var nowSlider = parseInt(lookBookbxslider.css('left'));
				prevMoveImageWidth = nowSlider;
				lookBookbxslider.stop().animate({'left':(nowSlider-moveImageWidth)+'px'});
			}else{
				if(isChrome){
					var nowSlider = parseInt(lookBookbxslider.css('transform').split(',').reverse()[1]);
				}else{
					var nowSlider = parseInt(lookBookbxslider.css('transform').split(',').reverse()[3]);
				}
				
				prevMoveImageWidth = nowSlider;
			
				lookBookbxslider.css('transition-duration','0.5s');
				lookBookbxslider.css('transform','translate3d('+(nowSlider-moveImageWidth)+'px,0px,0px)');
			}
			$(".bx-prev").hide();
			$(".lookbook_prev").show();
			
			moveYn=false;
		}
	}
}
function prevImgMove(){
	if($.browser.msie == true && Number($.browser.version) <= 9) { 
		lookBookbxslider.stop().animate({'left':prevMoveImageWidth+'px'});
	
	}else{
		lookBookbxslider.css('transition-duration','0.5s');
		lookBookbxslider.css('transform','translate3d('+prevMoveImageWidth+'px,0px,0px)');
	}
	$(".bx-prev").show();
	$(".lookbook_prev").hide();
	moveYn=true;
}



function setEcommerceData(action){
    var baseCode = "MN2C8WJC026WP_CM";
    if("MN2C8WJC026WP_CM".indexOf("_") > -1) {
        baseCode = "MN2C8WJC026WP_CM".split("_")[0];
    }
    
    /* 상품 정상이월세일 */
    
    
    if(action == "Detail"){
        dataLayer.push({
            'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Detail','layerLabel' : undefined,'nonInteraction' : true,
            'ecommerce': {
            'currencyCode': 'KRW', //통화
            'detail': {
                'products':
                    [{
                        "id": "MN2C8WJC026WP_CM".indexOf("_") > -1 ? "MN2C8WJC026WP_CM".split("_")[0] : "MN2C8WJC026WP_CM", //상품코드
                        "name": "캐시미어 더블 재킷", //상품명
                        "brand": "MINE", //상품 브랜드
                        "category": decodeURIComponent("WOMEN")+"/"+decodeURIComponent("OUTER")+"/"+decodeURIComponent("JACKET"), //상품 카테고리
                        "dimension19": "정상상품_정상가" //상품 정상이월세일
                    }]
                }
            }
        });
        
    }else if(action == "Add To Cart"){
        var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
        dataLayer.push({
	        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Add To Cart','layerLabel' : undefined,
	        'ecommerce': {
	        'currencyCode': 'KRW', //통화
	        'add': {
		        'products':
			        [{
				        "id": productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
				        "name": "캐시미어 더블 재킷", //상품명
				        "brand": "MINE", //상품 브랜드
                        "category": decodeURIComponent("WOMEN")+"/"+decodeURIComponent("OUTER")+"/"+decodeURIComponent("JACKET"), //상품 카테고리
				        "dimension19": "정상상품_정상가" //상품 정상이월세일
			        }]
		        }
	        }
	    });
	    
    }else if(action == "Checkout1(원클릭결제)"){
	    var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
	    var color = $("#colorName").val();
        var size = "";
        $(".size_chip li > a").each(function(){
           if($(this).hasClass("on")){
               size = $(this).text();
           }
        });
	    dataLayer.push({
	        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Checkout','layerLabel' : '원클릭결제',
	        'ecommerce': {
	        'currencyCode': 'KRW', //통화
	        'checkout': {
		        'actionField': { 'step': 1}, //결제단계
		        'products':
			        [{
				        "id":  productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
				        "name": "캐시미어 더블 재킷", //상품명
				        "brand": "MINE", //상품 브랜드
                        "category": decodeURIComponent("WOMEN")+"/"+decodeURIComponent("OUTER")+"/"+decodeURIComponent("JACKET"), //상품 카테고리
				        "variant": color+"_"+size, //변형 제품(옵션)
				        "quantity": $("#txtqty").val(), //상품 수량
				        "dimension19": "정상상품_정상가" //상품 정상이월세일
			        }]
		        }
	        }
	    });
	}else if(action == "Checkout2(원클릭결제)"){
	    var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
        var color = $("#colorName").val();
        var size = "";
        $(".size_chip li > a").each(function(){
           if($(this).hasClass("on")){
               size = $(this).text();
           }
        });
		dataLayer.push({
			'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Checkout','layerLabel' : '원클릭결제',
			'ecommerce': {
			'currencyCode': 'KRW', //통화
			'checkout': {
			    'actionField': { 'step': 2, 'option': '1CLICK 결제' }, //결제단계 및 결제수단
			    'products':
			        [{
			            "id":  productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
			            "name": "캐시미어 더블 재킷", //상품명
			            "brand": "MINE", //상품 브랜드
                        "category": decodeURIComponent("WOMEN")+"/"+decodeURIComponent("OUTER")+"/"+decodeURIComponent("JACKET"), //상품 카테고리
			            "variant": color+"_"+size, //변형 제품(옵션)
			            "quantity": $("#txtqty").val(), //상품 수량
			            "dimension19": "정상상품_정상가" //상품 정상이월세일
			        }]
			    }
			}
		});
	}
    //checkout1(바로주문) 액션은 주문서페이지에서 일괄적으로 처리
    //else if(action == "Checkout1(바로주문)"){}
    /* Ecommerce data 초기화
    dataLayer에 남아 있는 경우에는 전자상거래 단계만을 위해 사용하는
    필드들이 세팅되어 있으므로 undefined를 통해 초기화합니다. */
    dataLayer.push({
	    'layerCategory' : undefined,
	    'layerAction' : undefined,
	    'layerLabel' : undefined,
	    'nonInteraction' : false,
	    'ecommerce' : undefined
    });
    
}

function setEcommerceData2(idx, type){
    var data;
    
    if(type == "RECOMMEND_FROM_DETAIL"){
        
                
                if("0" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8WJM316M".indexOf("_") > -1 ? "SH2C8WJM316M".split("_")[0] : "SH2C8WJM316M", //상품코드
                                    "name": "모크넥 스트랩 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("1" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8WPC521M".indexOf("_") > -1 ? "SH2C8WPC521M".split("_")[0] : "SH2C8WPC521M", //상품코드
                                    "name": "[SET-UP] 밴딩 원턱 팬츠", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("2" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SY2CATTO339WM1".indexOf("_") > -1 ? "SY2CATTO339WM1".split("_")[0] : "SY2CATTO339WM1", //상품코드
                                    "name": "언밸런스 헴 슬릿 티셔츠", //상품명
                                    "brand": "SYSTEM", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("3" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22C9TTO576W".indexOf("_") > -1 ? "O22C9TTO576W".split("_")[0] : "O22C9TTO576W", //상품코드
                                    "name": "텍스처 블록 펄 티셔츠", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("4" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SY2C8WJS656WM1".indexOf("_") > -1 ? "SY2C8WJS656WM1".split("_")[0] : "SY2C8WJS656WM1", //상품코드
                                    "name": "디테쳐블 커프스 체크 재킷", //상품명
                                    "brand": "SYSTEM", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("5" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C9WJM306M".indexOf("_") > -1 ? "SH2C9WJM306M".split("_")[0] : "SH2C9WJM306M", //상품코드
                                    "name": "캐시미어 블렌드 포켓 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("6" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22CAWJC381W".indexOf("_") > -1 ? "O22CAWJC381W".split("_")[0] : "O22CAWJC381W", //상품코드
                                    "name": "울 블렌드 트리밍 재킷", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("7" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22C9QOT604W".indexOf("_") > -1 ? "O22C9QOT604W".split("_")[0] : "O22C9QOT604W", //상품코드
                                    "name": "디테쳐블 다운 점퍼", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("8" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C9WOT304M".indexOf("_") > -1 ? "SH2C9WOT304M".split("_")[0] : "SH2C9WOT304M", //상품코드
                                    "name": "캐시미어 블렌드 패널 재킷", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("9" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8WJM323MM".indexOf("_") > -1 ? "SH2C8WJM323MM".split("_")[0] : "SH2C8WJM323MM", //상품코드
                                    "name": "텍스처 블록 레더 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("10" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8WOT308M".indexOf("_") > -1 ? "SH2C8WOT308M".split("_")[0] : "SH2C8WOT308M", //상품코드
                                    "name": "모크넥 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("11" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8LJM902M".indexOf("_") > -1 ? "SH2C8LJM902M".split("_")[0] : "SH2C8LJM902M", //상품코드
                                    "name": "램스킨 셔츠 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("12" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22CAWPC331W".indexOf("_") > -1 ? "O22CAWPC331W".split("_")[0] : "O22CAWPC331W", //상품코드
                                    "name": "레이어 패널 밴딩 팬츠", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("13" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SY2C8WOTT04WM".indexOf("_") > -1 ? "SY2C8WOTT04WM".split("_")[0] : "SY2C8WOTT04WM", //상품코드
                                    "name": "[PARIS] 하이넥 오버사이즈 패딩 점퍼", //상품명
                                    "brand": "SYSTEM", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("14" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8WJM303M".indexOf("_") > -1 ? "SH2C8WJM303M".split("_")[0] : "SH2C8WJM303M", //상품코드
                                    "name": "백 플랩 칼라 점퍼", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("15" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "SH2C8KVT008M".indexOf("_") > -1 ? "SH2C8KVT008M".split("_")[0] : "SH2C8KVT008M", //상품코드
                                    "name": "울 하프 집업 스트랩 베스트", //상품명
                                    "brand": "SYSTEM HOMME", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("16" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22C8KCD840W".indexOf("_") > -1 ? "O22C8KCD840W".split("_")[0] : "O22C8KCD840W", //상품코드
                                    "name": "글리터 인타르시아 펄 가디건", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
                
                if("17" == idx){
                    data = {
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                            'currencyCode': 'KRW', //통화
                            'click': {
                                'actionField': { 'list': '상품상세_추천상품' }, //상품 리스트명
                                'products':
                                [{
                                    "id": "O22C9NOT672W".indexOf("_") > -1 ? "O22C9NOT672W".split("_")[0] : "O22C9NOT672W", //상품코드
                                    "name": "디테쳐블 데님 베스트 레이어 점퍼", //상품명
                                    "brand": "O'2nd", //상품 브랜드
                                    "category": "", //상품 카테고리
                                    "position": 11 //상품 위치
                                }]
                            }
                        }
                    };
                }
                
                
                
    }else if(type == "RECENT_FROM_DETAIL"){
        
                   
                   if("0" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "SH2C8WJM323M".indexOf("_") > -1 ? "SH2C8WJM323M".split("_")[0] : "SH2C8WJM323M", //상품코드
                                       "name": "텍스처 블록 레더 점퍼", //상품명
                                       "brand": "SYSTEM HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("1" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "IL2C9ASZ096W".indexOf("_") > -1 ? "IL2C9ASZ096W".split("_")[0] : "IL2C9ASZ096W", //상품코드
                                       "name": "엠블럼 밴딩 스니커즈", //상품명
                                       "brand": "LÄTT", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("2" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "O22C8WJC364WP1".indexOf("_") > -1 ? "O22C8WJC364WP1".split("_")[0] : "O22C8WJC364WP1", //상품코드
                                       "name": "[기은세 Pick] 울 블렌드 더블 버튼 재킷", //상품명
                                       "brand": "O'2nd", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("3" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "MN2B7KTO602W".indexOf("_") > -1 ? "MN2B7KTO602W".split("_")[0] : "MN2B7KTO602W", //상품코드
                                       "name": "메쉬 크로셰 니트 탑", //상품명
                                       "brand": "MINE", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("4" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TH2C9WPC581M".indexOf("_") > -1 ? "TH2C9WPC581M".split("_")[0] : "TH2C9WPC581M", //상품코드
                                       "name": "울 블렌드 테이퍼드 팬츠", //상품명
                                       "brand": "TIME HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("5" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "SJ2C8TTO416W".indexOf("_") > -1 ? "SJ2C8TTO416W".split("_")[0] : "SJ2C8TTO416W", //상품코드
                                       "name": "와플 칼라 티셔츠", //상품명
                                       "brand": "SJSJ", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("6" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TM2C7TTO901WM1".indexOf("_") > -1 ? "TM2C7TTO901WM1".split("_")[0] : "TM2C7TTO901WM1", //상품코드
                                       "name": "레터링 비딩 크롭 탑", //상품명
                                       "brand": "TIME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("7" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TM2C9KOT250W".indexOf("_") > -1 ? "TM2C9KOT250W".split("_")[0] : "TM2C9KOT250W", //상품코드
                                       "name": "카멜 블렌드 디테쳐블 후드 재킷", //상품명
                                       "brand": "TIME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("8" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "YS2D1WJC003WHD".indexOf("_") > -1 ? "YS2D1WJC003WHD".split("_")[0] : "YS2D1WJC003WHD", //상품코드
                                       "name": "[HIDDEN FOREST MARKET] 마티니 비건 레더 크롭 집업 재킷", //상품명
                                       "brand": "FOURM THE STORE", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("9" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "MM2C9WJC203M".indexOf("_") > -1 ? "MM2C9WJC203M".split("_")[0] : "MM2C9WJC203M", //상품코드
                                       "name": "울 블렌드 하운드투스 재킷", //상품명
                                       "brand": "CLUB MONACO", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("10" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TH2C8WJC200M".indexOf("_") > -1 ? "TH2C8WJC200M".split("_")[0] : "TH2C8WJC200M", //상품코드
                                       "name": "울 블렌드 트위드 재킷", //상품명
                                       "brand": "TIME HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("11" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "SH2C9NPC543NM".indexOf("_") > -1 ? "SH2C9NPC543NM".split("_")[0] : "SH2C9NPC543NM", //상품코드
                                       "name": "[NEW PREP] 원턱 와이드 데님 팬츠", //상품명
                                       "brand": "SYSTEM HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("12" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TH2C8WOT317M".indexOf("_") > -1 ? "TH2C8WOT317M".split("_")[0] : "TH2C8WOT317M", //상품코드
                                       "name": "후드 블록 점퍼", //상품명
                                       "brand": "TIME HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("13" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "TH2C9WJC204M".indexOf("_") > -1 ? "TH2C9WJC204M".split("_")[0] : "TH2C9WJC204M", //상품코드
                                       "name": "알파카 블렌드 체크 재킷", //상품명
                                       "brand": "TIME HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("14" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "SH2C9ASZ092M".indexOf("_") > -1 ? "SH2C9ASZ092M".split("_")[0] : "SH2C9ASZ092M", //상품코드
                                       "name": "레더 첼시 부츠", //상품명
                                       "brand": "SYSTEM HOMME", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
                   
                   if("15" == idx){
                       data = {'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                               'ecommerce': {
                               'currencyCode': 'KRW', //통화
                               'click': {
                                   'actionField': { 'list': '상품상세_최근본상품' }, //상품 리스트명
                                   'products':
                                   [{
                                       "id": "LV2C7ASZ006W".indexOf("_") > -1 ? "LV2C7ASZ006W".split("_")[0] : "LV2C7ASZ006W", //상품코드
                                       "name": "빈티지 솔 범퍼 스니커즈", //상품명
                                       "brand": "LANVIN PARIS", //상품 브랜드
                                       "category": "", //상품 카테고리
                                       "position": 12 //상품 위치
                                   }]
                               }
                           }
                       };
                   }
                   
                   
    }
    if(typeof data != undefined && data != null && data != ""){
        dataLayer.push(data);
        /* Ecommerce data 초기화
        dataLayer에 남아 있는 경우에는 전자상거래 단계만을 위해 사용하는
        필드들이 세팅되어 있으므로 undefined를 통해 초기화합니다. */
        dataLayer.push({
            'layerCategory' : undefined,
            'layerAction' : undefined,
            'nonInteraction' : false,
            'ecommerce' : undefined
        });
    
    }
}

function callRecommendClick(obj, idx){
    GA_Detail('recommend',obj);
    setEcommerceData2(idx,'RECOMMEND_FROM_DETAIL');
}

//매장 재고 확인 팝업
function fn_stockconfirm() {
	$(".more_stockbox").hide();
	$(".color_size_qty.czq_pop .color_chip li a").removeClass("on");
	$(".color_size_qty.czq_pop .size_chip li a").removeClass("on");
	var colorCd, sizeCd;
	
	if($("#stockconfirm").css("display") == "none"){
		var obj=$("#stockconfirm");
		var lp=($(window).width()-obj.outerWidth())/2;
		var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
		var scrollTop = $(window).scrollTop();
		if(lp < 0) lp=0;
		if(tp < 0) tp=0;
		$('#productLayer').show();
		obj.show();
	}
	
	$("#contentDiv .color_size_qty .color_chip li").each(function () {
		if($(this).find('a').hasClass('on')) {
			colorCd = $(this).attr("id").split("_")[1];
			$(".color_size_qty.czq_pop .color_chip li a").each(function() {
				if(colorCd == $(this).attr("data-color-code")) {
					$(this).addClass("on");
				}
			});
		}
	});
	
	$("#contentDiv .color_size_qty .size_chip li").each(function () {
		if($(this).find('a').hasClass('on')) {
			sizeCd = $(this).attr("id").split("_")[2];
			$(".color_size_qty.czq_pop .size_chip li a").each(function() {
				if(sizeCd == $(this).attr("data-size-code")) {
					$(this).addClass("on");
				}
			});
		}
	});
}

function GA_Detail(action, e){
	var eventAction;
	var label;
	
	if(action == 'brand'){
		eventAction = "브랜드";
		label = e.text();
	} else if(action == 'exhibition'){
		eventAction = "기획전";
		label = e.text();
	} else if(action == 'codi'){
		eventAction = "코디상품";
		label = e.parent().find(".title").text();		
	} else if (action == 'halatest'){
		eventAction = "최근본상품";
		label = e.parent().find(".title").text();		

	} else if (action == 'recommend'){
		eventAction = "추천상품";
		label = e.parent().find(".title").text();		

	}
	
	GA_Event('상품_상세',eventAction,label);
	
}

function chkPopularProudct(qty) {
    if('ko' != 'ko') {
        return;
    }
    
    //#3280 인기상품 노출문구 판별 : 재고 - 선택값 = 0 일때 노출
    var onlineAndWaitStockpile = parseInt($("#stockCnt").val()); 
    if(onlineAndWaitStockpile - qty == 0) {
        $("#popularProudct").show();
        $("#color_size").css("border-bottom", "none");
    }else {
        $("#popularProudct").hide();
        $("#color_size").css("border-bottom", "1px solid #ebebeb");
    }
}
    

function sendGroobee(){
    
    groobee( "VG", {
        goods : [
            {
                name: "캐시미어 더블 재킷",
                code: "MN2C8WJC026WP",
                amt: "1250000",
                prc: "1250000",
                salePrc: "1250000",
                status : "판매중", // 품절이거나 상품이 판매상태가 아닐 경우 "SS"
                img: "http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_S01.jpg",
                cat: "WE051",
                cateNm: "재킷",
                catL: "WE",
                cateLNm: "여성",
                catM: "WE05",
                cateMNm: "아우터",
                catS: "WE051",
                cateSNm: "재킷",
                catD: "",
                cateDNm: "",
                brand: "BR02",
                brandNm: "MINE"
            }
        ]
    });
}

//]]>
</script>
<!-- 이 위에 날려버리기 -->
    <div id="globalMessages">
        </div>
    <div id="bodyWrap" class="item_detail" style="">
        <div id="oneEventLayer"></div>

        <div class="adaptive_wrap">
            <div class="clearfix prd_detail1905" id="clearfix">
		<div class="clearfix image_view3">
	<a href="javascript:imageZoom()" id="btn_zoom" class="btn_zoom" onclick="GA_Event('상품_상세','크게보기','클릭')">크게보기</a><!-- 버튼 클릭시 item_visual 에 zoom 클래스 추가 -->
	<!-- 2021.08.18 동영상 재생 수정, 상품 imageDivisionCode에 VOD가 있는 경우 동영상 url 세팅 -->
	<div class="image_view1" id="image_view1">
		<div class="item_visual" id="imageDiv" style="margin-top: 20px;">
			<ul>
				<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage1}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage2}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage3}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage4}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage5}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage6}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<li><img src="${productimage7}" class="respon_image"
									alt="캐시미어 더블 재킷"
									onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

								<!--
							<li><img src="${pageContext.request.contextPath}/resources/images/products/item_img5.jpg" alt="MINE - Jemion Dress in Crunch Wash 1" class="respon_image" /></li>
							-->

							</ul>
						</div>
					</div>
					<div class="item_visual" id="imageDivW" style="display: none">
						<ul>
							<li><img src="${productimage1}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage2}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage3}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage4}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage5}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage6}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
							<li><img src="${productimage7}" class="respon_image"
								alt="캐시미어 더블 재킷"
								onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
						</ul>
					</div>
					<!--동영상 삽입 180710-->
					<!--//동영상 삽입 180710-->
					<!--  2021.08.18 동영상 재생 영역  -->
				</div>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/resources/js/wpay.js"></script>
				<!-- 품절상품포함 여부 -->
				<script type="text/javascript">
//<![CDATA[
var stockOnlineStockpile = {};
var warehouseStockpile = {};

$(document).ready(function() {
    cartQuantity = {};
    
    
    $(".btn_star_score li a").on("click", function(){
        $("#rating").val($(this).attr('value'));
    });
    
    $('#customerReview').click(function(){
        fn_popupCustomerReview();
    });
    
    $('#offlineQty').click(function(){
        fn_stockconfirm();
    });

    var productCode = $("#productCode").val();
    $.ajax({
        url: '/ko/p/review',
        type: "GET",
        data: {"productCode":productCode},
        success: function(data){
            var starWidth = 0;
            if(data.reviewList.results.length > 0){
	            starWidth = getStarScore(data.reviewAvg);
            }
            if(starWidth==0){
                $("#prodTotalStarScoreWrapper").css("display","none");
            }else{
                $("#prodTotalStarScore").css("width",starWidth+"%")
            }
        },
        error: function(xhr, Status, error) {
            var la = new layerAlert(error);
               la.confirmAction = function(){
                   return;
               };
        }
   });
    

		stockOnlineStockpile["MN2C8WJC026WP_CM_76"] = "4";
		warehouseStockpile["MN2C8WJC026WP_CM_76"] = "0";
	
		stockOnlineStockpile["MN2C8WJC026WP_CM_82"] = "3";
		warehouseStockpile["MN2C8WJC026WP_CM_82"] = "0";
	
	$(".btn_close").on("click", function(){
		hideProductLayer(); 
		$(".popwrap").hide();
	});	
	
	$('.toggle_type1>dt').click(function() {
		
		$(this).addClass('on');
		$(this).siblings('dt').removeClass('on');
		
		var beforeHeight = $(".toggle_type1").height();
		var afterHeight = 0;
		var scrolltop = $(window).scrollTop();
		
		var checkElement = $(this).next();
		
		if((checkElement.is('dd')) && (checkElement.is(':visible'))) {
			$(this).removeClass('on');
	 		checkElement.slideUp('fast', 
	 				function(){
	 					afterHeight = $(".toggle_type1").height();
// 	 					bodyScroll();
	 				});
	 		
		}
		var fitGuide = false;
		if((checkElement.is('dd')) && (!checkElement.is(':visible'))) {
		    var v_label = "";
		    var v_type = $(this).children().attr("id");
		    //21.11.03 상품상세 정보 영역 변경 관련 GA이벤트태깅 추가 및 변경
		    if(v_type == "NEW_DETAIL_INFO_EVT"){
		        v_label = "상품상세정보";
		    }else if(v_type == "DETAIL_INFO_EVT"){
		        if ('ko' == 'ko') {
		            v_label = "상품정보제공고시";
		        }else{
		            v_label = "상품상세정보";
		        }
		    }else if(v_type == "REAL_SIZE_EVT"){
                v_label = "실측사이즈";
            }else if(v_type == "DELI_RETURN_EVT"){
                v_label = "배송 및 반품";
            }else if(v_type == "FIT_GUIDE_EVT"){
                fitGuide = true;
            }
		    
		    if(!fitGuide) {
		        GA_Event('상품_상세','정보',v_label);
		    }
		    
			$('.toggle_type1>dd:visible').slideUp('fast');
			
			checkElement.slideDown('fast', 
	 				function(){
					afterHeight = $(".toggle_type1").height();
// 					bodyScroll();
				});
		}
		
		if(fitGuide) {
		    fitGuide_Swiper_Slide(1);
		}
		
		var bodyScroll = function(){
			
			$('body,html').animate({scrollTop:parseFloat(scrolltop + (beforeHeight - afterHeight))}, 
					function(){
						bodyReSize();
					}
			);
		}
		
		if($(this).next('dd').length == 0) {
			return true;
		} else {
			return false; 
		}      
	});
	
	if ( 'en' == 'ko' || 'zh' == 'ko' ) {
		showExchangeRate();
	}
	
	$("#restock_tlt").mouseover(function(){
// // 		showExchangeRate();
		$("#restock_delch_box").css("display","block");
	});
	
	$("#restock_tlt").mouseout(function(){
		$("#restock_delch_box").css("display","none");
	});
	
	if($('#referencesListContent ul:eq(0) > li').length > 3) {
		matchItemSlider();
	}else {
	    $(".related_evt .matches_list > ul > li").css("margin-right", "10px");
	}

	//타임옴므 실측사이즈
	if("BR02" == "BR06"){
		var checkShow = false;
		var checkCode = "MN2C8WJC026WP";
		var checkLanguage = "ko";
		if(checkCode == "TH1H7WPC500M" || checkCode == "TH1I3WPC505M" || checkCode == "TH1H8WPC503M" || checkCode == "TH1HAWPC505M"  || checkCode == "TH1HAWPC505MP1" ){
			$(".timehomme_pants_fit").addClass("slim");
			$(".timehomme_pants_fit").removeClass("straight");
			$(".timehomme_pants_fit").removeClass("comfort");
			checkShow = true;			
		}else if(checkCode == "TH1H8WPC510M" || checkCode == "TH1H8WPC530M" || checkCode == "TH1H8WPC540M" || checkCode == "TH1HBWPC535M" || checkCode == "TH1HAWPC545M" || checkCode == "TH1HAWPC525M"  || checkCode == "TH1HAWPC525MP1" ){
			$(".timehomme_pants_fit").removeClass("slim");
			$(".timehomme_pants_fit").addClass("straight");
			$(".timehomme_pants_fit").removeClass("comfort");
			checkShow = true;			
		}
		
		if(checkShow){
			if(checkLanguage == "ko"){
				$(".timehomme_pants_fit").addClass("ko");
			}else if(checkLanguage == "en"){
				$(".timehomme_pants_fit").addClass("en");
			}else if(checkLanguage == "zh"){
				$(".timehomme_pants_fit").addClass("zh");
			}
			
			$(".timehomme_pants_fit").show();
		}
	}
	
	//at home,quick 배송지 변경
	$(".btn_chg").on("click",function(){
	    if($(this).parent().parent().attr("id") == "athome_svc"){
	        searchAddressLayer("streetname","streetnumber","postalcode");	        
	    }else if($(this).parent().parent().attr("id") == "quick_svc"){
	        searchAddressLayer("quickStreetname","quickStreetnumber","quickPostalcode");
	    }
	});
    
    // 예약주문 토스트팝업 190507
    /* if($("#erpWorkOrderProdCode").val() != "") {
        clearTimeout(toastPopupPreOrderInit);
        clearTimeout(toastPopupPreOrderAfter);
        clearTimeout(toastPopupPreOrderStop);
    }

    if("N" == "Y") {
        toastPopupPreOrder();
    } */
    
    
    
    
    
    swiperslideForLookbook();
    
   
});

function swiperslideForLookbook(){
	
	var slideBox_Idx = $('.sub-slide-zone .slide-box');
	var smallSwiperLeng = $('.sub-slide-zone .slide-box').length;
	var smallSlideArr = new Array();

	for(var i = 0; i < smallSwiperLeng; i++){
		var smallSlideLeng = $(slideBox_Idx[i]).find('.swiper-slide').length
		smallSlideArr.push(smallSlideLeng);
	}

	// 룩북보기 sub 배너 슬라이드 옵션
	var subSlideOption = {
		slidesPerView: 3,
		slidesPerGroup: 3,
		spaceBetween: 10,
		loop: true,
		loopFillGroupWithBlank: true,
		observer: true,
		observeParents: true,
		simulateTouch:false,
		navigation: {
			nextEl: '.swiper-button-next.sub-nav-right',
			prevEl: '.swiper-button-prev.sub-nav-left',
		},
	};
	
	// 룩북보기 sub 배너 슬라이드
	var cdNlb_sub_swiper = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
	
	for(var i = 0; i < smallSwiperLeng; i++){
		if( smallSlideArr[i] <= 2 ){	
			if(cdNlb_sub_swiper.length !== undefined && cdNlb_sub_swiper.length > 0){				
				$(cdNlb_sub_swiper[i].$el).parent().addClass('destroy');
				cdNlb_sub_swiper[i].destroy();
			}else{
				$(cdNlb_sub_swiper.$el).parent().addClass('destroy');
				cdNlb_sub_swiper.destroy();
			}
		}
	}
	
	
	// 룩북보기 title 배너 슬라이드 옵션
	var titleSlideOption = {
		slidesPerView: 1,
		slidesPerGroup: 1,
		spaceBetween: 0,
		loop: true,
		simulateTouch:false,
		navigation: {
			nextEl: '.swiper-button-next.tt-nav-right',
			prevEl: '.swiper-button-prev.tt-nav-left',
		},
		pagination: {
			el: '.swiper-pagination.tt-nav-page',
			clickable: true,
		},
		on: {
			slideChange: function() {
				var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
				var slideIndex = this.realIndex;
				
				//console.log(slideIndex);
			
				$subSlide.hide();
				$($subSlide[slideIndex]).show();
		
			}
			/* ,slideChangeTransitionStart: function(){
				// 202010623 auto height 기능 추가
				var slide_Wrap = $(".title-slide-zone .swiper-wrapper");
				var target_Height = $(this.$wrapperEl).find('.swiper-slide-active img').height();

				slide_Wrap.height(target_Height);
			}, */
		}
	};
	
	
	if($(".cd-n-lb-tab a").attr("href") == "#cd-n-lb-tab-02"){
		
		var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
		var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;
		
		var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
		if (small_new_slide != null) small_new_slide.destroy();
		
		var cdNlb_sub_swiper_new = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
		var cdNlb_tt_swiper = new Swiper('.title-slide-zone .swiper-container', titleSlideOption);
		
		var $subSlide = $('.detail-pg-lookbook-aside-box .sub-slide-zone .slide-box');
		
		if( ttSwiperLeng <= 1 ){
			if(cdNlb_tt_swiper.length !== undefined && cdNlb_tt_swiper.length > 0){				
				$(cdNlb_tt_swiper[i].$el).parent().addClass('destroy');
				cdNlb_tt_swiper[i].destroy();
			}else{
				$(cdNlb_tt_swiper.$el).parent().addClass('destroy');
				cdNlb_tt_swiper.destroy();
			}
			
			// title slide가 하나일 경우 sub-slide show
			$($subSlide[0]).show();
			
		}
		
		
		
	} 
	
	
	
	
	// 함께코디한 상품 & 룩북보기 tab
	$(".related_evt .cd-n-lb-tab").find("a").off().on("click", function(e){
		var $this = $(this);
		var $all_tab_nav = $this.parents(".cd-n-lb-tab").find("li");
		var $tab_contents = $this.parents(".related_evt").find(".cd-n-lb-content-box");
		var id = $this.attr("href");
		var tabIndex = $this.parent().index();

		e.preventDefault();
		$all_tab_nav.removeClass("on");
		$this.parent().addClass("on");
		$tab_contents.hide();
		$(id).show();

		var thisTab = $(this).parent('li').index();

		if ( thisTab === 0 ) {
			var title_new_slide = document.querySelector('.title-slide-zone .swiper-container').swiper;
			var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
			if (title_new_slide != null) title_new_slide.destroy();
			if (small_new_slide != null) small_new_slide.destroy();
		}else {
			var ttSlideBox_Idx = $('.title-slide-zone .swiper-wrapper'); // [0, 1]
			var ttSwiperLeng = $('.title-slide-zone .swiper-slide').length;
			
			var small_new_slide = document.querySelector('.sub-slide-zone .swiper-container').swiper;
			if (small_new_slide != null) small_new_slide.destroy();
			
			var cdNlb_sub_swiper_new = new Swiper('.sub-slide-zone .swiper-container', subSlideOption);
			var cdNlb_tt_swiper = new Swiper('.title-slide-zone .swiper-container', titleSlideOption);

			if( ttSwiperLeng <= 1 ){
				if(cdNlb_tt_swiper.length !== undefined && cdNlb_tt_swiper.length > 0){				
					$(cdNlb_tt_swiper[i].$el).parent().addClass('destroy');
					cdNlb_tt_swiper[i].destroy();
				}else{
					$(cdNlb_tt_swiper.$el).parent().addClass('destroy');
					cdNlb_tt_swiper.destroy();
				}
			}
			
			
			
		}
	});
}


var popupOneclick
$(document).ready(function() {
	
})

function fn_oneClickProcess(){
	var productCode = $('form[name=addToCartForm] input[name=productCodePost]').val();
	var productType = $('form[name=addToCartForm] input[name=productCodeType]').val();
	var qty = $("#txtqty").val();

	if(parseInt($("#productPrice").val()) == 0) {
		var la = new layerAlert('선택 상품은 일시적인 시스템 장애로 구매하실 수 없습니다.<br/>고객센터(1800-5700)로 문의주세요.');
		oneClickProcess = true;
		return;
	}
	if(productType != 'ApparelSizeVariantProduct'){
		var la = new layerAlert('사이즈를 선택해 주세요.');
		oneClickProcess = true;
		return;
	}

	if(qty < 1){
		var la = new layerAlert('productdetail.basket.errormag.qty');
		oneClickProcess = true;
		return;
	}

	if($("#storePickupCheck").is(":checked") || $("#athomeCheck").is(":checked") || $("#quickCheck").is(":checked")){
		var la = new layerAlert('퀵배송/매장수령은 배송특화 서비스로</br>원클릭 결제가 불가능합니다.');
		la.confirmAction = function(){
			return;
		};
		oneClickProcess = true;
		return;
	}

	var check4pmProcess = false;
	var check4pmOver = false;
	var vipDeliAvail = true;
	if($("#fourpmCheck").is(":checked")){
		vipDeliAvail = false;
		$("#deliveryKind").val("4pm");
		$.ajax({
			url: '/ko/shoppingbag/check4pm',
			type: "GET",
			data: $('form[name=addToCartForm]').serialize(),
			async : false,
			success: function(data){
				//data가 0 또는 4pm의 경우 담기
				if(data == "normal"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 일반배송 상품이 담겨 있습니다. 쇼핑백에서 일반배송 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}else if(data == "pm_over"){
					check4pmOver = true;
					$("#deliveryKind").val("");
				}else if(data == "store"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 매장수령 상품이 담겨 있습니다. 쇼핑백에서 매장수령 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}else if(data == "athome"){
					var scrollTop = $(document).scrollTop();
					var la = new layerAlert('쇼핑백에 {0}PM 상품이 아닌 앳홈 상품이 담겨 있습니다. 쇼핑백에서 앳홈 상품을&nbsp; 삭제 후 {0}PM 버튼을 클릭해 주세요.');
					var top = $(".popwrap.w_type_1").css("margin-top").replace("px","");
					$(document).scrollTop(scrollTop);
					$(".popwrap.w_type_1").css("margin-top",Number(scrollTop)+Number(top)+"px");
					la.confirmAction = function(){
						return;
					};
					check4pmProcess = true;
				}
			},
			error: function(xhr, Status, error) {
				var la = new layerAlert(error);
				la.confirmAction = function(){
					return;
				};
			}
		});
	}

	if(check4pmProcess){
		$("#deliveryKind").val("");
		oneClickProcess = true;
		return false;
	}

	if(check4pmOver){
		var la = new layerAlert('오후{0}시 이후 주문시 일반배송으로 변경됩니다.');
		la.confirmAction = function(){
			return;
		};
	}

	$('form[name=addToCartForm] input[name=qty]').val(qty);
	$('form[name=addToCartForm] input[name=buyNowYn]').val(false);
	
    if("false" == "true" && "ko" == "ko"){
        NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
            oneclickLoadingStart(vipDeliAvail);
        });
    }else{
        oneclickLoadingStart(vipDeliAvail);
    }
}

function oneclickLoadingStart(vipDeliAvail){
	 $("body").append('<div class="layerArea" id="oneclickPopupLayer"><div class="layerBg"></div></div>');

    var loadingHtml = "";
    loadingHtml += '<div class="layerLoading_bar" id="oneclickLoadingDiv" style="width: 100%;height: 100%;top:0; z-index: 102">';
    loadingHtml += '    <div class="ly_oneclick">';
    loadingHtml += '        <img src="http://cdn.thehandsome.com/pc/order/loading_spinner_007s_190827.gif" alt="loading">';
    loadingHtml += '                <p class="ly_ld_main" >최대할인 혜택을 계산 중 입니다</p>';
    loadingHtml += '                <p class="ly_ld_sub">최대할인 혜택을 원클릭결제에 자동 적용하여<br>';
    loadingHtml += '                   편리한 결제가 가능합니다</p>';
    loadingHtml += '    </div>';
    loadingHtml += '</div>';

    $("#oneclickPopupLayer").append(loadingHtml);
	
	
	var products ="";
    products +=$("#productCode").val();
    products +=","+ $("input[name=qty]").val();
    $.ajax({
    	url : '/checkout/oneclick?products='+products+'&vipDeliAvail='+vipDeliAvail ,
    	type : 'GET',
    	success : function(data){
    		$('#oneclickPopupLayer').append(data);
    	},
    	error : function(err){
    		console.log(err.responseText);
    	}
    })
    setEcommerceData("Checkout1(원클릭결제)");
    oneClickProcess = true;
}

function loadingOff(){
    //로딩바제거
    if($("#loadingBarDiv").length > 0){
        $(".layerLoading_bar").remove();
    }
    
	if($(".layerArea:last").length > 0){
	    $(".layerArea:last").remove();
    }
}

function oneClickTargetBlankPopup(wpayData){//원클릭결제 새창 팝업 2001
    WPAY.checkoutAuthSubmit(wpayData);
}


var starscore = 0;
function getStarScore(starscore){
    var average = starscore;
    var starWidth=0;
    if(1 <= average && average < 1.25){
        starWidth=20;
    } else if(1.25 <= average && average < 1.75){
        starWidth=30;
    } else if(1.75 <= average && average < 2.25){
        starWidth=40;
    } else if(2.25 <= average && average < 2.75){
        starWidth=50;
    } else if(2.75 <= average && average < 3.25){
        starWidth=60;
    } else if(3.25 <= average && average < 3.75){
        starWidth=70;
    } else if(3.75 <= average && average < 4.25){
        starWidth=80;
    } else if(4.25 <= average && average < 4.75){
        starWidth=90;
    } else if(4.75 <= average && average <= 5){
        starWidth=100;
    }
    return starWidth;
}

function setOneClick(){
    
}

function fnSharePin(sUrl){
	var sImg = "http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_C01.jpg";
	var sTxt = "[MINE] 캐시미어 더블 재킷";
	
	if(sImg.indexOf("_C01") > 0) {
		sImg = sImg.replace("_C01", "_W01");
	}
	
	var href = "http://www.pinterest.com/pin/create/button/?url="+sUrl+"&media="+sImg+"&description="+encodeURIComponent(sTxt);
	var a = window.open(href, 'pinterest', 'width=800, height=500');
	if ( a ) {
		a.focus();
	}
}

function matchItemSlider(){
	var widthLi = $("#referencesListContent").width() / 3;
	var productTotal = $("#referencesListContent .slides li").size();
	if(productTotal <= 3) {
		$("#referencesControls .prev").hide();
		$("#referencesControls .next").hide();
		$("#referencesListContent ul").removeClass("slides");
		$("#referencesListContent > ul li").css("margin-right","10px");
	}
	var mySlider = $("#referencesListContent .slides").bxSlider({
		mode:"horizontal",
		speed:500,
		pager:false,
		moveSlides:1,
		slideWidth:widthLi,
		minSlides:3,
		maxSlides:3,
		slideMargin:10,
		auto:false,
		autoHover:false,
		controls:false,
		adaptiveHeight:true,
		adaptiveHeightSpeed:10
	});
	$("#referencesControls .prev").on("click",function(){
		mySlider.goToPrevSlide();
		return false;
	});
	$("#referencesControls .next").on("click",function(){
		mySlider.goToNextSlide();
		return false;
	});
	$(".rmd_pb .tlt").mouseenter(function(){
		$("#productEctTab .rmd_pb_popup").show();
	});
	$(".rmd_pb .tlt").mouseleave(function(){
		$("#productEctTab .rmd_pb_popup").hide();
	});

};

function addHidden(ptag, hname, hvl) {
    
    if($("#"+hname).length >0){
        $("#"+hname).remove();
    }
    return $('<input/>').attr('type'    , 'hidden')
                        .attr('id'      , hname)
                        .attr('name'    , hname)
                        .attr('value'   , hvl)
                        .appendTo(ptag);
}

/* 주문서간편결제 : 결제 인증 후 콜백
원클릭구매 : iframe 안에서 실행되기 때문에, target 을 _top으로 지정합니다
 */
var checkoutPaymentAuthCallback = function (resultCode, resultMsg, result) {
    console.log(document.cookie);
    switch(resultCode) {
	case "2406": // 쿠키정보가 없습니다.
		//layerWpayCookieSettingView();
		//WPAY.close();
		//window.parent.postMessage({layerClose:'layerClose'},'*');
		//window.parent.postMessage({inicisPopOpen:'inicisPopOpen'},'*');
		
		console.log("쿠키 정보가 없음");
		break;
	case "0000":	    
	    $("body").append('<div class="layerArea" id="productLayer"><div class="layerBg"></div></div>');
	    
	    $(".layerArea .layerBg").css('background','none');
	    
		// 토스트 팝업 추가
		var toastPopup = '<div class="pop_loading_oneclick200210" style="background:#444;width:290px;height:120px;position:fixed;top:30%;left:50%;margin-left:-145px;margin-top:-60px;z-index:9999;">';
		toastPopup += '<img src="http://cdn.thehandsome.com/_ui/handsomemobile/images/common/Spinner_1s_105px.png" alt="loading" style="display:block;width:32px;height:32px;margin:30px auto 15px auto;">';
		toastPopup += '<p style="color:#fff;text-align:center;">';
	    toastPopup += '<span style="background:url(\'http://cdn.thehandsome.com/pc/products/one_click_pay_w.png\') left 2px no-repeat;color:#fff;font-size:15px;padding-left:93px;">가 진행중입니다.</span>';
	    toastPopup += '</p>';
	    toastPopup += '</div>';
	        
		$("body").append(toastPopup);

	    //상품상세와 결제페이지 구분이 안되기 때문에 
	    //window.parent.postMessage({loadingShow:'loadingShow'},'*');
        
		var $PAY_FORM = $("#PAY_FORM");
		addHidden($PAY_FORM, 'wtid'	, result.wtid);
		
		$PAY_FORM.attr({
			'method': 'POST',
			'action': '/ko/inicis/inipaywpay/sop/response',
			'target': '_top'
		});
		
		$PAY_FORM.submit();
		break;
	default:
		new layerAlert(resultMsg);
		//WPAY.close();
		//window.parent.postMessage({layerClose:'layerClose'},'*');
		break;
	}
}



function addWishListProdClick(productBaseCode) {    
    
        var lc = new layerConfirm("로그인이 필요합니다", "확인", "취소");
        lc.cancleAction = function(){//취소 호출 펑션
            $("."+productBaseCode+"Like").each(function(index, ele){
       			$(ele).removeClass("on");
       		})
        };

        lc.confirmAction = function(){//확인 호출 펑션
            location.href = "/ko/member/login";
        };
    
    
    addWishListProd(productBaseCode);
}

function addWishListProd(productBaseCode){
    $.ajax({
         url: "/ko/wishlist/add-product-action",
         type: "GET",            
         data: {productCode: productBaseCode ,type: 'toggle'},
         success: function(msg){	 
        	 
			if(msg !== 'erroor1'){
				if(productBaseCode === 'MN2C8WJC026WP_CM'){
        			$('.wishlist1803').toggleClass('on'); 
        		}
            	$('.' + productBaseCode + 'LIKE').each(function(index, ele){
            		$(ele).toggleClass('on'); 
            	})
         	}
 			
        	 
        	 
         }
    });
}


function chngColorChip(ele, sourceProd, targetProd) {
	
	var $this = $('#chipbtn_' + targetProd);
	var $thisChips = $this.closest('.we-codi-colorchip');
	//$thisChips.find('a').removeClass('on');
 
	$.ajax({
		url		: '/ko/product/reloadCoordiSize',
		type	: 'GET',
		datatype: 'json',
		data	: {
			'productcode'	: targetProd
		},
		success	: function(data) {
			var product = data.product;
			var images;
			
			var txtHtml = '';
			var lookbookTxtHtml = '';
			/* 가격변경 */
			var priceHtml = '';
			
			 priceHtml = product.price.formattedValue;
			
            if(priceHtml != ''){
				$('#prod_'+sourceProd+' .info_wrap .price').html(priceHtml);
            }
			
			if ( product.productImages != null ) {
				
				for ( var i=0; i<product.productImages.length; i++ ) {
					images = product.productImages[i];
					
					if ( images.imageDivisionCode.code === 'S01' ) {
						txtHtml = images.image.url;	
						break;
					}
				}
			}
			
			
			$(ele).parent().closest('#prod_'+sourceProd).find('img').attr('src', txtHtml);
			
			
		}
	});
	

}

// 210728 oera 신규 추가 S
function fn_popupOeraMileage(){ 
    //fn_parentLayer();
    $("#popupOeraMileage").show();
}

//211101 체험단 리뷰 추가 S
function fn_popupTesterReview(){ // 체험단 팝업
    if($("#testerReviewDiv").css("display") == "none"){
        testerReviewReset();
        viewPopup("#testerReviewDiv");
        GA_Event('상품_상세','정보','체험단');
    }
}

function testerReviewReset() { //팝업초기화
    if($('.review_more_1807 a').parents('.evaluation_view').hasClass('on')) {
        $('.review_more_1807 a').parents('.evaluation_view').removeClass('on');
    }
    $("#testerReviewDiv .paging .pageBtn:eq(0)").trigger("click");
}
// 211101 체험단 리뷰 추가 E

//]]>
</script>

				<div class="item_detail_info float_right" id="contentDiv"
					style="margin-top: 20px; top: 0px; left: 638px;">
					<div class="info">
						<div class="info_sect">
							<h4 class="item_name">
								<div class="brand-name">
									<a href="javascript:fn_goCategori('br02')"
										onclick="GA_Detail('brand',$(this))">${produt.bname}</a>
								</div>
								<span class="name ko_fir_spel"> ${product.pname}<input
									type="hidden" id="brandName" value="${product.bname}">
									<input type="hidden" id="productName" value="${product.pname}">
									<input type="hidden" id="productCode"
									value="${currentcolorcode}">
								</span>
							</h4>

							<div class="flag"></div>

							<p class="price">
								<span>₩${product.pprice}</span> <input type="hidden"
									id="productPrice" value="${product.pprice}">
							</p>
							<!-- 상품추가설명 -->
							<p class="selling_point"></p>
							<!-- 20200914이후 추가 상품설명 (신) -->
							<div class="prod-detail-con-box">
								<strong class="number-code">상품품번 : <span>${currentcolorcode}</span></strong>
								<div class="round-style">
									<p>${product.pcontent}</p>
								</div>
								<div class="fit-info">
									<p class="size-text">- 피팅 정보 : 177cm, 55 사이즈 모델이 82 사이즈 착용</p>
								</div>
							</div>
							<!-- 20200914 이전 상품설명(구) -->
						</div>

						<!-- 20200904 추가 (더보기) -->
						<div class="info_sect">
							<div class="prod-detail-con-more">
								<button type="button" class="more-btn">
									더보기<i></i>
								</button>
								<div class="more-con-box">
									<ul>
										<li>- 이탈리아 'TEXCO' 사의 수입 원단<br>- 100% 캐시미어 소재<br>-
											앞면의 버튼 클로징<br>- 양 옆에 포켓<br>- 소맷단과 뒷면 밑단에 슬릿
										</li>
									</ul>
								</div>
							</div>
						</div>
						<script>
			            $(document).ready(function() {
			                $('.prod-detail-con-more').on('click', '.more-btn', function(){
			                    $('.more-con-box').slideToggle(function(){
			                        $(this).parent('.prod-detail-con-more').find('.more-btn').toggleClass('on');
			                    });
			                })
			            });
			        </script>
						<!-- //20200904 더보기 -->
						<div class="info_sect">
							<ul class="point_delivery">
								<li><span class="title">한섬마일리지</span> <span class="txt">${mileage}&nbsp;M&nbsp;(5%)</span>
								</li>

								<li><span class="title">H.Point</span> <span class="txt">${hpoint}&nbsp;P&nbsp;(0.1%)</span>
									<a href="javascript:fn_cardBenefit();" id="cardbenef"
									class="etc_info" onclick="GA_Event('상품_상세','카드사_혜택안내','클릭');">카드사
										혜택안내</a> <script type="text/javascript">
$(document).ready(function(){
	
	
		fn_tableMerge($("#noInterestTable").attr("id"));
	
		fn_tableMerge($("#partNoInterestTable").attr("id"));
	
	
    $('.card img').each(function (){
        $(this).attr('src',cdnImgUrl($(this).attr('orgurl')));
    })
});

// CDN 이미지 URL로 변경
function cdnImgUrl(mediaUrl) {
    var rtnUrl = mediaUrl;
    try { 
        var searchText = 'context='
        var cdnDomain = 'http://image.thehandsome.com/sys_master/';
        rtnUrl = rtnUrl.substr(rtnUrl.indexOf(searchText)+searchText.length, rtnUrl.length);
        rtnUrl = decodeURIComponent(atob(rtnUrl)).split('|');
        if ( rtnUrl.length > 4 ) {
            rtnUrl = rtnUrl[4];
            rtnUrl = cdnDomain + rtnUrl;
        } else {
            rtnUrl = mediaUrl;
        }
    } catch (e) {
        console.log(e);
    }
    return rtnUrl;
}

function fn_tableMerge(id){
	
	var beforName = "";
	var mergeCnt = 1;
	var beforObj;
	
	$("#"+id+" th").each(function(){
		
		if(beforName == ""){
			beforName = $(this).attr("name");
			beforObj = $(this);
		}else if(beforName == $(this).attr("name")){
			mergeCnt = mergeCnt + 1;
			$(this).remove();
			beforObj.attr("rowspan", mergeCnt);
		}else{
			beforName = $(this).attr("name");
			beforObj = $(this);
			mergeCnt = 1;
		}
		
	});
}

</script>

									<div class="popwrap w_type_2" id="cardBenefit"
										style="display: none;">
										<div class="pop_tltwrap2">
											<h3>카드혜택안내</h3>
										</div>
										<div class="pop_cnt">
											<div class="card_benefits scroll-y">
												<div class="box">
													<div class="title clearfix">
														<p class="float_left">무이자 할부 행사</p>
														<!-- 
						<p class="float_left">무이자 할부 행사</p>
						<p class="float_right">행사기간 : 2015.08.01 ~ 2015.12.31</p>
						-->
													</div>
													<table class="cnt_type1" id="noInterestTable">
														<caption>무이자 할부 행사</caption>
														<colgroup>
															<col style="width: 155px">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>신한카드 5만원이상 결제시 2~6개월 무이자 할부</b><br> 대상:
																	신한카드 전 회원<br> (신한BC 제외/ 법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="삼성카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																		orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																		alt="삼성카드"></span></th>
																<td><b>삼성카드 5만원이상 결제시 2~6개월 무이자 할부</b><br> 대상:
																	삼성카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="비씨카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																		orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																		alt="비씨카드"></span></th>
																<td><b>비씨카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																	비씨카드 전 회원<br>(법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="현대카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h5d/h7c/8814181711902.jpg"
																		orgurl="/medias/HYUNDAI.jpg?context=bWFzdGVyfHJvb3R8MjYxMHxpbWFnZS9qcGVnfGg1ZC9oN2MvODgxNDE4MTcxMTkwMi5qcGd8YmM5ZWY0ZjlhODlkMzdmMjYyNmY4NjQ4OWU5NWVjOWFlMGY4ODIwYzZlNjA0MjBlNDkwNWI0ZDllYThjMWE5Mw"
																		alt="현대카드"></span></th>
																<td><b>현대카드 5만원이상 결제시 2~7개월 무이자 할부</b><br> 대상:
																	현대카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="국민카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																		orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																		alt="국민카드"></span></th>
																<td><b>KB국민카드 5만원이상 결제시 2~7개월 무이자 할부</b><br>
																	대상: KB국민카드 전 회원<br> (NH농협, 국민BC 제외/ 법인,기프트,체크,선불카드
																	제외)<br> 2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="하나카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																		orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																		alt="하나카드"></span></th>
																<td><b>하나카드 5만원이상 결제시 2~8개월 무이자 할부</b><br> 대상:
																	하나카드 전 회원 (구 하나SK, 구 외환)<br> (하나BC카드
																	포함/법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="NH카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/h8e/h36/8814181908510.jpg"
																		orgurl="/medias/NH.jpg?context=bWFzdGVyfHJvb3R8Mzk3OXxpbWFnZS9qcGVnfGg4ZS9oMzYvODgxNDE4MTkwODUxMC5qcGd8ZWVlNmY1OWM0NDdmMjg2M2Y4NGZkNDZjYThmOTVkMWNmY2QwYWNkOWI1ODc5YTdiMTc5MjY4MThiZTkzYzNmMw"
																		alt="NH카드"></span></th>
																<td><b>NH농협카드 5만원이상 결제시 2~8개월 무이자 할부</b><br>
																	대상: NH농협카드 전 회원<br> (NH농협BC카드 포함/ 법인,기프트,체크,선불카드
																	제외) <br> 2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="롯데카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hb3/h47/8814181810206.jpg"
																		orgurl="/medias/LOTTE.jpg?context=bWFzdGVyfHJvb3R8MzI3MXxpbWFnZS9qcGVnfGhiMy9oNDcvODgxNDE4MTgxMDIwNi5qcGd8MDliOThkNzA1ZDc2ZDE4MzZhYmUzYjI2MDMxZDk0NGU3OTVjYzBhYTA1MmMzMjAyZmE0Y2U4OTZlNTU3NDU2Zg"
																		alt="롯데카드"></span></th>
																<td><b>롯데카드 5만원이상 결제시 2~4개월 무이자 할부</b><br>
																	대상:롯데카드 전 회원<br> (법인,기프트,체크,선불카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="box">
													<div class="title clearfix">
														<p class="float_left">부분 무이자 할부 행사</p>

													</div>
													<table class="cnt_type1" id="partNoInterestTable">
														<caption>부분 무이자 할부 행사</caption>
														<colgroup>
															<col style="width: 155px">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="삼성카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h3d/h4d/8814181613598.jpg"
																		orgurl="/medias/SAMSUNG.jpg?context=bWFzdGVyfHJvb3R8MzIxOXxpbWFnZS9qcGVnfGgzZC9oNGQvODgxNDE4MTYxMzU5OC5qcGd8ZGY1NDJiM2U1YWNmNGE5MTJkOTA0MTAxMDliMDc4ZjRlNTJmZjJlOTkxOTQzZTEwMDcxZWU2NGU2MjJmMWE2Mw"
																		alt="삼성카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4,5회차 고객 부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="비씨카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/hf2/h0d/8814181220382.jpg"
																		orgurl="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw"
																		alt="비씨카드"></span></th>
																<td><b> 우리BC 10개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>

																<td><b>우리BC 12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외) <br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="국민카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h2e/h34/8814181023774.jpg"
																		orgurl="/medias/kucmin.jpg?context=bWFzdGVyfHJvb3R8MzMwM3xpbWFnZS9qcGVnfGgyZS9oMzQvODgxNDE4MTAyMzc3NC5qcGd8MjM1YjEyN2I4OTljMGIxYzY3MjhjNDhkZWMyOTE5ODZjYmRiYWExNDdhOWZmNDQ3ZWNhNGIxZjYwYzk2MDA4Zg"
																		alt="국민카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4
																	회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4,5
																	회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="하나카드" rowspan="2"><span
																	class="card"><img
																		src="http://image.thehandsome.com/sys_master/h60/hfb/8814054965278.gif"
																		orgurl="/medias/hanacard.gif?context=bWFzdGVyfHJvb3R8MTkzNXxpbWFnZS9naWZ8aDYwL2hmYi84ODE0MDU0OTY1Mjc4LmdpZnxhMGM5OWY0MDdhNDhjYzkwOTdiMzhkM2VmMDQ2YTI0NTAyNDBjZTljNTdiYzk4YWRhZmI0NjBhOWRhNzRiMGYw"
																		alt="하나카드"></span></th>
																<td><b>10개월 부분무이자</b><br> (5만원이상 결제시/1,2,3회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>

																<td><b>12개월 부분무이자</b><br> (5만원이상 결제시/1,2,3,4회차
																	고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
															<tr>
																<th scope="row" name="신한카드"><span class="card"><img
																		src="http://image.thehandsome.com/sys_master/hde/h2b/8814181515294.jpg"
																		orgurl="/medias/shinhan.jpg?context=bWFzdGVyfHJvb3R8MjY1N3xpbWFnZS9qcGVnfGhkZS9oMmIvODgxNDE4MTUxNTI5NC5qcGd8NTAwMDYxM2ZmZmRlZGFhZDQ0ODNmODJjZTg2OTE3MGI3OWQ2ZmE3YzI0ZjA3MDY3NzIxYWVhNmY3NDQyYWUzMA"
																		alt="신한카드"></span></th>
																<td><b>12개월 부분무이자</b><br> (5만원이상
																	결제시/1,2,3,4,5회차 고객부담, 잔여할부 수수료 면제/법인,체크,기프트카드 제외)<br>
																	2022.10.01&nbsp;~&nbsp;2022.10.31</td>
															</tr>
														</tbody>
													</table>
													<ul class="bul_sty01_li mt10">
														<li>무이자 할부 결제 시 카드사 포인트는 적립되지 않습니다.</li>
														<li>ARS 무이자 할부는 해당 카드사 ARS 번호로 사전 신청을 하신 경우에 한하여<br>무이자
															혜택이 적용됩니다.(ARS 부문 무이자 할부 포함)
														</li>
														<li>상기 부분 무이자 할부는 5만원 이상 결제 시 자동 적용되며, 결제창에는 무이자 표시가
															되지 않을 수 있습니다.</li>
														<li>법인 / 체크 / 선불 / 기프트 / 은행 계열 카드는 제외됩니다.</li>
														<li>고객 부담 수수료는 해당 카드사로 문의 바랍니다.</li>
														<li>본 행사는 카드사 사정에 따라 일부 내용이 변경 또는 중단될 수 있습니다.</li>
													</ul>
												</div>
											</div>
										</div>
										<a href="javascript:void(0);" class="btn_close"><img
											src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
											alt="닫기"></a>
									</div></li>

								<li><span class="title">배송비</span> <span class="txt">30,000원
										이상 무료배송 (실결제 기준)</span> <a href="javascript:fn_popupDelivery();"
									class="etc_info" onclick="GA_Event('상품_상세','배송안내','클릭');">배송안내</a>
									<div class="popwrap w_type_2" id="popupDelivery"
										style="display: none;">
										<div class="pop_tltwrap2">
											<h3>배송비안내</h3>
										</div>
										<div class="pop_cnt">
											<table class="cnt_type1">
												<caption>배송비안내</caption>
												<colgroup>
													<col style="width: 155px">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">배송기간</th>
														<td>평균 입금완료일 기준 2-4일 소요됩니다.<br>(토/일/공휴일 제외)
														</td>
													</tr>
													<tr>
														<th scope="row">배송비</th>
														<td>
															<ul class="bul_sty01_li">
																<li>30,000원 이상 결제 시 <em class="ft_point01">무료배송</em></li>
																<li>30,000원 미만 결제 시 <em class="ft_point01">2,500원</em></li>
															</ul>
															<p class="bul_sty02">도서산간 지역은 3,000원의 별도 배송비가 부과됩니다.</p>
															<p class="bul_sty02">쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을
																제외한 실결제금액 기준입니다.</p>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<a href="javascript:void(0);" class="btn_close"><img
											src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
											alt="닫기"></a>
									</div></li>
							</ul>
						</div>

						<div class="info_sect" id="color_size">
							<ul class="color_size_qty">
								<li><span class="title">색상</span>
									<div class="txt">
										<!-- 미림 - 상품 색상 목록 -->
										<ul class="color_chip clearfix">
											<c:forEach var="color" items="${colors}">
												<input type="hidden" id="colorName" value="${color.pcolor}">
												<li id="${color.pcodecolor}"><input type="hidden"
													class="colorNameVal" value="${color.pcolor}"> <a
													href="/product/productdetail?pcode=${color.pcode}&pcolor=${color.pcolor}"
													class="${color.pcolor} <c:if test='${color.pcolor eq currentpcolor}'>on</c:if>"
													style="background:#a36944 url('${color.colorurl}')"
													onmouseover="setColorName('${color.pcolor}');"
													onmouseout="setColorName('');"></a></li>
											</c:forEach>
										</ul>

									</div> <span class="cl_name" id="colorNameContent"></span></li>
								<li><span class="title">사이즈<!-- 사이즈 --></span> <span
									class="txt"> <script type="text/javascript">

$(document).ready(function(){
	
	var tab = $('#size_tab ul li');
	var content = $('.size_tab_container > div');
	$('.size_tab_container > div + div').css('display','none');
	tab.on('click', function(e){
		e.preventDefault();
		var tg = $(this);
		var tc = tg.find('> a');
		tab.find('> a').removeClass('active');
		tc.addClass('active');
		i = tg.index();
		content.css('display', 'none');
		content.eq(i).css('display', 'block');
	});
	
});

</script>

										<div class="popwrap w_type_2" id="sizeQuickReferenceLayer"
											style="display: none;">
											<div class="pop_tltwrap2">
												<h3>사이즈조견표</h3>
											</div>
											<div class="pop_cnt">
												<div class="size_chart">
													<div class="tab_a m6" id="size_tab">
														<ul>
															<li><a href="#;" class="active">WOMEN<br>TOP
															</a></li>
															<li><a href="#;">WOMEN<br>BOTTOMS
															</a></li>
															<li><a href="#;">WOMEN<br>SHOES
															</a></li>
															<li><a href="#;">MEN<br>TOP
															</a></li>
															<li><a href="#;">MEN<br>BOTTOMS
															</a></li>
															<li><a href="#;">MEN<br>SHOES
															</a></li>
														</ul>
													</div>
													<div class="size_tab_container">
														<div>
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																		<th scope="col">FREE</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>94</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">MINE</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>94</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>-</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SJSJ</th>
																		<td>76</td>
																		<td>82</td>
																		<td>88</td>
																		<td>-</td>
																		<td>90</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row" rowspan="2">KOREA</th>
																		<td>85</td>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<td>44</td>
																		<td>55</td>
																		<td>66</td>
																		<td>77</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>2</td>
																		<td>4</td>
																		<td>6</td>
																		<td>8</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>34</td>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>160/<br>80A
																		</td>
																		<td>165/<br>84A
																		</td>
																		<td>170/<br>88A
																		</td>
																		<td>175/<br>92A
																		</td>
																		<td>-</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<th scope="row">TIME</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>70</td>
																	</tr>
																	<tr>
																		<th scope="row">MINE</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>70</td>
																	</tr>
																	<tr>
																		<th scope="row">SYSTEM</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>-</td>
																	</tr>
																	<tr>
																		<th scope="row">SJSJ</th>
																		<td>61</td>
																		<td>64</td>
																		<td>67</td>
																		<td>-</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row" rowspan="2">KOREA</th>
																		<td>24</td>
																		<td>26</td>
																		<td>28</td>
																		<td>30</td>
																	</tr>
																	<tr>
																		<td>44</td>
																		<td>55</td>
																		<td>66</td>
																		<td>77</td>
																	</tr>
																	<tr>
																		<th scope="row">US</th>
																		<td>2</td>
																		<td>4</td>
																		<td>6</td>
																		<td>8</td>
																	</tr>
																	<tr>
																		<th scope="row">EUROPE</th>
																		<td>34</td>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																	</tr>
																	<tr>
																		<th scope="row">CHINA</th>
																		<td>160/<br>66A
																		</td>
																		<td>165/<br>68A
																		</td>
																		<td>170/<br>70A
																		</td>
																		<td>175/<br>72A
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																	<col style="width: 19%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">XS</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<th scope="row">TIME</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">MINE</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">SYSTEM</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">SJSJ</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">KOREA</th>
																		<td>230</td>
																		<td>235</td>
																		<td>240</td>
																		<td>245</td>
																	</tr>
																	<tr>
																		<th scope="row">US</th>
																		<td>6</td>
																		<td>6.5</td>
																		<td>7</td>
																		<td>7.5</td>
																	</tr>
																	<tr>
																		<th scope="row">EUROPE</th>
																		<td>36</td>
																		<td>36.5</td>
																		<td>37</td>
																		<td>37.5</td>
																	</tr>
																	<tr>
																		<th scope="row">CHINA</th>
																		<td>36</td>
																		<td>37</td>
																		<td>38</td>
																		<td>39</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																	<col style="width: 16%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																		<th scope="col">XL</th>
																		<th scope="col">XXL</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME<br>HOMME
																		</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM<br>HOMME
																		</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CLUB<br>MONACO
																		</th>
																		<td>XS</td>
																		<td>S</td>
																		<td>M</td>
																		<td>L</td>
																		<td>XL</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>90</td>
																		<td>95</td>
																		<td>100</td>
																		<td>105</td>
																		<td>110</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>36</td>
																		<td>38</td>
																		<td>40</td>
																		<td>42</td>
																		<td>44</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>46</td>
																		<td>48</td>
																		<td>50</td>
																		<td>52</td>
																		<td>54</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>165/<br>80-90
																		</td>
																		<td>170/<br>96-98
																		</td>
																		<td>175/<br>108-110
																		</td>
																		<td>180/<br>118-122
																		</td>
																		<td>185/<br>126-130
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																	<col style="width: 9.5%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND/<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col" colspan="2">M</th>
																		<th scope="col" colspan="2">L</th>
																		<th scope="col" colspan="2">XL</th>
																		<th scope="col" colspan="2">XXL</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME<br>HOMME
																		</th>
																		<td>74</td>
																		<td colspan="2">78</td>
																		<td>82</td>
																		<td>84</td>
																		<td>86</td>
																		<td>88</td>
																		<td>90</td>
																		<td>92</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM<br>HOMME
																		</th>
																		<td>74</td>
																		<td colspan="2">78</td>
																		<td>82</td>
																		<td>84</td>
																		<td>86</td>
																		<td>88</td>
																		<td>90</td>
																		<td>92</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CLUB<br>MONACO
																		</th>
																		<td>29</td>
																		<td>30</td>
																		<td>31</td>
																		<td>32</td>
																		<td>33</td>
																		<td colspan="2">34</td>
																		<td colspan="2">36</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>29</td>
																		<td colspan="2">30</td>
																		<td>32</td>
																		<td>33</td>
																		<td>34</td>
																		<td>35</td>
																		<td>35.5</td>
																		<td>36</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>44T</td>
																		<td colspan="2">46T</td>
																		<td colspan="2">48T</td>
																		<td colspan="2">50T</td>
																		<td colspan="2">52T</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>44</td>
																		<td colspan="2">46</td>
																		<td colspan="2">48</td>
																		<td colspan="2">50</td>
																		<td colspan="2">52</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>44</td>
																		<td colspan="2">46</td>
																		<td colspan="2">48</td>
																		<td colspan="2">50</td>
																		<td colspan="2">52</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="display: none;">
															<table class="cnt_type2">
																<caption>사이즈조견표</caption>
																<colgroup>
																	<col>
																	<col style="width: 23%">
																	<col style="width: 23%">
																	<col style="width: 23%">
																</colgroup>
																<thead>
																	<tr class="al_middle">
																		<th scope="col">BRAND<br>SIZE
																		</th>
																		<th scope="col">S</th>
																		<th scope="col">M</th>
																		<th scope="col">L</th>
																	</tr>
																</thead>
																<tbody>
																	<tr class="al_middle">
																		<th scope="row">TIME HOMME</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">SYSTEM HOMME</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">KOREA</th>
																		<td>260</td>
																		<td>270</td>
																		<td>280</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">US</th>
																		<td>8</td>
																		<td>9</td>
																		<td>10</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">EUROPE</th>
																		<td>41</td>
																		<td>42</td>
																		<td>43.5</td>
																	</tr>
																	<tr class="al_middle">
																		<th scope="row">CHINA</th>
																		<td>43</td>
																		<td>45</td>
																		<td>47</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<a href="javascript:void(0);" class="btn_close"><img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
												alt="닫기"></a>
										</div>
										<!-- 미림 - 상품 사이즈 목록 -->
										<ul class="size_chip clearfix sizeChipKo1901">
											<c:forEach var="size" items="${sizes}">
													<li id="${size.psize}"><a
												href="javascript:fn_detailProductAjax('${size.psize}')"
												onclick="GA_Event('상품_상세','사이즈','${size.psize}')">${size.psize}</a>
													</li>
											</c:forEach>
										</ul>
								</span> <!-- 2021.08.10 화장품 상품인 경우 사이즈조견표 영역 미노출 --> <a
									href="javascript:fn_popupSizeQuickReference();"
									class="etc_info" onclick="GA_Event('상품_상세','사이즈_조건표','클릭')">사이즈
										조견표</a> <!-- 재입고알림 툴팁 --> <!-- //재입고알림 툴팁 --></li>
								<li><span class="title">수량</span> <span class="txt">
										<span class="qty_sel num"> <a
											href="javascript:fn_qtySubtraction();" class="left">이전 버튼</a>
											<input type="text" id="txtqty" title="수량" value="1"
											class="mr0" readonly="readonly"> <a
											href="javascript:fn_qtyAdd();" class="right">다음 버튼</a>
									</span>
								</span> <span class="txt" id="popularProudct" style="display: none">
										<span class="deliveryPlanDate"> 해당 상품은 전국 매장을 통해 수급하여
											배송 될 예정입니다. <br> 불량 등의 이유로 수급이 어려울 경우, 취소될 수 있습니다. <br>(평일
											기준 5일 이상 소요 예정)
									</span>
								</span> <input type="hidden" id="erpWorkOrderNumber"> <input
									type="hidden" id="reserveSalesStockpile"> <input
									type="hidden" id="erpWorkOrderProdCode"></li>
							</ul>
						</div>
						<div class="total_price clearfix">
							<div class="title float_left" style="width: auto;">총 합계</div>
							<div class="pirce float_right">
								<!-- 				<div class="tlt_ship"> -->
								<!-- 				<div class="delch_box" style="display: none;"> -->
								<!-- 	       			<span class="arr">위치아이콘</span> -->
								<!-- 	                <div> -->
								<!-- 	                    <div id="exchangeDiv"></div> -->
								<!-- 	                </div> -->
								<!-- 	        	</div> -->
								<!-- 				</div> -->
								<span id="sumPrice">₩1,250,000</span>
							</div>
						</div>
						<!-- st_receipt_wrap -->
						<!-- //st_receipt_wrap -->
						<!-- st_store_wrap -->
						<div class="st_store_wrap1807" id="storePickupChoice"
							style="display: none;">
							<div class="st_store">
								<dl>
									<dt>선택 매장</dt>
									<dd>
										<p id="storePickupChoiceName"></p>
										<p id="storePickupChoiceAddress"></p>
										<p id="storePickupChoiceTelephone"></p>
									</dd>
									<dt>수령 신청일</dt>
									<dd>
										<p id="storePickupChoiceDate"></p>
									</dd>
								</dl>
								<a href="javascript:fn_popupStorePickUp();" class="btn">매장변경</a>
							</div>
							<ul class="bul_sty01_li">
								<li>매장 수령 시 상품 사이즈 및 컬러 변경은 불가합니다.</li>
								<li>수령 가능 확정 일은 주문 완료 후, 수령 교환권을 SMS로 안내 드립니다.</li>
								<li>수령 확정일로부터 <span style="color: #fe4242;">1일 경과 후
										상품을 수령하지 않으시면 자동 취소</span> 됩니다.
								</li>
							</ul>
						</div>
						<!-- //st_store_wrap -->
						<div class="btnwrap clearfix"
							style="position: absolute; width: 473px; margin-top: -371.413px; margin-bottom: 371.413px;">
							<input type="button" value=""
								class="btn wishlist1803 float_left ml0  "
								onclick="addWishListClick();GA_Event('상품_상세','하단 고정 버튼','좋아요');">

							<div class="toast_popup">
								<p style="display: none; top: -4.12381px; opacity: 0.031172;">위시리스트에서
									삭제했습니다.</p>
							</div>

							<!--190508 추가 -->
							<div class="toast_popup_pre_order1905">
								<!-- 토스트팝업 190507 -->
								<p>
									예약 주문이 가능한 옵션(컬러/사이즈)가 있습니다. <br>옵션 선택 후 배송 예정일을 확인해 주세요.
								</p>
								<span class="arr">위치아이콘</span>
							</div>
							<!--//190508 추가 -->

							<form id="addToCartForm" name="addToCartForm"
								action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM?categoryCode=we051"
								method="post">
								<input type="hidden" maxlength="3" size="1" name="qty"
									class="qty"> <input type="hidden"
									name="productCodePost" value="MN2C8WJC026WP_CM"> <input
									type="hidden" id="productCodeType" name="productCodeType"
									value="ApparelStyleVariantProduct"> <input
									type="hidden" id="stockCnt" value="0"> <input
									type="hidden" name="storeId" id="storeId" value=""> <input
									type="hidden" name="storePickupDate" id="storePickupDate"
									value=""> <input type="hidden" name="workOrder"
									id="workOrder" value=""> <input type="hidden"
									name="recommendProduct" id="recommendProduct" value="">
								<input type="hidden" name="deliveryKind" id="deliveryKind"
									value=""> <input type="hidden" name="streetname"
									id="streetname" value=""> <input type="hidden"
									name="streetnumber" id="streetnumber" value=""> <input
									type="hidden" name="postalcode" id="postalcode" value="">
								<input type="hidden" name="quickStreetname" id="quickStreetname"
									value=""> <input type="hidden" name="quickStreetnumber"
									id="quickStreetnumber" value=""> <input type="hidden"
									name="quickPostalcode" id="quickPostalcode" value=""> <input
									type="hidden" name="fourpmList" id="fourpmList"> <input
									type="hidden" name="athomeList" id="athomeList"> <input
									type="hidden" name="pickupList" id="pickupList"> <input
									type="hidden" name="quickList" id="quickList"> <input
									type="hidden" name="buyNowYn" id="buyNowYn" value="false">
								<input type="button" value="쇼핑백 담기"
									class="btn cart1803 float_left ml0" id="addToCartButton"
									onclick="addToCart();GA_Event('상품_상세','하단 고정 버튼','쇼핑백담기');">
								<div>
									<input type="hidden" name="CSRFToken"
										value="77badcd5-86c7-4e47-8c1f-0663967bf7b6">
								</div>
							</form>
							<input type="button" value="바로주문"
								class="btn order float_right mr0" id="addToCartBuyNowButton"
								onclick="GA_Event('상품_상세','하단 고정 버튼','바로주문');addToCart(true);">
						</div>

						<dl class="toggle_type1" style="margin-top: 80px;">
							<!-- 상품상세 정보창 변경 211027 S -->
							<dt>
								<a href="javascript:void(0);" id="NEW_DETAIL_INFO_EVT">상품상세정보</a>
							</dt>
							<dd>
								<div class="product-info-211027">
									<h3>상품 추가 정보</h3>
									<table>
										<caption>상품 추가 정보</caption>
										<colgroup>
											<col style="width: 91px">
											<col style="width: 125px;">
											<col style="width: 127px">
											<col style="width: 126px;">
										</colgroup>
										<tbody>
											<tr>
												<th>핏</th>
												<td>슬림핏</td>
												<td class="bold">레귤러핏</td>
												<td>루즈핏</td>
											</tr>
											<tr>
												<th>신축성</th>
												<td class="bold">없음</td>
												<td>조금 있음</td>
												<td>있음</td>
											</tr>
											<tr>
												<th>비침</th>
												<td class="bold">없음</td>
												<td>약간</td>
												<td>있음</td>
											</tr>
											<tr>
												<th>두께</th>
												<td>얇음</td>
												<td class="bold">보통</td>
												<td>두꺼움</td>
											</tr>
											<tr>
												<th>안감</th>
												<td>없음</td>
												<td>부분 안감</td>
												<td class="bold">전체 안감</td>
											</tr>
										</tbody>
									</table>
									<p>상기 정보는 주관적 내용이므로 참고해주세요</p>
								</div>
							</dd>
							<!-- 상품상세 정보창 변경 211027 E -->
							<dt>
								<a href="javascript:void(0);" id="DETAIL_INFO_EVT"> 상품정보제공고시</a>
							</dt>
							<dd style="display: none;">
								<strong>상품품번 :</strong> MN2C8WJC026WP<br> <strong>품목
									:</strong> 의류<br> <strong>소재 :</strong> 겉감 캐시미어 100%, 배색 폴리에스터 29%,
								폴리우레탄 3%, 레이온 28%, 모 40%, 안감1 레이온 100%, 안감2 폴리에스터 100%(CM)<br>
								<strong>색상 :</strong> CM(CAMEL)<br> <strong>사이즈 :</strong>
								82, 76<br> <strong>제조국 :</strong> 한국<br> <strong>제조사
									:</strong> (주)한섬<br> <strong>제조연월 :</strong> 202210<br> <br>
								<strong>품질보증기준</strong><br> 1. 본 제품은 정부 고시 소비자 분쟁해결 기준에 의거
								고객의 정당한 피해를 보상해드립니다. <br> - 원단 불량, 부자재 불량, 봉제 불량, 사이즈 부정확,
								부당 표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한 세탁 사고 : 구입일로부터 1년 이내분은 무상수리,
								교환, 구입가 환불함. (단, 봉제 불량은 1년 경과 후에도 무상 수선 가능) <br> - 사이즈가 맞지
								않거나 디자인, 색상 불만 제품 : 구입 후 7일 이내로서 제품에 손상이 없는 경우 동일 가격, 동일 제품으로 교환
								가능. <br> - 상하의 한 벌(세트/일착)인 경우 한 쪽에만 이상이 있어도 한 벌(세트/일착)로
								처리함. 단, 소재 및 디자인이 다른 경우에는 해당 의류만 교환 가능. <br>2. 소비자 부주의에 의한
								제품 훼손, 세탁 잘못으로 인한 변형 및 품질 보증기간(1년)이 경과한 제품에 대해서는 보상의 책임을 지지 않으며,
								수선 가능시에는 실비로 수선해드립니다. <br>3. 제품에 이상이 있는 경우 바로 본사로 연락주시면
								수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서 수선했을 경우는 불가능합니다.<br> <br>
								<strong>세탁방법 및 취급 시 주의사항</strong><br> 본 제품은 반드시 드라이크리닝
								하십시오. 세탁 시 이염, 변색, 탈색될 수 있으니 유의하시기 바랍니다. 단추나 악세서리는 세탁 시 손상될 수
								있으므로 은박지로 싸거나 분리하여 주십시오. 특성상 마찰에 의해 올 뜯김 등 원단 손상이 발생할 수 있으니 취급 시
								주의하시기 바랍니다.<br> <br>
								<div style="margin-bottom: 20px;">
									<p style="float: left;">
										<strong>AS 책임자와 연락처</strong><br> ㈜한섬/1800-5700
									</p>
									<!-- 20200218 마크 추가 -->
									<div class="sft_ksdt"></div>
									<!-- // 20200218 마크 추가 -->
								</div>
								<br> <br> 위 내용은 상품정보제공 고시에 따라 작성되었습니다.
							</dd>
							<!-- 2021.08.10 화장품 상품인 경우 실측사이즈 영역 미노출 -->
							<dt>
								<a href="javascript:void(0);" id="REAL_SIZE_EVT">실측사이즈</a>
							</dt>
							<dd>
								<div class="ko realsize_img SZ06"></div>
								<p class="tit">자켓</p>
								<!-- info_tbl -->
								<div class="detail-size-bd">
									<!--20200910 -->
									<!-- 20160627 -->
									<span class="unit">단위(cm)</span>
									<!-- 아우터 사이즈 -->
									<table class="unit-board" border="0">

										<!-- 2019.07.24 아이템별 노출항목 판단 -->
										<!-- 2020.08.19 아이템별 노출항목 판단 -->
										<!-- 탑(베스트 제외) 2020.08.19 sizeCode 추가( SZ13 ~ SZ16 ) -->
										<caption>아우터 실측사이즈</caption>
										<colgroup>
											<col style="width: 81px;">
											<col style="width: auto;">
											<col style="width: auto;">
											<col style="width: auto;">
										</colgroup>

										<thead>
											<tr>
												<th scope="col">사이즈</th>
												<th scope="col">76</th>
												<th scope="col">82</th>
											</tr>
										</thead>
										<tbody>
											<!-- 2020.08.19 실측사이즈 추가 09~12 -->
											<tr>
												<th scope="row">총길이</th>
												<td>55.24</td>
												<td>55.88</td>
											</tr>
											<tr>
												<th scope="row">가슴단면</th>
												<td>49.85</td>
												<td>51.75</td>
											</tr>
											<tr>
												<th scope="row">어깨너비</th>
												<td>39.37</td>
												<td>40.64</td>
											</tr>
											<tr>
												<th scope="row">소매길이</th>
												<td>59.06</td>
												<td>59.69</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- //info_tbl -->

								<!-- <p class="txt_last">- 모델착용사이즈 : <strong>82</strong></p> -->
								<!-- 20160627 -->

								<!-- info_tbl -->

								<!-- //info_tbl -->
								<!-- numlist -->
								<br>
								<!-- //numlist -->
								<font color="red"> <strong> 원단, 측정방법에 따라 약간의 오차
										가능성이 있습니다.</strong>
								</font>

								<div class="timehomme_pants_fit" style="display: none"></div>
							</dd>
							<dt>
								<a href="#" id="DELI_RETURN_EVT">배송 및 교환/반품</a>
							</dt>
							<dd>
								<p class="tit">배송안내</p>
								<dl class="info_tbl">
									<dt>배송방식 :</dt>
									<dd>우체국택배, CJ대한통운, 로젠택배</dd>
									<!-- 210728 oera 신규 추가  -->
									<dt>배송지역 :</dt>
									<dd>전국 (일부 지역 제외)</dd>
									<dt>배송정보 :</dt>
									<dd>평균 입금완료일 기준 2-4일 소요됩니다 (토/일/공휴일 제외)</dd>
									<dt>배송비 :</dt>
									<dd>
										실결제금액 기준 30,000원 이상 결제 시 무료배송<br>30,000원 미만 결제 시
										2,500원(기본 배송비)<br>* 실결제금액이란, 쿠폰/바우처 할인액 및 <br>&nbsp;
										한섬마일리지/H.Point 사용 금액을 제외한 금액입니다. <br>
										&nbsp;&nbsp;(e-money 사용은 실결제금액에 포함)<br>* 도서산간 지역은 3,000원의
										별도 배송비가 부과됩니다.<br>* 일부 도서지역은 도선료가 부가될 수 있습니다.
									</dd>
								</dl>
								<p class="tit mt20">교환 및 반품안내</p>
								<!-- info_tbl -->
								<dl class="info_tbl">
									<dt>교환/반품 기간 :</dt>
									<dd>상품 수령 후, 7일 이내</dd>
									<dt>교환절차 :</dt>
									<dd style="letter-spacing: -0.2px;">
										사이즈 및 상품불량 교환만 가능(색상교환 불가)하며 교환을 원하실 경우<br> 고객센터로 문의해주시기
										바랍니다. (교환 재고가 없을 경우, 환불로 안내예정)<br> - 교환은 배송비 입금 및 상품 입고
										확인 이후에 진행됩니다. <br> 화장품은 상품 불량만 교환 가능하며(상품 개봉 후 교환 불가),
										고객센터로<br> 문의해주시기 바랍니다.
										<!-- 210728 oera 신규 추가  -->
									</dd>
									<dt>반품절차 :</dt>
									<dd>
										[배송완료] 7일 이내에 마이페이지 주문/배송/취소/반품 메뉴에서<br> [반품신청] 버튼을 클릭 시
										가능합니다.
									</dd>
									<dt>교환/반품 배송비 :</dt>
									<dd style="letter-spacing: -0.4px;">
										배송비는 5,000원 이며(반품비는 주문시 배송비 결제 유무에 따라 변동)<br>상품 불량 등의 이유로
										교환/반품하실 경우, 배송비는 무료입니다.
									</dd>
									<dt>교환/반품 불가사유</dt>
									<dd>
										다음의 경우에는 교환/반품이 불가합니다.
										<ol class="numlist">
											<li><span class="num sum">-</span> <span class="txt">교환/반품
													기간(상품 수령 후 7일 이내)을 초과하였을 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">고객님의
													요청에 의해 제품 사양이 변경(이니셜 제품, 사이즈 맞춤 제품 등)된 경우</span></li>
											<li><span class="num sum">-</span><span class="txt">제품을
													이미 사용하였거나, 제품 일부를 소비하였을 경우</span></li>
											<!-- 210728 oera 신규 추가  -->
											<li><span class="num sum">-</span> <span class="txt">화장품
													: 상품 개봉 후 교환/반품 불가. 단 상품 불량(내용물 불량) 혹은 피부 트러블로 인한 반품은 가능(용량
													1/3 미만 사용 및 의사소견서 1:1문의 첨부 필수)</span></li>
											<!-- // 210728 oera 신규 추가  -->
											<li><span class="num sum">-</span> <span class="txt">식기류
													: 제품 수령 후, 비닐포장을 개봉한 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">고객님의
													귀책사유로 인해 회수가 지연될 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">국내외
													환율 변동 등에 의해 가격이 변동되는 제품의 경우</span></li>
											<li><span class="num sum">-</span> <span class="txt">문제소지가
													있는 제품을 본사가 아닌, 타 업체(일반 수선실 등)에서 선처리가 된 경우</span></li>
										</ol>
									</dd>
									<!-- 210728 oera 신규 추가  -->
									<dt>교환/반품건 배송</dt>
									<dd>
										교환/반품 시 배송 받으신 박스로 반송하셔야 합니다. <br>(한섬/오에라/리퀴드퍼퓸바 상품 함께 주문
										후 교환/반품 시 각각의 박스에 나눠서 반송해주세요. 한 박스에 함께 동봉하여 반송 시 교환/반품 처리가 불가할
										수 있습니다)
									</dd>
									<!-- // 210728 oera 신규 추가  -->
								</dl>
								<p class="tit mt20">환불안내</p>
								<p>환불은 반송제품 확인 후 진행됩니다.</p>
								<br>
							</dd>
							<!--상품평 btn-->
							<div class="popup_customer_review1807" id="customerReview">
								<a href="#;" onclick="GA_Event('상품_상세','정보','상품평');">상품평(<span
									id="customerReviewCnt">1</span>)
									<div class="star_score1807" id="prodTotalStarScoreWrapper">
										<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
											<span class="cmt_per" id="prodTotalStarScore"
											style="width: 100%;">별점</span>
										</span>
									</div>
								</a>
							</div>
							<!--//상품평 btn-->

						</dl>
					</div>

					<div class="clearfix mt30">
						<div class="btnwrap float_left">
							<a href="javascript:fn_popupProductQnA();" class="btn arrow mr0"
								onclick="GA_Event('상품_상세','Q&amp;A','클릭');">Q&amp;A(<span
								class="data" id="productQnACnt">23</span>)
							</a>
						</div>
						<div class="float_right">
							<!-- AddToAny BEGIN -->
							<div class="a2a_kit a2a_kit_size_32 a2a_default_style"
								data-a2a-url="http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM?lang=ko"
								data-a2a-title="[MINE] 
					캐시미어 더블 재킷"
								style="line-height: 32px;">
								<a class="a2a_button_facebook"
									onclick="GA_Event('상품_상세','공유_SNS','FACEBOOK');"
									target="_blank" href="/#facebook" rel="nofollow noopener"><span
									class="a2a_svg a2a_s__default a2a_s_facebook"
									style="background-color: rgb(24, 119, 242);"><svg
											focusable="false" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
											<path fill="#FFF"
												d="M17.78 27.5V17.008h3.522l.527-4.09h-4.05v-2.61c0-1.182.33-1.99 2.023-1.99h2.166V4.66c-.375-.05-1.66-.16-3.155-.16-3.123 0-5.26 1.905-5.26 5.405v3.016h-3.53v4.09h3.53V27.5h4.223z"></path></svg></span><span
									class="a2a_label">Facebook</span></a> <a class="a2a_button_twitter"
									onclick="GA_Event('상품_상세','공유_SNS','TWITTER');" target="_blank"
									href="/#twitter" rel="nofollow noopener"><span
									class="a2a_svg a2a_s__default a2a_s_twitter"
									style="background-color: rgb(29, 155, 240);"><svg
											focusable="false" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
											<path fill="#FFF"
												d="M28 8.557a9.913 9.913 0 01-2.828.775 4.93 4.93 0 002.166-2.725 9.738 9.738 0 01-3.13 1.194 4.92 4.92 0 00-3.593-1.55 4.924 4.924 0 00-4.794 6.049c-4.09-.21-7.72-2.17-10.15-5.15a4.942 4.942 0 00-.665 2.477c0 1.71.87 3.214 2.19 4.1a4.968 4.968 0 01-2.23-.616v.06c0 2.39 1.7 4.38 3.952 4.83-.414.115-.85.174-1.297.174-.318 0-.626-.03-.928-.086a4.935 4.935 0 004.6 3.42 9.893 9.893 0 01-6.114 2.107c-.398 0-.79-.023-1.175-.068a13.953 13.953 0 007.55 2.213c9.056 0 14.01-7.507 14.01-14.013 0-.213-.005-.426-.015-.637.96-.695 1.795-1.56 2.455-2.55z"></path></svg></span><span
									class="a2a_label">Twitter</span></a> <a
									href="javascript:fnSharePin(&quot;http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM&quot;);"
									class="pinterest"
									onclick="GA_Event('상품_상세','공유_SNS','PRINTEREST');"></a> <input
									type="hidden" id="url"
									value="http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM">
								<div style="clear: both;"></div>
							</div>
							<script type="text/javascript">
var a2a_config = a2a_config || {};
a2a_config.num_services = 10;
var brandName =	"[" + $('#brandName').val() + "]";
var productName = $('.name').contents().first().text();
a2a_config.linkname = brandName + " " + productName;
a2a_config.linkurl = 'http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM?lang=ko';
a2a_config.track_links = 'googl';
</script>
							<script type="text/javascript"
								src="//static.addtoany.com/menu/page.js"></script>
							<!-- AddToAny END -->

						</div>
					</div>

					<input type="hidden" id="viewExhibitionPageCode" value="">
					<input type="hidden" id="viewExhibitionPageName" value="">



					<!-- 코디상품 start -->
					<div class="related_evt">

						<!-- box1 -->
						<div class="cd-n-lb-content-box" id="cd-n-lb-tab-01"
							style="display: block;">
							<div class="matches_list together-codi-list"
								id="referencesListContent"></div>

						</div>
					</div>
					<!-- //box1 -->

					<!-- box2 -->
					<div class="cd-n-lb-content-box" id="cd-n-lb-tab-02">
						<div class="detail-pg-lookbook-aside-box">
							<!-- title-slide -->
							<div class="title-slide-zone">
								<div class="swiper-container">
									<div class="swiper-wrapper"></div>
								</div>
								<!-- nav -->
								<!-- //nav -->
							</div>
							<!-- //title-slide -->

							<!-- sub-slide -->
							<div class="sub-slide-zone"></div>
							<!-- //sub-slide -->
						</div>
					</div>

					<!-- //box2 -->
				</div>

				<!--코디상품 end -->



			</div>

			<form id="PAY_FORM" method="post" accept-charset="euc-kr"></form>
		</div>
		<div class="product-detail-img"></div>
		<div class="matches_items" id="productDetailEtc">
			<script type="text/javascript">
//<![CDATA[

$(document).ready(function(){
	var recommendtProductYn = false;
	
	
		$('#recommendItemsListContent').css('display', 'block'); 
		recommendtProductYn = true;
	
		if(recommendtProductYn == false) {
			$('#newItemsListContent').css('display', 'block');
			$(".halatest_pb > a").addClass('on');
		}
		recommendtProductYn = true;
	
	
	if(recommendtProductYn == false) {
		$("#productEctTab .halatest_pb").css('display', 'block'); 
		$("#productEctTab .halatest_pb > a").addClass('on');
	}
});

function onMouseOverRecommend() {
	$(".rmd_pb_popup").css('display', 'block');
}
function onMouseOutRecommend() {
	$(".rmd_pb_popup").css('display', 'none');
}


//]]>
</script>

			<div class="clearfix">
				<div class="tab_b" id="productEctTab">
					<ul class="clearfix">
						<li class="rmd_pb"><a href="javascript:void(0);" class="on"
							onclick="GA_Event('상품_상세','추천상품','클릭');">추천상품(18)</a><img
							src="${pageContext.request.contextPath}/resources/images/common/ico_quest.png"
							alt="추천상품이란?" class="tlt" onmouseover="onMouseOverRecommend();"
							onmouseout="onMouseOutRecommend();">
							<div class="rmd_pb_popup" style="display: none;">
								<p>이 상품을 본 고객들이 함께 본 상품입니다.</p>
								<!-- 이 상품을 본 고객들이 함께 본 상품입니다. -->
								<span class="box_arr"></span>
							</div></li>
						<li class="halatest_pb"><a href="javascript:void(0);"
							onclick="GA_Event('상품_상세','최근본상품','클릭');">최근본상품<!-- 최근본상품 -->(16)
						</a></li>
						<li style="display: none"><a href="javascript:void(0);"
							onclick="GA_Event('상품_상세','룩북','클릭');">룩북(0)<!-- 룩북 --></a></li>
					</ul>
				</div>
			</div>




			<!-- 추천상품 start -->
			<div class="matches_list productEtcDiv"
				id="recommendItemsListContent" style="display: block;">
				<div class="controls">
					<a href="javascript:void(0);" id="etcprev" class="prev">이전</a> <a
						href="javascript:void(0);" id="etcnext" class="next">다음</a>
				</div>
				<div class="hidden_wrap">
					<ul class="clearfix productSlide">
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8WJM316M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8WJM316M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'0');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WJM316M_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">모크넥 스트랩 점퍼</span> <span class="price">
									₩630,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8WPC521M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8WPC521M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'1');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WPC521M_LE_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">[SET-UP] 밴딩 원턱 팬츠</span> <span
								class="price"> ₩315,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SY2CATTO339WM1', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SY2CATTO339WM1&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'2');"> <span><img
									src="http://newmedia.thehandsome.com/SY/2C/FW/SY2CATTO339WM1_DG_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR03">SYSTEM</span>
								<span class="title">언밸런스 헴 슬릿 티셔츠</span> <span class="price">
									₩295,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22C9TTO576W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22C9TTO576W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'3');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22C9TTO576W_IV_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">텍스처 블록 펄 티셔츠</span> <span class="price">
									₩298,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SY2C8WJS656WM1', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SY2C8WJS656WM1&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'4');"> <span><img
									src="http://newmedia.thehandsome.com/SY/2C/FW/SY2C8WJS656WM1_KG_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR03">SYSTEM</span>
								<span class="title">디테쳐블 커프스 체크 재킷</span> <span class="price">
									₩559,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C9WJM306M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C9WJM306M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'5');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C9WJM306M_IN_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">캐시미어 블렌드 포켓 점퍼</span> <span
								class="price"> ₩640,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22CAWJC381W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22CAWJC381W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'6');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22CAWJC381W_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">울 블렌드 트리밍 재킷</span> <span class="price">
									₩638,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22C9QOT604W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22C9QOT604W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'7');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22C9QOT604W_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">디테쳐블 다운 점퍼</span> <span class="price">
									₩798,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C9WOT304M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C9WOT304M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'8');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C9WOT304M_LE_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">캐시미어 블렌드 패널 재킷</span> <span
								class="price"> ₩640,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8WJM323MM', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8WJM323MM&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'9');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WJM323MM_SE_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">텍스처 블록 레더 점퍼</span> <span
								class="price"> ₩590,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8WOT308M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8WOT308M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'10');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WOT308M_OT_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">모크넥 점퍼</span> <span class="price">
									₩590,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8LJM902M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8LJM902M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'11');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8LJM902M_TP_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">램스킨 셔츠 점퍼</span> <span class="price">
									₩1,150,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22CAWPC331W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22CAWPC331W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'12');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22CAWPC331W_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">레이어 패널 밴딩 팬츠</span> <span class="price">
									₩298,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SY2C8WOTT04WM', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SY2C8WOTT04WM&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'13');"> <span><img
									src="http://newmedia.thehandsome.com/SY/2C/FW/SY2C8WOTT04WM_LE_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR03">SYSTEM</span>
								<span class="title">[PARIS] 하이넥 오버사이즈 패딩 점퍼</span> <span
								class="price"> ₩690,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8WJM303M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8WJM303M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'14');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WJM303M_DN_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">백 플랩 칼라 점퍼</span> <span class="price">
									₩495,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('SH2C8KVT008M', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=SH2C8KVT008M&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'15');"> <span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8KVT008M_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">울 하프 집업 스트랩 베스트</span> <span
								class="price"> ₩315,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22C8KCD840W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22C8KCD840W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'16');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22C8KCD840W_BK_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">글리터 인타르시아 펄 가디건</span> <span class="price">
									₩398,000</span> <span class="flag"></span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPagebyRecommend('O22C9NOT672W', 'https://lc.recopick.com/1/banner/1919/pick?uid=16680443.1664201066809&amp;source=&amp;pick=O22C9NOT672W&amp;method=25&amp;channel=product&amp;reco_type=user-item&amp;product_type=R&amp;reco_list=%5B%22SH2C8WJM316M%22%2C%22SH2C8WPC521M%22%2C%22SY2CATTO339WM1%22%2C%22O22C9TTO576W%22%2C%22SY2C8WJS656WM1%22%2C%22SH2C9WJM306M%22%2C%22O22CAWJC381W%22%2C%22O22C9QOT604W%22%2C%22SH2C9WOT304M%22%2C%22SH2C8WJM323MM%22%2C%22SH2C8WOT308M%22%2C%22SH2C8LJM902M%22%2C%22O22CAWPC331W%22%2C%22SY2C8WOTT04WM%22%2C%22SH2C8WJM303M%22%2C%22SH2C8KVT008M%22%2C%22O22C8KCD840W%22%2C%22O22C9NOT672W%22%2C%22O22C9TTO575W%22%2C%22SH2C7NSH707MP%22%2C%22SY2C9WTO272W%22%2C%22O22C9WOT274W%22%2C%22SH2C9KRN021M%22%2C%22O22C9WSC423W%22%2C%22SY2CAKTO237W%22%2C%22O22CAROT523W%22%2C%22SH2C8WJM323M%22%2C%22O22C9KTO728W%22%2C%22SY2C8WJM803W%22%2C%22SH2C9TTN613M%22%2C%22SY2C9KTO228W%22%2C%22SY2CAWSC925W%22%2C%22O22CAQOT611W%22%2C%22SY2CARCT413W%22%2C%22O22C9WOP152W%22%2C%22O22C9WSC426N%22%2C%22SH2C8TTO608MM%22%2C%22O22C9WSC424W%22%2C%22SY2CAWOT775W%22%2C%22O22C9WSC425N%22%5D&amp;tag=D');"
							onclick="callRecommendClick($(this),'17');"> <span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22C9NOT672W_BL_S01.jpg"
									alt="추천상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">디테쳐블 데님 베스트 레이어 점퍼</span> <span
								class="price"> ₩698,000</span> <span class="flag"></span>
						</span></li>
					</ul>
				</div>
			</div>
			<!-- 추천상품 end -->

			<!-- 최근본 상품 start -->
			<div class="matches_list productEtcDiv" style="display: none"
				id="newItemsListContent">
				<div class="controls">
					<a href="javascript:void(0);" id="etcprev" class="prev">이전</a> <a
						href="javascript:void(0);" id="etcnext" class="next">다음</a>
				</div>
				<div class="hidden_wrap">
					<ul class="clearfix productSlide">
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('SH2C8WJM323M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C8WJM323M_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">텍스처 블록 레더 점퍼</span> <span
								class="price"> ₩590,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('IL2C9ASZ096W');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('1','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9ASZ096W_BR_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR31">LÄTT</span>
								<span class="title">엠블럼 밴딩 스니커즈</span> <span class="price">
									₩325,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('O22C8WJC364WP1');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('2','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/O2/2C/FW/O22C8WJC364WP1_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR45">O'2nd</span>
								<span class="title">[기은세 Pick] 울 블렌드 더블 버튼 재킷</span> <span
								class="price"> ₩478,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('MN2B7KTO602W');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('3','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/MN/2B/FW/MN2B7KTO602W_LE_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR02">MINE</span>
								<span class="title">메쉬 크로셰 니트 탑</span> <span class="price">
									₩207,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TH2C9WPC581M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('4','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TH/2C/FW/TH2C9WPC581M_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR06">TIME
									HOMME</span> <span class="title">울 블렌드 테이퍼드 팬츠</span> <span
								class="price"> ₩395,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('SJ2C8TTO416W');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('5','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/SJ/2C/FW/SJ2C8TTO416W_BG_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR04">SJSJ</span>
								<span class="title">와플 칼라 티셔츠</span> <span class="price">
									₩335,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TM2C7TTO901WM1');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('6','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TM/2C/FW/TM2C7TTO901WM1_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR01">TIME</span>
								<span class="title">레터링 비딩 크롭 탑</span> <span class="price">
									₩525,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TM2C9KOT250W');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('7','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TM/2C/FW/TM2C9KOT250W_LS_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR01">TIME</span>
								<span class="title">카멜 블렌드 디테쳐블 후드 재킷</span> <span class="price">
									₩1,250,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('YS2D1WJC003WHD');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('8','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/YS/2D/SS/YS2D1WJC003WHD_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR35">FOURM
									THE STORE</span> <span class="title">[HIDDEN FOREST MARKET] 마티니
									비건 레더 크롭 집업 재킷</span> <span class="price"> ₩218,000</span> <span
								class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('MM2C9WJC203M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('9','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/MM/2C/FW/MM2C9WJC203M_DE_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR44">CLUB
									MONACO</span> <span class="title">울 블렌드 하운드투스 재킷</span> <span
								class="price"> ₩558,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TH2C8WJC200M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('10','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TH/2C/FW/TH2C8WJC200M_DR_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR06">TIME
									HOMME</span> <span class="title">울 블렌드 트위드 재킷</span> <span
								class="price"> ₩790,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('SH2C9NPC543NM');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('11','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C9NPC543NM_BL_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">[NEW PREP] 원턱 와이드 데님 팬츠</span> <span
								class="price"> ₩235,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TH2C8WOT317M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('12','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TH/2C/FW/TH2C8WOT317M_BG_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR06">TIME
									HOMME</span> <span class="title">후드 블록 점퍼</span> <span class="price">
									₩930,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('TH2C9WJC204M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('13','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/TH/2C/FW/TH2C9WJC204M_SW_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR06">TIME
									HOMME</span> <span class="title">알파카 블렌드 체크 재킷</span> <span
								class="price"> ₩1,180,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('SH2C9ASZ092M');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('14','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/SH/2C/FW/SH2C9ASZ092M_BK_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR07">SYSTEM
									HOMME</span> <span class="title">레더 첼시 부츠</span> <span class="price">
									₩345,000</span> <span class="flag"> </span>
						</span></li>
						<li style="padding: 0px; width: 165.833px;"><a
							href="javascript:goDetailPage('LV2C7ASZ006W');"
							onclick="GA_Detail('halatest',$(this));setEcommerceData2('15','RECENT_FROM_DETAIL');">
								<span><img
									src="http://newmedia.thehandsome.com/LV/2C/FW/LV2C7ASZ006W_BG_S01.jpg"
									alt="최근본 상품" class="respon_image"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/products/no_img2.jpg'"
									style="width: 96%; padding: 0px 2%;"></span>
						</a> <span class="item_info2"> <span class="brand BR20">LANVIN
									PARIS</span> <span class="title">빈티지 솔 범퍼 스니커즈</span> <span
								class="price"> ₩970,000</span> <span class="flag"> </span>
						</span></li>
					</ul>
				</div>
			</div>
			<!-- 최근본 상품 start -->


			<!-- 룩북 -->
			<div class="matches_list productEtcDiv" style="display: none"
				id="lookbookListContent">
				<div class="hidden_wrap lookbook_list191211 swiper-container">
					<ul class="clearfix productSlide swiper-wrapper">
					</ul>
					<a href="javascript:prevImgMove();"
						class="lookbook_prev swiper-button-prev" style="display: none">이전</a>
					<a href="javascript:lastImgMove();"
						class="lookbook_next swiper-button-next" style="display: none">다음</a>
				</div>
			</div>
			<!-- 룩북 end-->
		</div>
	</div>

	<!--상품평 리스트 팝업-->
	<div class="popwrap w_type_4" id="customerReviewDiv"
		style="display: none;">

		<!--//마일리지 안내영역 1906 -->
		<div class="pop_tltwrap2 pb0 customerreviewdiv1905">

			<h3>
				상품평(<span id="review_cnt" class="review_cnt">1</span>)
			</h3>
			<div class="star_score1807" id="totalStarScoreWrapper">
				<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
					<span class="cmt_per" id="totalStarScore">별점</span>
				</span>
			</div>
			<a href="#;" class="btn_evaluation1905" id="customerReviewWrite"
				onclick="GA_Event('상품평','상품평 작성하기','클릭');">상품평 작성하기</a>
		</div>
		<!-- pop_cnt-->
		<div class="pop_cnt evaluation_list1807 options">
			<div class="tab_a m3 mt20">
				<input type="hidden" id="review_tab_active" value="ALL">
				<ul id="review_tab">
					<li id="ALL"><a href="#;" class="active"
						onclick="GA_Event('상품평','탭','전체');">전체 (1)</a></li>
					<li id="PHOTO"><a href="#;" class=""
						onclick="GA_Event('상품평','탭','포토상품평');">포토 상품평 (0)</a></li>
					<li id="TEXT"><a href="#;"
						onclick="GA_Event('상품평','탭','일반상품평');">일반 상품평 (0)</a></li>
				</ul>
			</div>
			<div class="clearfix review_tab1_1807">
				<ul></ul>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="reviewPagingDiv"></div>
			<!-- //paging -->
		</div>
		<!--// pop_cnt-->
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!--//상품평 리스트 팝업 -->

	<!--상품평 쓰기 팝업 -->
	<div class="popwrap w_type_4" id="customerReviewWriteDiv"
		style="display: none;">
		<div class="pop_tltwrap2 customerreviewwritediv1807">
			<h3 id="review_title">상품평 작성하기</h3>
			<p class="reqd_txt float_right">
				<strong class="reqd">*</strong> 표시는 필수항목입니다.
			</p>
		</div>
		<div class="pop_cnt evaluation_write1905 options1811">
			<form id="reviewForm" name="reviewForm"
				action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM?categoryCode=we051"
				method="post" enctype="multipart/form-data">
				<input type="hidden" name="productCode"> <input
					type="hidden" name="pcode" value="${product.pcode}"> <input
					type="hidden" name="pno" value="${product.pno}"> <input
					type="hidden" name="productCodeType"> <input type="hidden"
					name="orderNumber" id="orderNumber" value=""> <input
					type="hidden" name="purchaseColor" id="purchaseColor" value="">
				<input type="hidden" name="purchaseColorName" id="purchaseColorName"
					value=""> <input type="hidden" name="purchaseSize"
					id="purchaseSize" value=""> <input type="hidden"
					name="purchaseProdYN" id="purchaseProdYN" value=""> <input
					type="hidden" name="orderWriteChk" id="orderWriteChk" value="">
				<input type="hidden" name="closeWriteChk" id="closeWriteChk"
					value=""> <input type="hidden" name="productId"
					id="productId" value=""> <input type="hidden"
					name="fileDeleteYN" id="fileDeleteYN">

				<!-- 상품평활성화 -->
				<input type="hidden" name="categoryCode" id="categoryCode"
					value="SZ06"> <input type="hidden" name="shoulderWidth"
					id="shoulderWidth" value=""> <input type="hidden"
					name="chestSize" id="chestSize" value=""> <input
					type="hidden" name="waistSize" id="waistSize" value=""> <input
					type="hidden" name="buttSize" id="buttSize" value=""> <input
					type="hidden" name="totalSize" id="totalSize" value=""> <input
					type="hidden" name="photoAccumulationRightYn"
					id="photoAccumulationRightYn" value=""> <input
					type="hidden" name="offlineOrdDt" id="offlineOrdDt" value="">
				<input type="hidden" name="offlineShpCd" id="offlineShpCd" value="">
				<input type="hidden" name="offlineShpNm" id="offlineShpNm" value="">
				<input type="hidden" name="tempProductId" id="tempProductId"
					value=""> <input type="hidden" name="reviewFileCd"
					id="reviewFileCd" value=""> <input type="hidden"
					name="reviewFileCd1" id="reviewFileCd1" value=""> <input
					type="hidden" name="reviewFileCd2" id="reviewFileCd2" value="">
				<input type="hidden" name="reviewFileCd3" id="reviewFileCd3"
					value=""> <input type="hidden" name="reviewFileCd4"
					id="reviewFileCd4" value="">
				<fieldset>
					<legend>상품평쓰기</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>상품평쓰기 입력항목</caption>
							<colgroup>
								<col style="width: 135px">
								<col>
								<col style="width: 130px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="th_space">상품명</th>
									<td colspan="3" style="padding: 15px;">
										<div class="item_box" id="reviewProductDiv">
											<div class="pt_list_all">
												<a href="#;"><img src="${productimage1}"
													id="reviewProducImg" alt="상품 이미지"
													onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></a>
												<div class="tlt_wrap review_header_wrapper">
													<!-- <div class="tlt_wrap review_header_wrapper nodata"> -->
													<a href="#;" class="basket_tlt"> <span class="tlt"
														id="reviewProductBrandName"></span> <span class="sb_tlt"
														id="reviewProductProductName"></span> / <span
														id="reviewProducPrice"></span>
													</a>
													<!-- 주문조회에서 넘어올시 이거 보여줌<p class="color_op" id="purchased_color_size" style="display:none;">COLOR : <span id="review_color_name"></span>   <span class="and_line">/</span>  SIZE : <span id="review_size"></span></p> -->
													<div class="select_options_wrap" style="display: none;">
														<ul class="select_options">
															<li class="select_colors">
																<p>
																	<span class="compulsory">*</span> 색상
																	<!-- 색상 -->
																</p>
																<ul class="color_chip clearfix">
																	<input type="hidden" id="colorName" value="CAMEL">
																	<li id="MN2C8WJC026WP_CM"><input type="hidden"
																		class="colorNameVal" value="CAMEL"> <a
																		href="#;" class="beige" data-color="CAMEL"
																		style="background: #a36944 url('http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_C01.jpg/dims/resize/24x24');"
																		onclick="javascript:fn_clickColorCode('MN2C8WJC026WP_CM', 'CAMEL');"
																		onmouseover="setColorName('CAMEL');"
																		onmouseout="setColorName('');"></a></li>
																	<li><span class="cl_name" id="colorNameContent"></span>
																	</li>
																</ul>
															</li>
															<li class="select_size">
																<p>
																	<span class="compulsory">*</span> 사이즈
																	<!-- 사이즈 -->
																</p>
																<ul class="size_chip clearfix" id="review_size_btn_area">
																	<li id="MN2C8WJC026WP_CM_76"><a
																		onclick="javascript:fn_clickSizeCode('MN2C8WJC026WP_CM_76');">76</a>
																		<productdetails:popupsizequickreference>
																		</productdetails:popupsizequickreference></li>
																	<li id="MN2C8WJC026WP_CM_82"><a
																		onclick="javascript:fn_clickSizeCode('MN2C8WJC026WP_CM_82');">82</a>
																	</li>
																</ul> <!-- <ul class="size_chip clearfix">
                                                            <li id="MN1IBKTO483W_MB_90">
                                                                <a href="javascript:fn_detailProductAjax('MN1IBKTO483W_MB_90')">90</a>
                                                            </li>
                                                 </ul> -->
															</li>
														</ul>
													</div>

													<!-- <div class="select_checkbox">
                                                <input type="checkbox" name="" value="" id="storePickTFC">
                                                <label for="storePickTFC">상품을 매장에서 구매하셨나요?</label>
                                            </div> -->
												</div>
												<!--20190529_selelct_group -->
												<div class="select_group" id="productOption"
													style="display: none;"></div>
												<!--//20190529_selelct_group -->
												<div class="select_checkbox" style="display: none;">
													<input type="checkbox" id="packopt" name="packopt">
													<label for="purchaseYN"> 매장에서 구매한 상품입니다.</label>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr class="tbl_blank1807">
									<td colspan="4">&nbsp;</td>
								</tr>


								<tr class="tbl_blank1807">
									<td colspan="4">&nbsp;</td>
								</tr>
								<tr class="write_star_wrap">
									<th colspan="4">
										<div class="write_star_score1807">
											<span class="cmt_star"> <span class="cmt_per star5">별점</span>
											</span>
											<ul class="btn_star_score">
												<li><a href="#;" value="1">1점</a></li>
												<li><a href="#;" value="2">2점</a></li>
												<li><a href="#;" value="3">3점</a></li>
												<li><a href="#;" value="4">4점</a></li>
												<li><a href="#;" value="5">5점</a></li>
												<input type="hidden" id="rating" name="rating" value="5">
											</ul>
											<p>평점을 선택해 주세요.</p>
										</div>
									</th>
								</tr>

								<tr>
									<th scope="row"><strong class="reqd"
										style="margin-top: 6px;">*</strong> <label for="lb1"
										style="margin-top: 6px;">상품평<br> <span
											class="subtxt_1905"> (20자 이상<br>&nbsp;200자 이하)
										</span>
									</label></th>
									<td colspan="3"><textarea id="reviewHeadline"
											name="headline" cols="30" rows="5"
											style="width: 98%; height: 78px" maxlength="200"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row" id="thFile" class="th_space"><label
										for="file">사진등록</label></th>
									<td colspan="3">
										<!-- File upload -->
										<div class="file_upload hs_input_file_wrap2003">
											<div class="upload_wrap2003">
												<input type="text" id="textReviewFile" class="text"
													title="파일 첨부하기" readonly="readonly" name="fileText">
												<div class="upload_btn">
													<input type="file" name="reviewFile" id="reviewFile"
														class="btn add_s" title="파일찾기"> <label
														for="reviewFile"> <!-- 	 <button type="button" id="uploadFile1" class="img_upload" title="파일찾기">  -->
														<span id="uploadFile1" class="img_upload">파일찾기</span> <!--	 </button> -->
													</label>

												</div>
											</div>
											<ul class="file_image_wrap2003">

											</ul>
											<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수
												있습니다.</p>
											<!-- //File upload -->
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<p class="txt_guide">
							<span style="color: #e46764; font-weight: bold;">- 상품평과
								무관한 내용이거나 상품 재판매, 광고, 동일 문자의 반복 및 기타 불법적인 내용은 통보 없이 삭제되며,<br>&nbsp;&nbsp;해당
								글 작성자 ID는 글쓰기 권한이 제한됩니다.
							</span><br>- 반품, 취소 등의 CS관련 글은 고객센터&gt;1:1문의로 이동될 수 있습니다.<br>
							<span>- 더한섬닷컴에서 구매한 상품의 상품평을 배송완료 30일 이내 작성 시, 추가 마일리지를
								지급합니다.</span><br> - 마일리지 지급에 대한 상세 내용은 마이페이지&gt;내 상품평 페이지에서 확인
							부탁드립니다.<br> &nbsp;&nbsp;(마일리지 적립은 오프라인 구매 및 간편회원 제외)
						</p>
					</div>
					<div class="btnwrap mt40">
						<input type="button" id="reviewCancle" value="취소하기" class="btn wt">
						<input type="button" id="reviewWriteSend" value="등록하기"
							class="btn gray mr0">
					</div>

				</fieldset>
				<div>
					<input type="hidden" name="CSRFToken"
						value="77badcd5-86c7-4e47-8c1f-0663967bf7b6">
				</div>
			</form>
		</div>
		<a href="javascript:void(0);" id="reviewCloseBtn"
			style="position: absolute; top: 20px; right: 20px; width: 20px; height: 20px;"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!--//상품평 쓰기 팝업 -->
	<style>
#delQnAFile {
	display: inline;
	position: absolute;
	top: 9px;
	right: 115px;
}

#textQnAFile {
	padding: 0 30px 0 6px;
	width: calc(100% - 24px);
	text-overflow: ellipsis;
}
</style>
	<script type="text/javascript">
$(document).ready(function() {
	$("#inquiryMobileNo2").on("keyup", function() {
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if ($("#inquiryMobileNo2").val().length > 0) {
			var inputNumberchk = /^[0-9]+$/; // 숫자 체크
			if (!inputNumberchk.test($("#inquiryMobileNo2").val())){
				$(this).val($(this).val().replace(/[^0-9]/gi,""));
				var la = new layerAlert("숫자만 입력 가능합니다.");
				la.confirmAction = function(){
					$("#inquiryMobileNo2").focus();
				};
			}
		}
	});

	$("#inquiryMobileNo3").on("keyup", function() {
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if ($("#inquiryMobileNo3").val().length > 0) {
			var inputNumberchk = /^[0-9]+$/; // 숫자 체크
			if (!inputNumberchk.test($("#inquiryMobileNo3").val())){
				$(this).val($(this).val().replace(/[^0-9]/gi,""));
				var la = new layerAlert("숫자만 입력 가능합니다.");
				la.confirmAction = function(){
					$("#inquiryMobileNo3").focus();
				};
			}
		}
	});

	$("#inquiryEmailSel").change(function(){
		if ($("#inquiryEmailSel").val().trim() == "") {
			$("#inquiryEmailDomain").val("");
		} else {
			$("#inquiryEmailDomain").val($("#inquiryEmailSel").val());
		}
	});
	
	//파일 삭제
	$(document).on('click','#delQnAFile',function(){
		$("#delAttach").val("Y");
		$('#textQnAFile').val("");
		$('#qnaFile').val('');
	});
});
</script>
	<div class="popwrap w_type_4" id="productQnADiv" style="display: none;">

		<div class="pop_tltwrap2 pb0">
			<h3>Q&amp;A</h3>
		</div>
		<div class="pop_cnt evaluation_list">
			<a href="#;" class="btn_evaluation" id="productQnAWrite">상품문의하기</a>
			<div class="clearfix">
				<table class="pop_tbl_ltype1">
					<caption>Q&amp;A</caption>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">Q&amp;A</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="qnAPagingDiv"></div>
			<!-- //paging -->
		</div>
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>


	<div class="popwrap w_type_3" id="productQnAWriteDiv"
		style="display: none;">
		<div class="pop_tltwrap2">
			<h3>상품문의하기</h3>
		</div>
		<div class="pop_cnt evaluation_write">
			<form id="productQnAForm" name="productQnAForm"
				action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/MN2C8WJC026WP_CM?categoryCode=we051"
				method="post" enctype="multipart/form-data">
				<input type="hidden" id="productCode" name="productCode"> <input
					type="hidden" id="productQnaCode" name="productQnaCode"> <input
					type="hidden" id="delAttach" name="delAttach" value="N">
				<fieldset>
					<legend>상품문의하기</legend>
					<div class="tblwrap">
						<p class="reqd_txt float_right">
							<strong class="reqd">*</strong> 표시는 필수항목입니다.
						</p>
						<table class="tbl_wtype1">
							<caption>상품문의하기 입력항목</caption>
							<colgroup>
								<col width="140px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label
										for="inquiryTitle">문의제목</label></th>
									<td><input type="text" id="inquiryTitle"
										name="inquiryTitle" title="input" style="width: 100%">
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label
										for="inquiryContents">문의내용</label><span class="com_txt_p">(300자
											이하)</span></th>
									<td><textarea name="inquiryContents" id="inquiryContents"
											cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row" class="th_space"><label for="file">파일
											첨부하기</label></th>
									<td>
										<!-- File upload -->
										<div class="file_upload">
											<input type="text" id="textQnAFile" class="text" title="파일찾기"
												readonly="readonly" name="fileText"> <a
												href="javascript:void(0);" id="delQnAFile"> <img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
												alt="파일삭제">
											</a>
											<div class="upload_btn">
												<label for="qnaFile"><button type="button"
														id="uploadFile" class="img_upload" title="파일찾기">
														<span>파일찾기</span>
													</button></label> <input type="file" id="qnaFile" name="uploadFile"
													class="btn add_s" title="파일찾기">
											</div>
										</div> <!-- //File upload -->
										<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row" class="th_space"><label
										for="inquiryMobileNo2">SMS 알림받기</label></th>
									<td>
										<div style="position: relative;">
											<input type="hidden" id="smsMobileNo" name="smsMobileNo">
											<select id="inquiryMobileNo1" title="휴대폰 번호 앞자리"
												style="width: 80px; margin-top: 0; vertical-align: middle; padding: 3px 8px 3px 8px;">
												<option value="010" selected="selected">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<div class="form_hyphen">-</div>
											<input type="text" id="inquiryMobileNo2"
												name="inquiryMobileNo2" title="휴대폰 번호 가운데자리"
												style="width: 80px;" maxlength="4">
											<div class="form_hyphen">-</div>
											<input type="text" id="inquiryMobileNo3"
												name="inquiryMobileNo3" title="휴대폰 번호 뒷자리"
												style="width: 80px;" maxlength="4"> <span
												class="sms_alm_2006_chk"
												style="display: block; position: absolute; top: 3px; right: 14px;">
												<input type="hidden" id="smsNoticeYN" name="smsNoticeYN"
												value="N"> <input type="checkbox"
												id="inquirySmsNoticeYn" name="inquirySmsNoticeYn"
												style="margin-top: 1px;"> <label
												for="inquirySmsNoticeYn">SMS 알람고지</label>
											</span>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inquiryEmailAddress"><strong
											class="reqd">*</strong><label for="inquiryMobileNo2">이메일
												답변받기</label></label></th>
									<td><input type="hidden" id="replyToEmail"
										name="replyToEmail"> <input type="text"
										id="inquiryEmailAddress" name="inquiryEmailAddress"
										title="이메일아이디" style="width: 120px;"> <span
										class="andmail">@</span> <input type="text"
										id="inquiryEmailDomain" name="inquiryEmailDomain"
										title="이메일계정 입력란" style="width: 120px;"> <select
										id="inquiryEmailSel" title="이메일계정"
										style="width: 140px; padding: 3px 8px 3px 8px;">
											<option value="" selected="selected">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="nate.com">nate.com</option>
											<option value="empas.com">empas.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="msn.com">msn.com</option>
											<option value="hanmir.com">hanmir.com</option>
											<option value="chol.net">chol.net</option>
											<option value="korea.com">korea.com</option>
											<option value="netsgo.com">netsgo.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="hitel.net">hitel.net</option>
									</select></td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="guide_txt clearfix" style="border-top: 0;">
						<span class="float_left"><strong>상품에 관한 배송, 교환, 취소
								등의 자세한 문의사항은 고객센터를 이용해 주시기 바랍니다.</strong></span> <span class="float_right">
							<input type="checkbox" name="securitySentenceYn"
							id="securitySentenceYn" value="Y"> <label
							for="securitySentenceYn">비밀글 설정</label>
						</span>
					</p>
					<div class="btnwrap mt40">
						<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
						<input type="button" id="qnaWriteSend" value="등록하기"
							class="btn gray mr0">
					</div>
				</fieldset>
				<div>
					<input type="hidden" name="CSRFToken"
						value="77badcd5-86c7-4e47-8c1f-0663967bf7b6">
				</div>
			</form>
		</div>
		<a href="javascript:void(0);" class="btn_close"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!-- layer pop 1 -->
	<div class="popwrap w_type_3" id="storePickupDiv"
		style="display: none;">
		<!--title-->
		<div class="pop_tltwrap">
			<h3>수령 매장 선택</h3>
		</div>
		<!--//title-->
		<!--contents-->
		<div class="pop_cnt zipcode">
			<!-- search -->
			<div class="search">
				<label for="search">지역명 (도로명)</label> <input type="text"
					id="storePickupSearchWord" name="searchWord"
					placeholder="매장명 또는 지역 명을 입력 후 검색해 주세요" style="width: 260px">
				<input type="button" value="검색" id="storePickupSearchBtn"
					class="btn wt_s mr0 min_auto">
			</div>
			<!-- //search -->
			<!--  del_tab_container -->
			<div class="del_tab_container">
				<table class="pop_dtable store">
					<caption>배송지 목록</caption>
					<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">배송지 주소</th>
							<th scope="col">연락처/휴대폰</th>
						</tr>
					</thead>
					<tbody id="popupStorePickupContent">

					</tbody>
				</table>
				<div class="btnwrap">
					<input class="btn wt_s" id="storePickupCloseBtn" value="취소"
						type="button"> <input class="btn gray_s"
						id="storePickupChoiceBtn" value="확인" type="button">
				</div>
			</div>
			<!-- //del_tab_container -->
		</div>
		<!--//contents-->
		<a href="#;" class="btn_close" id="storePickupClose"><img
			src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!-- layer pop 1 -->
	<!-- layer pop 1 -->
	<div class="popwrap w_type_2" id="restockReminder"
		style="width: 450px; display: none;">
		<div class="pop_tltwrap mb20">
			<h3>재입고 알림 신청</h3>
		</div>
		<div class="pop_cnt pop_con_restock1904">
			<div class="item_box" id="rewareHousingDiv">
				<input type="hidden" id="popupHProduct" value="">
				<div class="pt_list_all">
					<img
						src="${pageContext.request.contextPath}/resources/images/popup/cart_set_img1.jpg"
						id="popupProductImageS01" alt="">
					<div class="tlt_wrap">
						<div class="basket_tlt">
							<span class="tlt" id="popupBrandName"></span> <span
								class="sb_tlt" id="popupProductName"></span>
						</div>
						<p class="color_op" id="popupProductColor"></p>
						<input type="hidden" id="popupProductSize">
						<p class="mt5" id="popupProductPrice"></p>
					</div>
				</div>
			</div>
			<div class="input_box1904">
				<p class="txt1904">재입고 알림을 받으실 이메일 정보를 확인해주세요.</p>
				<form action="#" method="post">
					<!-- email -->
					<input type="text" id="email_address" title="이메일 아이디"
						class="em_form" style="width: 198px;" value="" disabled="disabled">
					<span class="andmail">@</span> <input type="text" id="email_domain"
						title="이메일 도메인" class="em_form"
						style="width: 198px; margin-right: 0;" value=""
						disabled="disabled">
				</form>
				<ul class="bul_sty01_li mt15">
					<li>재입고 알림 예정이 있는 상품(컬러/사이즈)에 한해서 재입고 알림 신청이 가능합니다. <br>(제작상황에
						따라 변경될 수 있습니다.)
					</li>
					<li>신청 후 30일 내에 상품이 재입고 되면 '1회' 알림이 발송됩니다.</li>
					<li>소량 입고되거나 동시 구매가 이루어질 경우 등 알림 후에도 품절이 발생할 수 있습니다.</li>
					<li>회원정보에 등록된 이메일 정보로 안내 드리며, 이메일 정보 수정은<br>마이페이지 &gt;
						개인정보변경 페이지에서 가능합니다.
					</li>
					<li>알림 신청 시의 상품 옵션 및 가격 등의 상품정보가 재입고 시 변동될 수 있습니다.</li>
					<li>아울렛으로 판매 전환 되었을 경우, 알림이 발송되지 않습니다.</li>
				</ul>
			</div>
		</div>
		<div class="btnwrap">
			<input type="button" class="btn wt_s" id="rewareHousingCancel"
				value="취소"> <input type="button" class="btn gray_s mr0"
				id="rewareHousingApply" value="신청">
		</div>
		<!-- btn_close -->
		<a href="#" class="btn_close"><img
			src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png"
			alt="닫기"></a>
		<!-- //btn_close -->
	</div>
	<!-- layer pop 1 -->
	<!--리얼핏 팝업 -->
	<div class="popwrap w_type_3" id="viewRealFit1810"
		style="width: 624px; display: none; margin-left: -342px;">
		<!-- Title1 -->
		<div class="pop_tltwrap rlfit_pop_tltwrap">
			<h3>핏 가이드</h3>
		</div>
		<!-- //Title1 -->
		<div class="rlfit_pop_cnt">
			<div class="tab_d m2">
				<ul>
					<li><a href="javascript:chageFitGuideTab('FIRST')"
						class="active"></a></li>
					<li><a href="javascript:chageFitGuideTab('SECOND')"></a></li>
				</ul>
			</div>
			<div class="rlfit_pop_slider">
				<!-- rlfit_slide1 -->
				<div class="tab_cnt1810 rlfit_slide1">
					<p class="fit_guide_size1810">• 착용 사이즈:</p>
					<ul class="slides">
					</ul>
					<div class="controls">
						<span class="prev" id="fitGuiPrev1"></span> <span class="next"
							id="fitGuiNext1"></span>
					</div>
					<div class="bx_pager1810">
						<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
							class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
					</div>
				</div>
				<!--// rlfit_slide1 -->
				<!-- rlfit_slide2 -->
				<div class="tab_cnt1810 rlfit_slide2" style="display: none;">
					<p class="fit_guide_size1810">• 착용 사이즈:</p>
					<ul class="slides">
					</ul>
					<div class="controls">
						<span class="prev" id="fitGuiPrev2"></span> <span class="next"
							id="fitGuiNext2"></span>
					</div>
					<div class="bx_pager1810">
						<a class="bx-pager-link" data-slide-index="0" href="#;">정면</a> <a
							class="bx-pager-link" data-slide-index="1" href="#;">뒷면</a>
					</div>
				</div>
				<!--// rlfit_slide2 -->
			</div>
		</div>
		<!-- btn_close -->
		<a href="#" class="btn_close"><img
			src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png"
			alt="닫기"></a>
		<!-- //btn_close -->
	</div>
	<!--//리얼핏 팝업 -->
	<script type="text/javascript">
$(document).ready(function() {
	$("#stockconfirm .btnwrap .btn.wt_s").on("click", function() {
		$("#offlieQtyClose").trigger("click");
	});
	
	$("#stockconfirm .btnwrap .btn.gray_s").on("click", function() {
		$("#offlieQtyClose").trigger("click");
	});
	
	$("#offlieQtyClose").on("click", function() {
		$("#offlineQtyListPop").show();
		$("#offlineQtyInfoPop").hide();
		$(".more_stockbox").hide();
		if($(".w_type_2_1").hasClass('stockList')) {
			$(".w_type_2_1").removeClass("stockList");
		}
		
		$("#soldOutYn").prop("checked", false);
	});
	
	$("#soldOutYn").change(function() {
		getOfflineQty();
		$("#offlineQtyList").scrollTop(0);
	});
});

function setColorNamePop(color) {
	$("#colorNamepop").html(color);
}

function hideOfflineQtyInformation() {
	$(".w_type_2_1").addClass("stockList");
	$("#offlineQtyInfoPop").hide();
	$("#offlineQtyListPop").show();
	
	$("#offlineQtyList").scrollTop(0);
}

function showOfflineQtyInformation() {
	if($(".color_size_qty.czq_pop .color_chip li a.on").length == 0) {
		var la = new layerAlert("색상을 선택해 주세요.");
		return;
	}
	if($(".color_size_qty.czq_pop .size_chip li a.on").length == 0) {
		var la = new layerAlert("사이즈를 선택해 주세요.");
		return;
	}
	
	if($(".w_type_2_1").hasClass('stockList')) {
		$(".w_type_2_1").removeClass("stockList");
	}
	
	$("#offlineQtyInfoPop").show();
	$("#offlineQtyListPop").hide();
	
	getOfflineQty();
}

function getOfflineQty() {
	var pCode, tmpCode = "MN2C8WJC026WP_CM";
	var infoTxt;
	
	if(tmpCode.indexOf("_") > -1) {
		pCode = tmpCode.split("_")[0];
	} else {
		pCode = tmpCode;
	}
	
	var colorCd = $(".color_size_qty.czq_pop .color_chip li a.on").attr("data-color-code");
	var colorNm = $(".color_size_qty.czq_pop .color_chip li a.on").attr("data-color-name");
	var sizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-size-code");
	var erpSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-erp-size");
	var krSizeCd = $(".color_size_qty.czq_pop .size_chip li a.on").attr("data-kr-size");
	var size = sizeCd;
	var soldOut = $("#soldOutYn").is(":checked") ? "Y" : "N";
	
	if(krSizeCd != null && krSizeCd != "") {
		size += krSizeCd;
	}
	
	infoTxt = "선택하신 옵션(<em>" + colorNm + "/" + size + "</em>)의 오프라인 매장 재고 정보입니다.<span>※ 매장 재고 현황은 대략적이며, 자세한 정보는 매장에 문의해주세요.</span>";
	$(".stock_pop_txt").html(infoTxt);
	
	$.ajax({
		url      : '/ko/p/offlineShopQty',
		type     : 'GET',
		datatype : 'json',
		data     : { "productCode" : pCode, "styleCode" : colorCd, "sizeCode" : erpSizeCd, "soldOut" : soldOut },
		success  : function(data) {
			var list;
			if(data.length > 0) {
				for(var i=0; i < data.length; i++) {
					if(i % 2 == 0) {
						list += "<tr>";
					} else {
						list += "<tr class='colbg'>";
					}
					list += "	<td>";
					list += "		<span>" + data[i].branchName;
					list += "			<em class='redtxt_count'>" + data[i].offlineShopQty + "개</em>";
					list += "		</span>";
					list += "		<p>" + data[i].branchAddress + "</p>";
					list += "	</td>";
					list += "	<td>" + data[i].branchTelephone + "</td>";
					list += "</tr>";
				}
			} else {
				list = "<td colspan='2' style='width:470px !important;height:280px;padding-left:25px;text-align:center;'>선택하신 옵션("+colorNm+"/"+size+")의 매장 재고를 찾을 수 없습니다.</td>";
			}
			$("#offlineQtyList").html(list);
		},
		error    : function(xhr, Status, error) {
			var la = new layerAlert("[Error] " + error);
			return;
		}
	});
	
	$(".more_stockbox").show();
}
</script>

	<!-- 매장 재고 확인 팝업 -->
	<div class="popwrap w_type_2_1" id="stockconfirm"
		style="top: 50%; position: fixed; z-index: 101; margin-top: -175px; display: none;">
		<!-- Title1 -->
		<div class="pop_tltwrap">
			<h3>매장 재고 확인</h3>
		</div>
		<!-- //Title1 -->
		<!-- pop_cnt-->
		<div class="pop_cnt" id="offlineQtyListPop">
			<span class="stock_poptit"> 오프라인 매장 재고를 확인하실 색상과 사이즈를 선택해주세요.
			</span>
			<ul class="color_size_qty czq_pop">
				<li><span class="title">색상</span>
					<div class="txt">
						<ul class="color_chip clearfix">
							<input type="hidden" id="colorName" value="CAMEL">
							<li><input type="hidden" class="colorNameVal" value="CAMEL">
								<a href="#;" class="beige"
								style="background: #a36944 url('http://newmedia.thehandsome.com/MN/2C/FW/MN2C8WJC026WP_CM_C01.jpg/dims/resize/24x24')"
								data-color-code="CM" data-color-name="CAMEL"
								onmouseover="setColorNamePop('CAMEL')"
								onmouseout="setColorNamePop('')"></a></li>
						</ul>
					</div> <span class="cl_namepop" id="colorNamepop"></span></li>
				<li><span class="title">사이즈</span> <span
					class="txt size_chip190527">
						<ul class="size_chip clearfix sizeChipKo1901">
							<li><a href="#;" data-size-code="76" data-kr-size="(44)"
								data-erp-size="1">76<span class="ko_size1901">&nbsp;(44)</span></a>
							</li>
							<li><a href="#;" data-size-code="82" data-kr-size="(55)"
								data-erp-size="2">82<span class="ko_size1901">&nbsp;(55)</span></a>
							</li>
						</ul>
				</span></li>
			</ul>
			<div class="btnwrap_pop">
				<input type="button" class="btn gray_s"
					onclick="javascript:showOfflineQtyInformation();GA_Event('매장_재고_확인','매장 재고 확인하기','MINE_캐시미어 더블 재킷');"
					value="매장 재고 확인하기">
			</div>

			<div class="more_stockbox" style="display: none;">
				<p class="stock_pop_txt"></p>
				<div class="chk_box">
					<input type="checkbox" id="soldOutYn"
						onclick="GA_Event('매장_재고_확인','필터','품절 매장 제외');"> <label
						for="soldOutYn">품절 매장 제외</label>
				</div>
				<table class="pop_stocktb">
					<caption>배송지 목록</caption>
					<thead>
						<tr>
							<th class="mj_th" scope="col">매장 정보</th>
							<th scope="col">연락처</th>
						</tr>
					</thead>
					<tbody id="offlineQtyList">
					</tbody>
				</table>
				<!-- //table -->
				<div class="btnwrap">
					<input class="btn wt_s"
						onclick="GA_Event('매장_재고_확인','취소 / 확인','취소');" value="취소"
						type="button"> <input class="btn gray_s"
						onclick="GA_Event('매장_재고_확인','취소 / 확인','확인');" value="확인"
						type="button">
				</div>
			</div>

		</div>
		<!--// pop_cnt-->
		<div class="pop_cnt_info" id="offlineQtyInfoPop"
			style="display: none;">
			<strong>매장 재고 안내</strong>
			<p>현 시점 재고 수량을 조회합니다.</p>
			<p class="pci_txt">
				재고 확인 시 동일 시점에 해당 상품이 판매될 경우 수량의 차이가 있을 수 있으니,<br> <span>정확한
					수량 및 구매 가능 여부는 매장으로 직접 문의해주시기 바랍니다.</span>
			</p>
			<div class="btnwrap_pop">
				<input type="button" class="btn info_gray"
					onclick="javascript:hideOfflineQtyInformation();GA_Event('매장_재고_확인','안내사항 확인 완료','클릭');"
					value="안내사항 확인 완료">
			</div>
		</div>
		<a href="javascript:void(0);" id="offlieQtyClose" class="btn_close"
			onclick="GA_Event('매장_재고_확인','닫기','클릭');"><img
			src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!--// 매장 재고 확인 팝업 -->
	<!-- 211101 체험단 리뷰 추가 S -->
	<!-- 체험단 상품평 리스트-->
	<div class="popwrap w_type_4 pop-tester-review" id="testerReviewDiv"
		style="display: none;">
		<div class="pop_tltwrap2 pb0 customerreviewdiv1905">
			<h3>
				체험단(<span class="review_cnt">15</span>)
			</h3>
			<p>더한섬닷컴 체험단 이벤트에 당첨된 고객님들의 상품 사용 후기입니다.</p>
		</div>
		<!-- pop_cnt-->
		<div class="pop_cnt evaluation_list1807 options">
			<div class="clearfix review_tab1_1807">
				<ul>
					<!-- 1 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>장*윤</span> / <span>30대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_0">
							<ul class="slides reviewImg0">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_3.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_4.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_5.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_6.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/01/pc_7.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="6" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								열흘 정도 써본 한섬의 럭셔리 뷰티 oera♥ <br> 세안 후 솜으로 닦아내지 않으면 마무리가 되지 않은
								느낌인데, 오에라의 캘리브레이터로 스킨 대신 첫 단계로 써보니 피부가 한결 정리된 기분. 그리고 무엇보다 울긋불긋한
								톤이 균일해졌다! 특히 전용 패드가 너~무 좋아서 감동. <br> 세심하게 만든게 느껴지는 오에라의
								캘리브레이터 꾸준히 쓰면 올 여름 상한 피부가 다시 돌아올 것 같아~
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 2 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>이*주</span> / <span>30대</span> /
									<span>복합-민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_1">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_5.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_6.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/02/pc_7.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="6" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								오에라의 멀티-베네핏 캘리브레이터는 전용 패드 120매와 80ml의 본품이 함께 구성되어 있습니다. <br>
								한 손으로 다 잡히지 않는, 넉넉한 용량입니다. 은빛의 고급스러운 패키지가 눈에 띕니다. <br> 용기는
								펌핑형으로, 무게감이 적당해 사용이 편리했습니다. <br> 제품을 펌핑하여 페이스에 사용하기 전부터 향에서
								깊은 인상을 받을 수 있었습니다. 스킨케어 첫 단계에서 사용하는 제품인 만큼, 휴식과 안정의 느낌을 선사하는
								향이라는 느낌이 듭니다.<br> 멀티-베네핏 캘리브레이터는 묽게 흐르는 제형이지만, 피부에 금방 흡수되며
								촉촉한 느낌입니다. <br> 전용 패드는 한쪽에 엠보가 도드라지며, 다른 한 쪽은 좀더 부드러운
								느낌입니다. 부드러운 패드 반대 쪽 면에 묻혀 사용하니 진정과 수분 공급에 탁월한 효과를 볼 수 있었습니다. <br>
								탄력이 조금 더 신경 쓰이는 날에는 패드에 캘리브레이터를 넉넉히 묻혀 팩처럼 활용하기도 했습니다. 시간이 지나
								패드를 떼어 내면 눈에 띄게 촉촉해지고 쫀쫀해진 피부 때문에 자꾸 손이 가는 제품입니다.<br> 사용하며
								가장 인상적이었던 점은 자극없이 피부에 생기를 불어넣어 준다는 점입니다. 복합성에 민감성 피부인 제가 민감한 부위에
								제품을 덧바르더라도 자극이 전혀 느껴지지 않았습니다. <br> 2주 동안 캘리브레이터를 사용하며 스킨
								토너를 사용할 때보다 수분이 충전되는 느낌을 받았습니다.<br> 캘리브레이터는 기초 첫 단계에서 단독
								사용하더라도, 토너 뿐만 아니라 에센스의 역할까지도 훌륭히 해내는 듯합니다. 역할까지도 훌륭히 해내는 듯합니다.
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 3 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>최*정</span> / <span>30대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_2">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_5.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/03/pc_6.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								한섬의 프리미엄 스킨케어 브랜드라 해서 넘나 기대가 되었는데요, 포장 상태도 마음에 들었고 케이스도 고급스러운
								디자인이라, 엄마 선물로도 좋을 것 같아요! <br> 처음에는 큰 박스가 와서 왜 이렇게 큰가 했더니,
								캘리브레이터랑, 캘리브레이터 전용 패드가 같이 들어가 있었어요!<br> 제가 피부가 예민한 편이라, 많은
								성분과 기능을 담은 제품은 사용하기 무서워하는 편인데, 오에라 켈리브레이터는 사용 후에 자극이나 가려움이 느껴지지
								않아서 좋았어요! <br> 왜 패드가 포함되어 있나 했더니, 패드를 활용해서 피부결을 정돈하는 단계가 첫
								단계더라구요! 패드는 촘촘하지 않은 독특한 재질로 되어 있어요! 피부결을 따라 닦아내듯 발라주면 된답니다!<br>
								캘리브레이터 전용 패드를 이용해서 피부결을 닦아낸 후에는, 손바닥에 적당량을 펌핑한 후에 피부에 지그시 누르듯
								흡수시켜주면 된답니다! 용기는 펌핑형으로 되어 있어서 위생적으로 사용하기 좋답니다!ㅎㅎ <br> 제형은
								흐르는 물 같은 제형에, 향은 딱 맡아도 고급스러운 향이 나더라구요. 자연스러운 향이다보니 호불호가 크게 갈리지
								않고 사용할 수 있을 것 같았답니다!<br> 무엇보다 흡수력이 빠르고, 얼굴에 두껍게 발리는 느낌이
								아니여서 산뜻한 느낌이 났어요! <br> 아침저녁으로 사용중인데,촉촉한 느낌이 지속되어서 계속 꾸준히
								사용해볼 생각이랍니다!
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 4 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>박*영</span> / <span>30대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_3">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_3.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_4.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_5.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/04/pc_6.gif"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								한 박스에는 "오에라 멀티 베네핏 캘리브레이터"가 있었고, 나머지 한 박스는 전용 패드가 들어있다. <br>
								전용 패드는 일반 화장솜이 아니었다.내 얼굴의 숨은 각질을 한번에 닦아버리겠다는 포부가 그대로 느껴지는 질감!<br>
								어떤 질감인지, 어떤 색인지 전혀 정보가 없는 채 꾹꾹 눌러보니....액체에 가까운 질감이 손등을 타고 흐른다.<br>
								손등에 문질러보니 끈적임이 1도 남아있지 않았다. 바르지 않은 손등과 비교해보면, 광택과 확연히 비교가 된다.<br>
								자연스럽게 손등이 코로 가는데, 향이 인위적인 느낌이 없이 너무 좋았다. <br> 비싸보이는 화장솜에다가
								멀티 베네핏 캘리브레이터를 몇번 펌프해준다. 기존에 쓰던 스킨을 화장솜에 묻혀 일단 피부결을 정돈하고 전용 패드에
								적당양 오에라 멀티 베네핏 캘리브레이터를 뿌려 다시 닦아낸다. <br> 특히, 거칠거칠하던 턱 주변과 볼을
								더 집중적으로 닦아냈다. 일반 화장솜과 다르게 표면이 거칠해서 뭔가 각질이 잘 닦이는 느낌이 들었다. 왜 전용패드를
								함께 패키지로 파는지 알 것 같았다. 전용패드 다쓰면 꼭 다시 사고 싶다.<br> 그 다음날 아침과
								저녁세안 후에도 역시 사용을 해본 결과 볼을 만져보니 확실히 부드러워졌다. 정말 제대로 느껴졌다. 괜히 '피부톤
								개선, 피부결 개선, 피부 탄력' 에 좋다고 한게 아니었다. 계속 부드러운 얼굴을 만져보게 된다 ㅋㅋㅋ<br>
								제품을 받고 사용한지 약 일주일째.. 이 제품을 이렇게 사용해보게 해준 한섬이 너무 고마워졌다. 일단 내 피부가
								요즘 거칠하다.. 팩을 해도 거칠다... 라고 고민하시는 분들은 오에라 멀티 베네핏 캘리브레이터 써보시길
								추천드린다.<br>
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>

					<!-- 5 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>오*선</span> / <span>40대</span> /
									<span>복합성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_4">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_5.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_6.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/05/pc_7.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="6" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								아침마다 세수할때 손끝에 느껴지는 부드러움을 알게해준 오에라! 한섬팬인데 오에라팬이 될거같아요. <br>
								첫째, 피부결이 일주일도 안되어 달라진걸 느꼈어요. <br> 실크처럼 부드럽다라는 말보다 더 좋은 표현을
								못찾겠어요. 아침저녁 사용하는데 손끝이 너무 행복해요<br> 둘째, 피부결이 정리되니 피부톤도 한결 고르게
								되고 밝아지는거 같아요.<br> 셋째, 주름개선은 조금 더 써보고 공유할수 있을거 같아요.<br>
								사용은 펌핑하고 들어있는 패드에 (한쪽은 결이있고, 반대쪽은 매끄러워요~결있는데로 쓱 밀어서 각질까지 케어하고,
								부드러운면으로 쓱 밀어서 피부결 살리고) 뭍혀서 얼굴결 정리하듯 쓱 발라주고, 한번더 펌핑해서 얼굴에 쏘옥~흡수하면
								되는데요, 피부에서 겉돌지 않고 쏘옥~흡수되서 사용도 넘넘 편하답니다.<br> 다른 에센스2배 짐승용량이라
								가치가 있는거 같아요.14일도 안되어 피부결 변화와, 14일이면 느껴지는 피부톤 정리까지!!! 최고예요
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 6 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>송*희</span> / <span>40대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_5">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/06/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								40대 중반에 가을이 되니 부석부석해진 피부가 좀 더 건강해졌으면 좋겠다는 바램이 생기더라구요. <br>
								건강하게 빛나는 피부, 좀 더 어려보이고건강해지고 싶다는 생각으로 피부과, 다양한 화장품, 팩등을 찾고 있던 중 운
								좋게 만난 오에라의 멀티-베네핏 캘리브레이터♡~ <br> 믿고 사용할 만한 스위스의 기술력과 연구과정으로
								탄생했다는 과학기술,크로노 엘릭서를 담은 캘리브레이터가 피부를 케어해주네요. <br> 세안후 앞 뒷면이
								다른 패드 중 더 거친 부분으로 에센스를 3~4방울을 얼굴 전체를 부드럽게 닦아줘요. 그것만으로도 각질이 정리되어
								피부결 톤을 정리가 되더라구요.<br> 한 번 더 수분감으로 채울 부분은 에센스 몇방울을 덜어 손가락으로
								살포시 눌러주면 최상의 컨디션으로 피부가 편안해지는 느낌.럭셔리리추얼스킨케어가 가능한 하이엔드 뷰티~였어요.<br>
								자연분해까지 생각해 환경친밀 비건패드로 수분감이 부족한 부분에 5분간 올려두면 피부의 수분감 충족, 톤과 결,
								매끄러움을 향상시켜 줍니다. <br> 눈가와 이마의 미세한 주름까지 잡아주는 오에라의 멀티-베네핏
								캘리브레이터♡로 더 예뻐지세요~
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 7 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>한*연</span> / <span>30대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_6">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/07/pc_5.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								용기 디자인은 깔끔, 영롱한 느낌! 오에라의 분위기를 느낄 수 있어요~<br> 사용 방법은 간단해요 ㅎㅎ
								먼저 전용 패드를 활용하여 피부결을 정돈하고, 두번째는 손으로 흡수시켜 수분 공급을 해주세요! 레이어링 해주는
								느낌으로다가:) <br> 처음 전용패드로 발라주었을 때 느낌은 "오!?!" 👀 촉촉 찹찹 바르면 느낌이
								쫀득쫀득해지는 느낌이더라구요:) <br> 피부톤 개선이나, 피부결, 탄력에 좋다고 하니 꾸준히 사용해 봐야
								겠어요~<br> 촉촉한 손등 보이죠!? 패드도 완전 꿀템이라 슥슥 닦아주고, 흡수시켜주면 최고의
								조합이에요~ <br> 환절기 민감한 피부에 추천해봅니다~
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 8 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>김*현</span> / <span>40대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_7">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/08/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								한섬옷을 좋아하는 편이라, 한섬브랜드에 관심이 많았는데 한섬에서 화장품라인이 나온다는 소식에 넘 기대가 많았다…
								체험단모집에 별기대없이 댓글 응모하였는데~~선정되어 넘 기쁨~~ <br> 기다리던 "오에라" 브랜드명의
								멀티-베네핏 캘리브레이터 에센스 도착!!! <br> 밤에 세안 후 전용 패드로 살짝 닦아내듯 바른 후,
								적당량을 덜어서 누르듯 바름~ <br> 아침에 일어나보니 맑아진 피부톤이 느껴져요~ 역시 명품이 좋군…
								다른 라인도 넘 체험해보고 싶네요… 향도 고급스러운 향수 느낌의 달달함이 가득한 향이에요...^^ <br>
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>

					<!-- 9 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>김*정</span> / <span>40대</span> /
									<span>복합성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_8">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/09/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								피부에 밸런스를 잡아줄 완벽한 #에센스 발견 <br> 우선 처음 보자마자 멋있다!!! 감탄😍 그리고
								향수를 쓰는 기분은 보너스~ <br> 1. 피부를 가장 편안한 상태로 만들어주는 오에라만의 처방 솔루션.<br>
								2. 독자적인 크로노 엘릭서™가 "톤","결","촉(탄력)"을 동시에 케어하는 멀티 베네핏 효과 선사.<br>
								3. 전용패드로 피부결 정리 후 손으로 흡수시켜 수분공급하는 2-레이어링 케어.<br> 앞으로 내피부를
								맡겨보기로했다~ #똑똑한에센스 #오에라 #컬러브레이터
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 10 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>한*연</span> / <span>30대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_9">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/10/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								독자성분 '크로노 엘릭서'와 피부 리듬을 잡아주는 '캘리브레이팅 시스템'<br> 피부 톤/결/촉(탄력)을
								함께 챙겨주는 멀티-베네핏 캘리브레이터 <br> 1.써본지 2주 되었는데, 지금 계절이면 뒤집어졌을 피부가
								나름 단단해져 있는 느낌😀<br> 2.친환경 전용 비건패드로 각질을 정돈해주고 손으로 싸악 흡수시켜주니
								촉촉함이 오래가는 느낌.<br> 3.피부가 좋은편은 아닌데, 요새 안색이 좋아졌다는 얘기를 많이 듣는다.<br>
								#캘리브레이터 #더한섬닷컴 #모닝뷰티루틴 #에센스추천
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 11 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>박*아</span> / <span>40대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_10">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/11/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								캘리브레이터는 투명하고 묽은 제형으로 피부에 닿았을 때 우드향이 은은하게 나는 게 정말 좋았습니다. <br>
								함께 들어있는 패드에 두세번 펌핑하여 볼-이마-코와 턱 순으로 부드럽게 닦아 내듯 발라줍니다. <br>
								패드는 부드러운 면과 거친 면이 양면으로 되어 있어 각질이 신경 쓰일 때는 거친 면으로 바르고, 꼼꼼히 세안을 하여
								피부가 민감한 상태가 되었을 때는 부드러운 면으로 발라 피부에 최소한으로 자극이 되도록 하였습니다. <br>
								한 번 닦아 내듯 바른 패드는 바로 버리지 않고 뒤집어서 두어 번 더 펌핑한 후 가장 신경 쓰이는 이마와 미간 주름
								위에 붙여 놓아 5분 간 팩을 하였습니다. 이마에 패드로 잠시 팩을 하는 동안 손바닥에 다시 캘리브레이터를 적당량
								덜어 눈가와 볼, 팔자주름 등 피부에 대고 지긋이 누르듯 흡수시켜 주었습니다. <br> 성분이 피부 속에
								흡수되어 완전히 자리 잡는 데에 한 1~2분 정도 걸리는 것 같아요. 빠르게 피부에 흡수되어 금방 부드럽고
								촉촉해집니다. 금방 피부에 스며들지만 신기하게도 피부결을 부드럽고 매끄럽게 정돈해주니 정말 신기했습니다. <br>
								캘리브레이터의 효과를 온전히 느끼고 싶어 2주일 째 화장을 하지 않고 맨 얼굴로 출근을 하고 있는데요, <br>
								피부에 보습감을 전달하여 하루 종일 건조하지 않으면서 유수분 조절이 되어 산뜻한 느낌이 들었습니다. 쉽게 예민해졌던
								피부에 자극 없이 스며들어 윤기와 영양분을 공급해주는 듯했습니다. <br> 매일 아침저녁 세안 후
								사용할수록 피부는 투명해졌고 자꾸 거울을 보고 싶어질 정도로 매끈해졌습니다. <br> 이렇게 단기간에
								미백효과가 나타나는 것이 정말 신기했고, 꾸준히 사용하면 분명 효과를 볼 수 있을 것 같아요. <br>
								다양한 피부 상태와 고민에 따라 오에라의 특징적인 솔루션을 담아낸 기능성 제품을 하나씩 단계별로 선택해 자신만의
								리추얼을 완성해가는 즐거움을 느낄 수 있을 듯 합니다.
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 12 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>최*희</span> / <span>30대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_11">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_3.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_4.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_5.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/12/pc_6.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="2" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="3" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="4" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="5" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								한섬의 럭셔리 뷰티 제품 답게 패키지 역시 고오급지다! 한섬하다! 할만했습니다. <br> 실버톤의 화장품
								용기며, 제품과 함께 동봉되어있는 친환경 전용 패드!! 그냥 말이 필요 없었습니다.<br> 설명서에
								나와있는대로 1차는 세안 후 가볍에 패드에 세럼을 약 2회 펌핑하여 피부결을 따라 닦토 하듯 닦어주었습니다.<br>
								피부에 닿는 순간 냄새 무슨일이죠? 기존 화장품들에서 나는 인위적인 향이 아닌 은은한 향이 특히 마음에 들었구요.<br>
								굴곡진 패드가 화장품을 흡수하는게 아니라, 그대로 머금고 있다가 제피부에 100% 전달해주어 피부 결정리에 너무
								좋은 느낌을 받았습니다. <br> 최근 제가 야근과 마법으로 인해 피부가 푸석해졌었는데요.. 요 제품으로
								아침 저녁 2회씩 사용한 결과 확실히 피부톤이 맑다! 확실히 피부 결 (각질)이 정돈되었다! 하는 느낌을 받을 수
								있었습니다.<br> 제형은 아주 묽은 타입인데요. 끈적임 없이 피부에 부드럽게 스며들더라구요.가격은
								조금(?) 비싸지만.. 이래서!! 좋은걸. 쓰는거지...하는 생각이 절로드는 아이였습니다.<br> 평소에
								화장품에 매우 관심이 많은지라 뷰티 체험단으로 다양한 브랜드도 접해 봤구요. 또 고가 제품, 저렴이 제품 할거 없이
								신상이라고 하면 꼭! 써봐야 직성이 풀리는 1인인데요.<br> 요아이 정말이지 체험단으로 접했지만 정말
								제돈주고 사도 아깝지 않겠다!라는 생각이 절로 들었답니다!
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>

					<!-- 13 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>김*윤</span> / <span>40대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_12">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/13/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								처음 받아 봤을때 첫 느낌은 엄청 럭셔리 하네요^^ 향은 좀 호불호가 있을듯 해요~ <br> 부스터 같은
								에센스라서 손등에 발라 보니까 스킨처럼 흐르네요~ <br> 전용 패드로 자극 없이 피부결 정돈해 주어서
								오래 쓰면 부드러운 피부결 만들어 줄듯 해요~ <br> 요즘 같은 환절기에 쓰면 촉촉하고 건조하지 않아서
								좋네요^^ 일주일 써 본 결과 지금까지 만족합니다^^
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 14 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>권*리</span> / <span>30대</span> /
									<span>건성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/14/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_13">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/14/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<!-- <div class="bx_pager191219">
                                <a class ="bx-pager-link" data-slide-index="0" href="#;"></a>
                            </div> -->
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								피부 각질 제거 전, 피부 컨디션이 좋지 않은 상태에서 사용했음에도 불구하고, 기타 기초 케어와 피부 화장이 얇게
								잘 되어서 피부 밸런스를 잘 잡아줄 수 있을 거라 생각됩니다! <br> 피부 각질 제거 후, 묵은 각질이
								없는 상태에서는 역시나 기초의 역할을 탄탄히 하는 것 같았어요. <br> 바쁜 생활에서 화장 단계를
								최소화하기 위해 ‘오에라-스킨-선크림-쿠션’으로 사용해 보았습니다. <br> 기초 케어가 부실했음에도
								불구하고 밀림이나 들뜨는 현상 없이 쿠션을 잡아주어서 매우 놀라웠습니다!<br> 제품의 묽기는 일반 스킨과
								같이 흐르는 제형이며, 향은 "은은하다" 정도로 생각됩니다.<br> 전용 패드는 100% 생분해 가능한
								친환경 패드라는 점에 높은 점수를 주고 싶습니다!<br> 제품 용기는 은색의 은은한 용기가 화장대의 어떤
								화장품과 있어도 어울릴 것 같습니다. <br> 마지막으로 캘리브레이터는 기대 이상으로 스킨케어 첫 단계의
								역할을 완벽하게 수행하고 있디고 생각되었습니다.<br> 피부의 톤, 결, 탄력을 이상적인 상태로 가꿔줄 수
								있을 것으로 예상되기 때문에 계속해서 사용할 용의가 있습니다. :)
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
					<!-- 15 -->
					<li class="evaluation_view">
						<div class="member_info_bottom">
							<ul>
								<li class="choice">• <span>이*민</span> / <span>30대</span> /
									<span>민감성</span>
								</li>
							</ul>
						</div> <!--리뷰이미지 영역 (이미지 없으면 영역 삭제)-->
						<div class="review_represent_img1912">
							<img
								src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_1.jpg"
								alt="리뷰 이미지">
							<div class="img_count191212">
								<span class="img_count191212_inner">+</span>
							</div>
						</div>
						<div class="review_img_wrap review_img_cont191216"
							id="testerReviewImg_14">
							<ul class="slides">
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_1.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
								<li>
									<div class="review_img_cont_inner191216">
										<div class="img_wrap">
											<img
												src="http://cdn.thehandsome.com/_ui/desktop/common/images/beauty/review/15/pc_2.jpg"
												alt="리뷰 이미지">
										</div>
									</div>
								</li>
							</ul>
							<div class="controls">
								<span class="prev"></span> <span class="next"></span>
							</div>
							<div class="bx_pager191219">
								<a class="bx-pager-link" data-slide-index="0" href="#;"></a> <a
									class="bx-pager-link" data-slide-index="1" href="#;"></a>
							</div>
						</div> <!--//리뷰이미지 영역 -->
						<div class="review_txt_wrap">
							<p class="review_txt">
								캘리브레이터가 처음 피부에 닿았을 때 코로 들어오는 향이 자극적이지 않고, 천연 아로마와 유사한 느낌이 들어
								향만으로도 힐링이 되었다. 무엇보다 피부에 즉각적으로 잘 스며들어 산뜻함과 촉촉함이 느껴졌다. <br>
								함께 동봉된 전용 친환경 패드는 한쪽 면은 부드럽고 다른 쪽은 거친 촉감이 다소 느껴져, 과연 부드럽게 닦아질 수
								있을까? 하는 의문이 들었다. <br> 캘리브레이터를 2~3번 펌핑 후 전용 패드의 부드러운 면으로
								피부결을 따라 닦아내 본 결과, 평소 쓰던 패드에 비해 피부에 훨씬 빠르게 흡수되며 수분감이 느껴졌다. 리퀴드
								제형이라 발림성과 흡수성이 뛰어나 에센스만으로 피부 속 영양분이 공급되는 느낌이 들었다. <br> 가을과
								겨울에는 오일과 함께 사용한다면 수분감의 지속과 더불어 피부 밸런스를 보다 더 균형있게 잡아주는 효과를 얻을 수
								있을 것 같다. <br> 체험 후, 피부결이 상당히 좋아진 것을 느낄 수 있었다. <br> 체험
								전에는 메이크업 단계에서 밀리는 경우가 종종 있었는데, 체험 기간 동안에는 메이크업에서 밀림 현상 없이 화장이 잘
								먹혀서 에센스 사용만으로도 이렇게 달라질 수 있음에 다소 놀랐다.
							</p>
						</div>
						<div class="review_more_1807">
							<a href="#;">리뷰 더보기</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="reviewPagingDiv">
				<span class="num"> <a href="javascript:void(0);"
					class="pageBtn on" pagenum="1">1</a> <a href="javascript:void(0);"
					class="pageBtn" pagenum="2">2</a> <a href="javascript:void(0);"
					class="pageBtn" pagenum="3">3</a> <a href="javascript:void(0);"
					class="pageBtn" pagenum="4">4</a>
				</span>
			</div>
			<!-- //paging -->
		</div>
		<!--// pop_cnt-->
		<a href="javascript:void(0);" class="btn_close"><img
			src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png"
			alt="닫기"></a>
	</div>
	<!-- //상품평 리스트-->
	<!-- // 211101 체험단 리뷰 추가 E -->
	</div>
	<div id="criteo-tags-div" style="display: none;"></div>
	<div class="layerArea" id="productLayer" style="display: none;">
		<div class="layerBg"></div>
	</div>

	<form id="productOneCLickDeliveryForm"
		action="/ko/mypage/myDeliveryList">
		<input type="hidden" name="code" id="code" value="">
	</form>

	<input type="hidden" id="chkToastFirstYn" name="chkToastFirstYn"
		value="N">
	<!--beshow conversion starts-->
	<script type="text/javascript">
function _p(name,url){if(!url) url=location.href;name=name.replace(/[[]/,"[").replace(/[]]/,"]");   var regexS="[?&]"+name+"=([^&#]*)";   var regex=new RegExp(regexS);  var results=regex.exec(url); return results==null?null:results[1];}
</script>
	<script type="text/javascript">
if(_p('_strack')){$.getScript("http://beshow.kr/plugins/strack/strack.min.js").done(function(script,textStatus){strack.execute('setDomain',location.host);strack.trackView();}).fail(function(jqxhr,settings,exception){console.log("StrackNotInclude.");});}
</script>
	<!--beshow conversion ends-->
	<iframe style="display: none" id="fileFrame" title="fileFrame" scr=""></iframe>
	<script type="text/javascript">
    if ( 'Y' == 'N' ) {
        window.onload=function(){
            NetFunnel_Complete();
        };
    }
    </script>
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>