<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerMain.jsp"%>
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<script type="text/javascript">

</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/handsome/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="/_ui/handsomemobile/js/swiper.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/resources/css/popup.css"
		media="all">


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
	
	<script language="javascript">

_pd =_RP('캐시미어 더블 재킷');  
_ct =_RP('BR02'); 
_amt = _RP('1250000',1); 

_A_amt=Array('1250000'); 
_A_nl=Array('1'); 
_A_pl=Array('${productCode}'); 
_A_pn=Array('캐시미어 더블 재킷'); 
_A_ct=Array('BR02'); </script>



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
            content_ids: '${product.pcode}'}]);
    }
    // end of Facebook Pixel Code
    
    
    reScroll();
    bodyReSize();
    resizeEtcImage();
    
    
    
    
    
    
    var testerChkCode = "${productCode}";
    if(testerChkCode.indexOf("_") > -1) {
        testerChkCode = testerChkCode.split("_")[0];
    }
    
    
    
    
    //리뷰작성
    $("#customerReviewWrite").on("click", function(){
        
        //초기화
        reviewReset();
       
        //로그인이 되어 있는지 확인한다.
       <% if(session.getAttribute("member")==null){%>
          goLogin("review");
        <%}%>
          //미림 주석  return;
        
        
        if ( 'Y' == 'Y' ) {
            $.ajax({
                url     : '/review/reviewWriteBeforeVerify',
                type    : 'GET',
                datatype: 'json',
                data : { "productCode" : $('#productCode').val()// /review/reviewWriteBeforeVerify해당 url 이 호출될때 json타입으로 컨트롤러 보내줌 
                },
                success : function(data) {
                	
                	if(data.rsltMsg != undefined){   
                            var la = new layerAlert("[알림] " + data.rsltMsg);
                            return;
                	}
                	else{
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
                	}
                },
                error   : function(error) {
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
            
                imgSrc = "http://newmedia.thehandsome.com/MN/2C/FW/${productCode}_S01.jpg";
                
            
            $("#reviewProducImg").attr('src',imgSrc);
            $("#reviewProducPrice").text($(".price").find("span:eq(0)").text());
            $("#reviewProductBrandName").text($("#brandName").val());
            $("#reviewProductProductName").text($("#productName").val());
            
            $('#closeWriteChk').val('Y');
        }
        
    });
    
    $('.select_options_wrap .color_chip li a').click(function(){
    $('.select_options_wrap .cl_name').html($(this).attr('data-color'));
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
        
        <%if(session.getAttribute("member")==null){%>
            goLogin("review"); //추후 로그인처리 미림주석
            return;
        <%}%>
        
        
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


//2018.01.16 로그인 팝업
//신미림 로그인 URL 경로 수정
function goLoginPopup(pageType){    
    
    var url = '/member/login';    
    var param = "?returnType="+pageType+"&loginType=loginPop&productCode="+ $("#productCode").val();
    
    centerPopup(url+param, 'LoginPopup', '520', '709' );
}
//신미림 로그인 URL 경로 수정
function goLogin(pageType){
	var url = '/member/login';
    window.location.href=url;
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
        return false;
    } else {
    	
        if(intervalLoopCnt < imageDivSize) {
            intervalLoopCnt = intervalLoopCnt + 1;
            intervalId = setTimeout(bodyReSize, 100);
            return false;
        } else {
            clearTimeout(intervalId);
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
        if(!fn_chkReserveSaleStockpile(qty+1)) {
            var la = new layerAlert("예약 상품 주문 가능 수량을 초과하였습니다.<br/>예약 구매 가능한 수량은 "+qty+"개 입니다.");
            return;
        }
    } else {
        if (qty >= stockCnt) {
            if("ko" == "ko"){
                var la = new layerAlert("구매 가능한 재고 "+stockCnt+"개만 선택하실 수 있습니다.");
        	}else{
        	    var la = new layerAlert("재고가 부족합니다.");
        	}
            return;
        }

        if("ko" == "ko"){
            chkPopularProudct(qty+1);
        }
    }
    
    //GA 이벤트 태깅
    GA_Event('상품_상세','수량','+');
    
    $("#txtqty").val(qty+1);
    fn_sumPriceCal();
    
    
}

function promotionProduct(){
    var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.');
}
    



var addToCartProcess = true;
/* 미림 장바구니 담기 */
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
        
      	//#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 
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
        //미림 사용 장바구니 체크
        if(buyNowYn == false){ //프로모션 상품 체크를 위한 선처리 로직 
            $.ajax({
                url: '/mycart/checkCartProduct',
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

// 미림 장바구니 담기 기존로직
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
                        var url = '/member/login';
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
//미림  장바구니 추가 함수
function addtoCartFunction(qty,check4pmOver){
    $.ajax({
         url: '/mycart/add',
         cache : false,
         async : false,
         type: "GET",            
         data: $('form[name=addToCartForm]').serialize(),//해당form안에 들어있는 name으로 된 데이터를 모두 넘겨준다. 컨트롤러에서는 필요한것만 받음 
         success: function(msg){
             console.log("REAL");
        	 console.log($('form[name=addToCartForm]').serialize());
        	 var errorMsg = msg;
             if(errorMsg == null || errorMsg == ''){
            	 
             
                // start of Facebook Pixel Code
                  /*   if('ko' != 'zh'){
                        window._fbq.push (['track', 'AddToCart',{'value':$("#productPrice").val(),'currency':'KRW', content_type: 'product',
                            content_ids: 'MN2C8WJC026WP'}]);
                    } */
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
                            
                            var cartUrl = "/member/mycart";
                            
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

//미림 장바구니 담기 완료 및 바로 주문화면으로 전송
function buynow(check4pmOver)
{
    //바로주문
	if($('form[name=addToCartForm] input[name=buyNowYn]').val() == "true") {
        $("#addToCartButton, #addToCartBuyNowButton").off("click").on("click",  function(e) {
            new layerAlert("처리중입니다.");
            return false;
        });
        
        $("#addToCartButton").prop("href", "");
        $("#addToCartBuyNowButton").prop("onclick", "");
        
        //파라미터 넘겨주는 것들 화면 여기저기에서 넘겨줌
        var pamountVal = $("#txtqty").val();
        var pcodeVal = $("form[id=reviewForm] input[name=pcode]").val();
        var pcolorVal = $("form[id=reviewForm] input[name=currentpcolor]").val();
        var psizeVal = "";
        $(".size_chip li > a").each(function(){
            if($(this).hasClass("on")){
                psizeVal = $(this).text();
                
            }
         });
        //로그인이 되어 있는지 확인한다.
       <% if(session.getAttribute("member")==null){%>
          goLogin("directorder");
        <%}%>
          //미림 주석  return;
        
        if("false" == "true"  &&  "ko" == "ko"){
        	NetFunnel_Action({action_id:"buy_now"},function(ev,ret){
        			//미림 바로주문 화면 넘겨주는 코드와 파라미터 지정		
                     location.replace("/product/insertToCartForDirectOrder?pcolor="+pcolorVal+"&psize="+psizeVal+"&pamount="+pamountVal+"&pcode="+pcodeVal);
                    
        
            });
        }else{
        	
        	location.replace("/product/insertToCartForDirectOrder?pcolor="+pcolorVal+"&psize="+psizeVal+"&pamount="+pamountVal+"&pcode="+pcodeVal);
            
        }
        
    } else {//장바구니
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
            
            var cartUrl = "/member/mycart";
            
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
/* <!--미림 좋아요 기능 --> */
function addWishList(){
    
    var productCode = $("#productCode").val();
    var wishOn = "N"; 
    if($('.wishlist1803').hasClass('on')){
    	wishOn = "Y";
    }
    
    $.ajax({
         url: '/wishlist/add-product-action',
         type: "GET",            
         data: {productCode: productCode
                ,type:'toggle'
                ,wishOn: wishOn},
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
    if(loginYn != "Y"){
		var lc = new layerConfirm("로그인 하시겠습니까?", "확인", "취소");
        
        lc.confirmAction = function(){
            $(".btn_close").trigger("click");
            goLogin("wishList");    
        };
        return;
    }
        
    
    
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

//미림 상품평쓰기 사이즈 저장
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
    var selectProductSize = $('form[name=addToCartForm] input[name=selectProductSize]').val();
    
	// 중복 옵션 조회
	$.ajax({
		url: '/review/duplicateCheckReview' + '?CSRFToken=77badcd5-86c7-4e47-8c1f-0663967bf7b6',
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
    $('form[name=addToCartForm] input[name=selectProductSize]').val(productCode);
    $(".reserveSaleSize").hide();

    $.ajax({
         url: '/product/productDetailAjax',
         //url: '/ko/p/productDetailAjax.json',
         type: "GET",
         //dataType:"json",
         async:false,
         //data: {code: productCode, CSRFToken:$('[name=CSRFToken]').val()},
         data: {code: productCode},
         success: function(data){
            // START OF 4PM,ATHOME,QUICK SIDE VALUE SAVE
            //미림 여기
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
            //미림 테스트 
            //$("#clearfix").html(data);
            
            $(".product-detail-img").remove();
            
            //미림 테스트
            //$("#clearfix").replaceWith( $( "#clearfix" ));
            //$("#clearfix").replaceWith(data));
            
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
	            reviewHtml += "        <li class='name'>"+list[i].mid+"</li>";
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
	            /* if(list[i].originUid == 'anonymous'){ */
	            	   //로그인이 되어 있는지 확인한다.
		       <% if(session.getAttribute("member")==null){%>
		          goLogin("review");
		          return;
	            <%}%>
	            
	            if(list[i].mid == '<%=session.getAttribute("currentId")%>'){
	               
	                if ( 'Y' == '미림리뷰수정삭제' ) {
	                    if ( list[i].bestYN != true ) {
	                        if ( (list[i].realAccumulationReviewPoint == null || list[i].realAccumulationReviewPoint <= 0)
                                            && (list[i].realAccumulationPhotoPoint == null || list[i].realAccumulationPhotoPoint <= 0) ) {
	                            reviewHtml += '        <li class="float_right delete"><a href="#;" onclick="javascript:deleteReview('+list[i].id+','+i+')">삭제</a></li>';
	                        }
	                        reviewHtml += '        <li class="float_right modify"><a href="#;" onclick="javascript:modifyReview('+"'"+list[i].id+"'"+",'"+list[i].purchaseColor+"'"+",'"+list[i].purchaseColorName+"'"+",'"+list[i].purchaseSize+"'"+",'"+list[i].orderNumber+"'"+",'"+list[i].purchaseProdYN+"'"+')">수정</a></li>';            
	                    }
	                    
	                } else {
	                  
	                	reviewHtml += '        <li class="float_right delete"><a href="#;" onclick="javascript:deleteReview('+list[i].mid+','+i+')">삭제</a></li>';
	                    reviewHtml += '        <li class="float_right modify"><a href="#;" onclick="javascript:modifyReview('+"'"+list[i].mid+"'"+",'"+list[i].pcodecolor+"'"+",'"+list[i].pcodecolor+"'"+",'"+list[i].psize+"'"+",'"+list[i].orderNumber+"'"+",'"+list[i].purchaseProdYN+"'"+')">수정</a></li>';
	                }
	            }
	            reviewHtml += "    </ul>";
	            reviewHtml += "    </ul>";
	            
	            reviewHtml += "    </ul>";
	            reviewHtml += "</div>";
	           
	            if(list[i].photograph != null){
	            reviewHtml += "<div class='review_represent_img1912'>";
	            reviewHtml += "    <img src='../../../resources/upload/"+list[i].photograph+"' alt='리뷰 이미지'>";
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
	            reviewHtml += "                    <img src='../../../resources/upload/"+list[i].photograph+"' alt='리뷰 이미지'>";
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
            
                imgSrc = "http://newmedia.thehandsome.com/MN/2C/FW/${productCode}_S01.jpg";
                
            
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
    alert("zzzzzzzzzz");
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
             alert(error);
        	 var la = new layerAlert(error);
                la.confirmAction = function(){
                    return;
                };
         }
    });
    
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
             success: function(data){alert(data);
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
        location.href='/member/login';
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
    $("#popupProductPrice").text('₩'+${product.pprice});
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
                    location.href='/member/login';
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
        location.href='/member/login';
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
                    location.href='/member/login';
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
    var baseCode = "${productCode}";
    if("${productCode}".indexOf("_") > -1) {
        baseCode = "${productCode}".split("_")[0];
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
                        "id": "${productCode}".indexOf("_") > -1 ? "${productCode}".split("_")[0] : "${productCode}", //상품코드
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
                img: "http://newmedia.thehandsome.com/MN/2C/FW/${productCode}_S01.jpg",
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
        url: '/review/review',
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
    

		stockOnlineStockpile["${productCode}_76"] = "4";
		warehouseStockpile["${productCode}_76"] = "0";
	
		stockOnlineStockpile["${productCode}_82"] = "3";
		warehouseStockpile["${productCode}_82"] = "0";
	
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
	var sImg = "http://newmedia.thehandsome.com/MN/2C/FW/${productCode}_C01.jpg";
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




function addWishListProdClick(productBaseCode) {    
    
        var lc = new layerConfirm("로그인이 필요합니다", "확인", "취소");
        lc.cancleAction = function(){//취소 호출 펑션
            $("."+productBaseCode+"Like").each(function(index, ele){
       			$(ele).removeClass("on");
       		})
        };

        lc.confirmAction = function(){//확인 호출 펑션
            location.href = "/member/login";
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
				if(productBaseCode === '${productCode}'){
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
								<span>₩<fmt:formatNumber value="${product.pprice}" pattern='#,###'/></span> <input type="hidden"
									id="productPrice" value="${product.pprice}"/>
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
								<span id="sumPrice">₩<fmt:formatNumber value="${product.pprice}" pattern="#,###" /></span>
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
								class="btn wishlist1803 float_left ml0  ${wishYn}"
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
								action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/${productCode}?categoryCode=we051"
								method="post">
								<input type="hidden" maxlength="3" size="0" name="qty"
									class="qty"> <input type="hidden"
									name="productCodePost" value="${currentcolorcode}"> 
									<input type="hidden"
									name="selectProductSize" value="${sizes.get(0).psize}">
									<input
									type="hidden" id="productCodeType" name="productCodeType"
									value="ApparelSizeVariantProduct"> <input
									type="hidden" id="stockCnt" value="${pamount}"> <input
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
									
									<input type="hidden" name="buyNowYn" id="productCode" value="${productCode}">
									<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
									<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
									<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
									<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
									
									
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
								<a href="#;" onclick="GA_Event('상품_상세','정보','상품평');">
								상품평(<span id="customerReviewCnt">${reviewCnt}</span>)
									<div class="star_score1807" id="prodTotalStarScoreWrapper">
										<span class="cmt_star"> <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
											<span class="cmt_per" id="prodTotalStarScore"
											style="width: ${reviewRating * 20}%;">별점</span>
										</span>
									</div>
								</a>
							</div>
							<!--//상품평 btn-->

						</dl>
					</div>

					<div class="clearfix mt30">
						<div class="float_right">
							<script type="text/javascript">
var a2a_config = a2a_config || {};
a2a_config.num_services = 10;
var brandName =	"[" + $('#brandName').val() + "]";
var productName = $('.name').contents().first().text();
a2a_config.linkname = brandName + " " + productName;
a2a_config.linkurl = 'http://www.thehandsome.com/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/${productCode}?lang=ko';
a2a_config.track_links = 'googl';
</script>
							<script type="text/javascript"
								src="//static.addtoany.com/menu/page.js"></script>
							<!-- AddToAny END -->

						</div>
					</div>

					<input type="hidden" id="viewExhibitionPageCode" value="">
					<input type="hidden" id="viewExhibitionPageName" value="">



					<!-- 박소은 상품 상세정보 아래 공간 -->
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




			</div>

		</div>


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
	            <ul>
	            </ul>
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
				action="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EC%BA%90%EC%8B%9C%EB%AF%B8%EC%96%B4-%EB%8D%94%EB%B8%94-%EC%9E%AC%ED%82%B7/p/${productCode}?categoryCode=we051"
				method="post" enctype="multipart/form-data">
				<input type="hidden" name="productCode"> <input
					type="hidden" name="pcode" value="${product.pcode}"> <input
					type="hidden" name="pno" value="${product.pno}">
					<input
					type="hidden" name="currentpcolor" value="${currentpcolor}"> <input
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
										<!--<div class="item_box" id="reviewProductDiv">  -->
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
																	<li id="${productCode}"><input type="hidden"
																		class="colorNameVal" value="CAMEL"> <a
																		href="#;" class="beige" data-color="CAMEL"
																		style="background: #a36944 url('http://newmedia.thehandsome.com/MN/2C/FW/${productCode}_C01.jpg/dims/resize/24x24');"
																		onclick="javascript:fn_clickColorCode('${productCode}', 'CAMEL');"
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
																<c:forEach var="size" items="${sizes}">
																		<li id="${size.psize}"><a
																	href="javascript:fn_clickSizeCode('${size.psize}')"
																	onclick="GA_Event('상품_상세','사이즈','${size.psize}')">${size.psize}</a>
																		</li>
																</c:forEach>
																	<!--미림 주석처리 
																	<productdetails:popupsizequickreference>
																		</productdetails:popupsizequickreference> -->
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


	
	
	<div id="criteo-tags-div" style="display: none;"></div>
	<div class="layerArea" id="productLayer" style="display: none;">
		<div class="layerBg"></div>
	</div>


	<input type="hidden" id="chkToastFirstYn" name="chkToastFirstYn"
		value="N">
	<!--beshow conversion starts-->
	
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>