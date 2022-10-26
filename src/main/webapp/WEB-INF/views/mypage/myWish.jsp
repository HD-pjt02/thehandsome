<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="bodyWrap">
        <h3 class="cnts_title">
            <span id="menuTitle">위시리스트</span>
        </h3>
        <div class="sub_container">
            <!-- lnb -->
            <div class="lnb_wrap">
                <h4><a href="/ko/mypage">마이페이지<!-- 마이페이지 --></a></h4>
                <div class="lnb">
                            <dl>
                                <dt>주문조회</dt>
                                <dd><a href="/ko/mypage/order/myorders" onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a></dd>
                                </dl>
                            <dl>
                            <dl>
                                <dt>나의 상품관리</dt>
                                <dd><a href="/ko/mypage/myWish" onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트<!-- 위시리스트 --></a></dd>
                                </dl>
                            <dl>
                                <dt>나의 활동관리</dt>
                                <!-- <dd><a href="#">회원등급</a></dd> -->
                                <dd><a href="/ko/mypage/mymantomaninquiry" onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a></dd>
                                <!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
                            </dl>
                            </div>
                        <!-- ph_guide -->
                        <div class="ph_guide">
                            <p class="tlt">고객센터 운영 안내</p>
                            <p class="phone">1800-5700<span style="color:#c69c6d;" class="txt">(유료)</span></p>
                            <p class="txt">평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span></p>
                            <a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com</a>
                        </div>
                        <!-- //ph_guide -->
                    </div>
            <!-- //lnb -->
            <!-- cnts -->
            <div class="sub_cnts">
                
                
                <script type="text/javascript">
    //<![CDATA[ 
    var chooseDelFlag = false;
    var cartQuantity = {};
    var qtyLimitProductYnMap = {};
    $(document).ready(function(){
        //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
        
            cartQuantity["MU2C9TTO104M5E_BR_L"] = 1;
        
            cartQuantity["CM2CAABG373N_LS_FR"] = 1;
        
            cartQuantity["MU2C9TPC029M5E_BR_M"] = 1;
        
        
        $('.tblwrap').on('click','input:checkbox', function(){
            if($(this).attr('name') == 'allcheck'){ // 전체선택시
                var isChecked = $(this).is(":checked");
                if (isChecked) {
                    GA_Event('위시리스트','선택','전체선택');
                } else {
                    GA_Event('위시리스트','선택','전체해제');
                }
            } else if ($(this).attr('name') == 'checkpd') { // 개별 선택시
                var isChecked = $(this).is(":checked");
                var label = $(this).parent().next().find('.sb_tlt').text();
                var selYN = "";
                if (isChecked) {
                    selYN = "선택_";
                } else {
                    selYN = "해제_";
                }
                GA_Event('위시리스트','선택',selYN+label);
            }
        });
        
        $('.paging').on('click','a', function(){
            var label ;
            if($(this).attr('pagenum')){
                label = $(this).attr('pagenum');
            } else {
                label = $(this).attr('class').toUpperCase();
            }
            GA_Event('위시리스트','페이지',label);
        });
    
        /* 글로벌 원화 단위 변경_20200325
           use exchangePrice(price)
        */
         // 국문일 때
                function exchangePrice(productPrice) {
                    return "￦" + addComma(productPrice);
                }
            
        
        function getUrlParameter() { // hash 가져오기
            var hash = document.location.hash.split("#")[1];
            if(typeof hash === "undefined" ) hash = 1;
            return hash;
        };
    
        function updateURL(pageNum) { // hash 변경
            var hashYn = "#";
            if(document.location.hash.indexOf("#") > -1) hashYn = "";
            document.location.hash = hashYn+pageNum;
        }
    
        $("#menuTitle").text("위시리스트");
        
        var normalPoint = "";
        var outletPoint = "";
        var reservePoint = 3;
        var isEasyMember = $('#isEasyMember').val();
        
        if(normalPoint != null){
            normalPoint = Math.floor($('#normalPoint').val());
        }
        
        if(outletPoint != null){
            outletPoint = Math.floor($('#outletPoint').val());
        }
        
        var wishList = new BoardListController('wishListForm', '#listBody', '.paging', 20);
        
        wishList.PARAMS.pageNum = getUrlParameter(); // 페이지 초기 로딩 시 hash 값을 page number로 세팅
        
        wishList.setRowHtml = function(results){
            
            updateURL(wishList.PARAMS.pageNum); // page number를 hash로 세팅
            var hash = getUrlParameter(); 
            wishList.PARAMS.pageNum = hash; // hash 값을 page number로 세팅
            
            
            var rows = "";
            
            if(results.length == 0){
                var listTag =    "<tr>";   
                listTag +=         '<td colspan="5" class="no_data">';
                listTag +=            "위시리스트에 저장된 상품이 없습니다.";
                listTag +=         "</td>";
                listTag +=      "</tr>";
                
                rows +=listTag;
            } else {
                window.sessionStorage.setItem('ecommerceDataList', JSON.stringify(results));
                $.each(results, function(index){
                    
                    
                    //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
                    qtyLimitProductYnMap[this.productCode] = this.qtyLimitProductYn;
                    
                    
                    var listTag = '<tr>';
                    listTag +=   '   <td class="frt"><input type="checkbox" title="선택" value="' + this.wishCode + '" name="checkpd" data-value="'+this.productCode+'"/></td>';
                    listTag +=   '   <td class="pt_list_wrap">';
                    listTag +=   '      <div class="pt_list_all">';
                    listTag +=  '           <a href="/ko/p/' + this.productCode + '" onclick=\"javascript:setEcommerceData(\'' + index + '\',\'Click\');GA_Event(\'위시리스트\', \'상품\', \''+this.productName.replace(/(<([^>]+)>)/ig, '')+'\');" ><img src="'+ this.productImage +'" alt="상품 이미지" /></a>';
                    listTag +=  '           <div class="tlt_wrap">';
                    listTag +=  '               <a href="/ko/p/' + this.productCode + '" class="basket_tlt" onclick=\"javascript:setEcommerceData(\'' + index + '\',\'Click\');GA_Event(\'위시리스트\', \'상품\', \''+this.productName.replace(/(<([^>]+)>)/ig, '')+'\');">';
                    
                    if(this.brandName != null){
                        listTag +=   '               <span class="tlt">' + this.brandName + '</span>';
                    } else {
                        listTag +=   '               <span class="tlt"></span>';
                    }
                    
                    if(this.productName != null){
                        listTag +=   '               <span class="sb_tlt">';
    //                if(this.reserveProdYn == true) listTag += '<span class="reserveProdNmParent"><strong>[예약판매]</strong> </span>';
                        listTag +=                     this.productName;
                        listTag += '                   </span>';
                    } else {
                        listTag +=   '               <span class="sb_tlt"></span>';
                    }
                    listTag +=   '            </a>';
                    listTag +=   '         </div>';
                    listTag +=   '      </div>';
                    listTag +=   '   </td>';
                    listTag +=   '   <td class="al_middle">';
                    listTag +=   '      <div class="price_wrap">';
                    
                    if(this.carryingForward=='NORMAL'){
                        if(this.productNormalPrice==this.productPrice){
                            listTag +=   '         <span> ' + exchangePrice(this.productPrice) + ' </span>';
                        } else {
                            listTag +=   '         <del> ' + exchangePrice(this.productNormalPrice) + '</del>';
                            listTag +=   '         <span>  ' + exchangePrice(this.productPrice) + ' </span>';
                        }
                    } else {
                        var v_productCode = this.productCode;
                        var v_styleProductCode = this.styleProductCode;
                        var checkNewBrand = true;
                        <!-- (오브제 (5W), 클럽모나코 (MM, MF) 일때, 신품번만 세일가격 노출여부 판별 (3번째 자리가 숫자) --> 
                        if(v_productCode.indexOf('5W') == 0 || v_productCode.indexOf('MM') == 0 || v_productCode.indexOf('MF') == 0 ){
                            if(v_productCode.indexOf('0') == 2 || v_productCode.indexOf('1') == 2 || v_productCode.indexOf('2') == 2 || v_productCode.indexOf('3') == 2 ||
                               v_productCode.indexOf('4') == 2 || v_productCode.indexOf('5') == 2 || v_productCode.indexOf('6') == 2 || v_productCode.indexOf('7') == 2 ||
                               v_productCode.indexOf('8') == 2 || v_productCode.indexOf('9') == 2 ){
                                checkNewBrand = true;
                            } else {
                                checkNewBrand = false;
                            }
                        } else {
                            checkNewBrand = true;
                        }
                        
                        var checkViewDel = false;
                        
                        if(checkNewBrand && v_styleProductCode.toLowerCase().indexOf('a_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a0_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a1_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a2_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a3_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a4_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a5_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a6_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a7_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a8_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('a9_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b0_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b1_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b2_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b3_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b4_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b5_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b6_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b7_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b8_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('b9_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c0_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c1_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c2_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c3_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c4_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c5_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c6_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c7_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c8_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('c9_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d0_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d1_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d2_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d3_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d4_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d5_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d6_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d7_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d8_') == -1
                                && v_styleProductCode.toLowerCase().indexOf('d9_') == -1){
                            if(this.productNormalPrice != undefined && this.productNormalPrice > this.productPrice){
                                listTag +=   '         <del> ' + exchangePrice(this.productNormalPrice) + '</del>';
                            }
                            
                            checkViewDel = true;
                        }
                        
                        if(!checkNewBrand && v_styleProductCode.toLowerCase().indexOf('5WM') == 0){
                            if(this.productNormalPrice != undefined && this.productNormalPrice > this.productPrice){
                                listTag +=   '         <del> ' + exchangePrice(this.productNormalPrice) + '</del>';
                            }
                        }
                        
                        if(v_styleProductCode.toLowerCase().indexOf('CM') == 0 && v_styleProductCode.toLowerCase().indexOf('C_') > 0){
                            if(this.productNormalPrice != undefined && this.productNormalPrice > this.productPrice){
                                listTag +=   '         <del> ' + exchangePrice(this.productNormalPrice) + '</del>';
                            }
                        }
                        
                        
                        // 수입브랜드는 재작업 없음 무조건 삭선 노출 (톰그레이하운드, MUE, 폼스튜디오, 폼맨즈라운지, 폼더스토어, 클럽모나코, 캐시미어띵즈FL)
                        if(!checkViewDel){
                            if(this.brandCode == 'BR15' || this.brandCode == 'BR16' || this.brandCode == 'BR30' 
                                || this.brandCode == 'BR32' || this.brandCode == 'BR35' || this.brandCode == 'BR44' || v_styleProductCode.toLowerCase().indexOf('FL') == 0){
                                
                                if(this.productNormalPrice != undefined && this.productNormalPrice > this.productPrice){
                                    listTag +=   '         <del> ' + exchangePrice(this.productNormalPrice) + '</del>';
                                }
                            }
                        }
                        
                        listTag +=   '         <span>  ' + exchangePrice(this.productPrice) + ' </span>';
                        
                    }
                    
                    listTag +=   '      </div>';
                    listTag +=   '   </td>';
                    
                    if(true){
                        listTag +=   '   <td class="al_middle">';
                        if(isEasyMember != "true" && isEasyMember != true){ //간편회원 아닐경우
    
                            if(this.carryingForward=='NORMAL'){
                                if(this.reserveProdYn == true && "Y" == "Y"){
                                    listTag +=  '   <span class="earn">' + this.productData.accumulationRate + ' %</span>';
                                }else{
                                    listTag +=  '   <span class="earn">' + this.productData.accumulationRate + ' %</span>';                     
                                }
                            } else {
                                if(this.reserveProdYn == true && "Y" == "Y"){
                                    listTag +=  '   <span class="earn">' + this.productData.accumulationRate + ' %</span>';
                                }else{
                                    listTag +=  '   <span class="earn">' + this.productData.accumulationRate + ' %</span>';                     
                                }
                            }
                        }else {
                         //   listTag +=  '   <span class="earn">0 %</span>';
                        }
                        
                        
                        listTag +=   '   </td>';
                    }
                    
                    listTag +=   '   <td class="al_middle">';
                    listTag +=   '      <div class="btn_wrap">';
                    listTag +=   '         <a href="javascript:void(0)" class="btn wt_ss add_bag parent_add_bag" product="' + this.productPk + '" index="' + index + '"productcode="' + this.productCode + '" ';
                    listTag +=  '               onclick=\'GA_Event(\"위시리스트\", \"쇼핑백담기\", \"'+this.productName.replace(/(<([^>]+)>)/ig, '')+'\");\' >쇼핑백담기<!-- 쇼핑백담기 --></a>';
                    listTag +=   '         <a href="javascript:void(0)" class="btn wt_ss wishDel" wishcode="' + this.wishCode + '" ';
                    listTag +=  '               onclick=\'GA_Event(\"위시리스트\", \"삭제\", \"'+this.productName.replace(/(<([^>]+)>)/ig, '')+'\");\' data-value="'+ this.productCode +'" >삭제<!-- 삭제 --></a>';
                    listTag +=   '      </div>';
                    listTag +=   '   </td>';
                    listTag +=   '</tr>';
                    
                    listTag +=   '<tr class="hid">';         
                    listTag +=   '   <td colspan="5" class="basket_wrap">';   
                    listTag +=   '      <div class="basket_info" id="cart' + index + '">';   
                    listTag +=   '      <span class="btn_arr">위치아이콘</span>';   
                    listTag +=   '         <div class="info">';   
                    listTag +=   '            <div class="pt_list" id="pt_list_' + index + '">';   
    //             listTag +=   '               <a href="javascript:void(0);"><img src="'+ this.productImage +'" alt="상품 이미지" /></a>';   
    //             listTag +=   '               <div class="tlt_wrap">';   
    //             listTag +=   '                  <a href="javascript:void(0);" class="basket_tlt">';   
    //             listTag +=   '                     <span class="tlt">' + this.brandName + '</span>';   
    //             listTag +=   '                     <span class="sb_tlt"> ' + this.productName + ' </span>';   
    //             listTag +=   '                  </a>';   
    //             listTag +=   '                  <dl class="cs_wrap">';
    //             listTag +=   '                  </dl>';   
    //             listTag +=   '               </div>';   
                    listTag +=   '            </div>';
                    listTag +=   '            <div class="btns">';
                    listTag +=   '               <a href="javascript:void(0)" class="btn wt_ss bag" id=addToCart_' + index + '>쇼핑백담기<!-- 쇼핑백담기 --></a>';
                    listTag +=   '               <a href="javascript:void(0)" class="btn wt_ss mt10 bag" id=cancle_' + index + '>취소<!-- 취소 --></a>';
                    listTag +=   '               <a href="javascript:void(0)" class="btn_close bag" id=close_' + index + '>닫기<!-- 닫기 --></a>';
                    listTag +=   '            </div>';
                    listTag +=   '         </div>';
                    listTag +=   '      </div>';
                    listTag +=   '   </td>';
                    listTag +=   '</tr>';
                    
                    rows +=listTag;
                });
            }
            return rows;
            
        };
        
        
        
        wishList.afterSetAction = function(){
            
            $('.add_bag').on('click', function(){
                var idx = $(this).attr('index');
                var status =  $('.basket_info').css("display");
                var reserveProdNm = $(this).parents("tr").find(".reserveProdNmParent").html();
                
                $('#cart'+idx).show();
    
                var paramDatas = 'productCode='+ $(this).attr('productCode') + '&index=' + $(this).attr('index');
    
                $.ajax({
                    type: "get",
                    url :  "/ko/mypage/wishlistaddcart",   
                    data : paramDatas,         
                    dataType : "json",
                    error : function( request, status, error ){
                        
                        alert("error:" + error );
                    }, 
                    success : function( result ){
                        
                        $('#pt_list_'+idx).html(result.shoppingbagOptions);
                        addreservenm(reserveProdNm,idx);
                        var defaultSize;
                        var findClass;
                        var length = $('#pt_list_'+idx).find(".cl_select").find("a").length;
                        for(var i=0; i<= length ; i++){
                            var defaultProduct = $('#addToCartForm' + idx).find('input[name=productCodePost]').val();
                            defaultSize = $('#pt_list_'+idx).find('.sz_select').find('a:eq('+i+')').html();
                            findClass = $('#pt_list_'+idx).find('.sz_select').find('a:eq('+i+')').attr('class');
                            
                            if(defaultSize != undefined && findClass != "not_stock"){
                                $('#addToCartForm' + idx).find('input[name=productCodePost]').val(defaultProduct + "_"+ defaultSize); 
                                $('#addToCartForm' + idx).find('input[name=productCodeType]').val("ApparelSizeVariantProduct"); 
                                $('#pt_list_'+idx).find('.sz_select').find('a:eq('+i+')').attr('class','on');
                                wishlistProductStock($('#addToCartForm' + idx).find('input[name=productCodePost]').val(), idx);
                                return;
                            }
                        }                            
                    }
                });
                
            });
            
            
            
            $('.chooseDel').on('click', function(){
                chooseDelFlag = true;
                var checkVal = $('input:checkbox[name="checkpd"]:checked').val();
                
                if(checkVal==undefined){
                    layerAlert("선택된 상품이 없습니다. <br /> 삭제할 상품을 선택해 주세요.");
                } else {
                    var array = [];
                    $("input:checkbox[name='checkpd']").each(function(){
                        if(this.checked){
                            array.push(this.value);
                        }
                     
                    });
                    
                    var lc = new layerConfirm("해당 상품을 위시리스트에서 삭제하시겠습니까?", '확인', '취소'); // 확인, 취소
                    
                    lc.confirmAction = function(){
                        myWishDelete(array, "");
                    };
                }
    
                GA_Event('위시리스트','선택','선택삭제');
             });
            
            $('.wishDel').on('click', function(){
                var wishcode = $(this).attr('wishcode');
                var prodCd = $(this).attr('data-value');
                var lc = new layerConfirm("해당 상품을 위시리스트에서 삭제하시겠습니까?", '확인', '취소');
                
                lc.confirmAction = function(){
                    myWishDelete(wishcode, prodCd);
                };
             });
            
            $('.bag').on('click', function(){
                 var prodid = $(this).attr('id').split("_");
                
                if(prodid[0] == 'close'){
                    $('#cart'+prodid[1]).hide();
                }
                
                if(prodid[0] == 'cancle'){
                    $('#cart'+prodid[1]).hide();
                }
                
                if(prodid[0] == 'addToCart'){
                    addToCart(prodid[1]);
                }
                
            });
            
        };
        
        wishList.doWork();
        
         var myWishDelete = function(wishcode, prodCd){
            
            $.ajax({
                type: "get",
                url :  "/ko/mypage/deleteWish?wishcode="+wishcode,
                dataType : "json",
                error : function( request, status, error ){
                    
                    alert("error:" + error );
                }, 
                success : function( result ){
                    
                    var itemCnt = ($("#listBody").children().length) / 2;//현재 화면의 상품 갯수
                    var pageNum = getUrlParameter(); 
                    if(chooseDelFlag) { // 선택삭제
                        var checked = $('input[name="checkpd"]').filter(':checked').length;//체크한 상품 갯수
                        if(itemCnt == checked && Number(pageNum) > 1) updateURL(pageNum - 1); // 삭제 시점에 2페이지 이상이고 노출 상품이 1개면 삭제 후 한 페이지 전의 목록 호출
                    } else { // 단일삭제
                        if(itemCnt == 1 && Number(pageNum) > 1) updateURL(pageNum - 1); // 삭제 시점에 2페이지 이상이고 노출 상품이 1개면 삭제 후 한 페이지 전의 목록 호출
                    }
                    
                    
                    if(result=="SUCCESS"){
                        var lc = new layerAlert("삭제가 완료 되었습니다.");
                        lc.confirmAction = function(){
                            location.reload();
                            //location.href="/ko/mypage/myWish#"+pageNum;
                        };
                    }else{
                        layerAlert("삭제를 실패하였습니다.");
                    }
                }
            });
        };
         
    });
    
    function setOptions(obj, index, productCode, type)
    {
        $(obj).addClass("on");
        $(obj).siblings("a").removeClass("on");
        var reserveProdNm = $(obj).parents(".tlt_wrap").find(".basket_tlt").find(".reserveProdNmChild").html();
        
        $(obj).parents(".tlt_wrap").find(".sz_select").find('a').each(function(){
            if($(this).hasClass("on")) {
                $('#addToCartForm' + index).find('input[name=productCodePost]').val($(this).attr("id")); 
            }
        });
    
        var paramDatas = 'productCode='+ productCode + '&index=' + index+ '&type=' + type;
        if(type == "style"){
            $.ajax({
                type: "GET",
                url: "/ko/mypage/wishlistaddcart",
                dataType: "json",
                data: paramDatas,
                success: function(result){
                    $('#pt_list_'+index).html(result.shoppingbagOptions);
                    addreservenm(reserveProdNm,index);
                    
                    $("#pt_list_"+index+" .sz_select a").each(function(){
                        if($(this).hasClass("on")){
                            wishlistProductStock(productCode+"_"+$(this).html(), index);
                        }
                    });
                },
                error: function(xhr,  Status, error) {
                    alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
                }
            });
        }else{
            wishlistProductStock(productCode, index);
        }
    }
    
    function wishlistProductStock(productCode, index){
        var paramDatas = 'productCode='+productCode;
    
        $.ajax({
            type: "GET",
            url: "/ko/mypage/wishlistProductStock",
            data: paramDatas,
            success: function(result){
                if(result.reserve != "" && result.reserve != null){
                    var totalStock = 0;
                    for(var i=0;i<result.reserve.length;i++ ){
                        if(totalStock < Number(result.reserve[i].reserveSalesStockpile)){
                            totalStock = Number(result.reserve[i].reserveSalesStockpile);
                        }
                    }
                    $("#stockCnt"+index).val(totalStock);
                }else{
                    try{
                        var stock = result.stock;
                        $("#stockCnt"+index).val(stock);    
                    }catch(e){}
                    
                }
            },
            error: function(xhr,  Status, error) {
                alert('sendRequest error : ' + xhr.status + " ( " + error + " ) " );
            }
        });
    }
    
    //예약상품 쇼핑백담기 버튼 선택 시 옵션의 상품명 앞에도 [예약상품] 노출
    function addreservenm(reserveProdNm,idx){
        $('#pt_list_'+idx).find(".reserveProdNmChild").html(reserveProdNm);
    }
    
    function addToCart(index)
    {   
        var form = $('#addToCartForm' + index);
        var qty = $("#quantity" + index).val();
        form.find('input[name=qty]').val(qty);
        var stock = $("#stockCnt"+index).val();
    
        var productCode = form.find('input[name=productCodePost]').val(); 
        var quantity = form.find('input[name=qty]').val();
        var size = form.find('input[name=productCodeType]').val();
        
        var chkPromotion = $("#promotionProduct"+ index).val();
        
        //--> 매장픽업전용상품은 상품상세페이지로 이동하라는 문구 출력.
        var onlyStorePickup = form.find('input[name=onlyStorePickup]').val();
        if(onlyStorePickup == "true" && 'ko' == 'ko'){
            layerAlert('매장수령 전용 상품입니다. <br />리스트의 제품 사진을 클릭하여, 상품 상세화면으로 이동해주세요. 수령을 원하는 매장을 상품상세페이지에서 지정 후, 구매 가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
            return;
        }
        //-->
        
        if(size != 'ApparelSizeVariantProduct'){
            layerAlert('컬러 및 사이즈를 선택해 주세요.');
            return;
        }
        
        if(parseInt(quantity) < 1){
            layerAlert('productdetail.basket.errormag.qty');
            return;
        }   
        
        if(parseInt(stock) < 1){
            layerAlert('해당사이즈는 품절입니다.');
            return;
        } 
        
        //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
        var cartQty = cartQuantity[productCode];
        var isqtyLimitProduct = qtyLimitProductYnMap[productCode.split('_')[0]];
        if(cartQty && isqtyLimitProduct){
            if(parseInt(quantity) + parseInt(cartQty) > 2){
                if(parseInt(cartQty) == 1 || parseInt(cartQty) > 2){
                    layerAlert('이미 쇼핑백에 '+cartQty+'개가 담겨있습니다.<br/>수량을 다시 선택해주시기 바랍니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');            
                    return;   
                }else if(parseInt(cartQty) == 2){
                    layerAlert('구매 가능한 수량 '+cartQty+'개가<br/>이미 쇼핑백에 담겨있습니다.<br/><p style="color:gray; font-size:14px; margin-top:8px;">(동일 상품은 최대 2개까지 구매 가능)</p>');            
                    return;
                }
            }
        }
        
        
        //프로모션 상품 체크
        if(chkPromotion == "true" || chkPromotion == true) {
            $.ajax({
                url: '/ko/mypage/checkCartProduct',
                type: "GET",            
                data: {productCode: productCode},
                async : false,
                success: function(data){
                    if(data) { //기존 cart에 존재하면
                        var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.'); //"이미 프로모션 상품이 담겨있습니다."
                        return;
                    }else {
                        addtoCartProcessFunction(index); //기존로직
                    }
                },
                error: function(xhr, Status, error) {
                    //
                }
           });
            
        }else{
            addtoCartProcessFunction(index); //기존로직
        }
    }
    
    function addtoCartProcessFunction(index) {
        var form = $('#addToCartForm' + index);
        var qty = $("#quantity" + index).val();
        form.find('input[name=qty]').val(qty);
        var stock = $("#stockCnt"+index).val();
    
        var productCode = form.find('input[name=productCodePost]').val(); 
        var quantity = form.find('input[name=qty]').val();
        var size = form.find('input[name=productCodeType]').val();
        
        
        $.ajax({
            url: "/ko/shoppingbag/add?"+getCSRFToken(),
            type: "POST",           
            data: form.serialize(),
            success: function(msg){
                var errorMsg = msg;
                if(errorMsg == null || errorMsg == ''){
                    setEcommerceData(index, "Add To Cart");
                   var lc = new layerConfirm("쇼핑백에 담겼습니다.<br />확인하시겠습니까?", "쇼핑백 바로가기", "취소");
                   
                   lc.confirmAction = function(){
                       $(".btn_close").trigger("click");
                       window.location.href="/ko/shoppingbag";
                   };
                   lc.cancelAction = function(){
                       window.location.reload();
                   }
                }else{
                    var la = new layerAlert(errorMsg);
                    la.confirmAction = function(){
                           return;
                    };              
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
    
    function leftClick(index){
         var qty = $('#quantity'+index);
        
         if (qty.val() == 1) {
             return ;
         }
         qty.val(Number(qty.val()) - 1);
    };
    
    function rightClick(index){
    
        var qty = $('#quantity'+index);
        var productCode = $('#addToCartForm'+index).find('[name=productCodePost]')
    
        
        if (parseInt(qty.val()) >= parseInt($("#stockCnt"+index).val())) {
            layerAlert('재고가 부족합니다.');
            return ;
        }
        
        //#2610 [주문] 가상계좌 결제수단 제외 및 중복 구매 제한 처리 요청 건 20220215 hyunbae
        var baseProductCode = productCode.val().split('_')[0];
        var isQtyLimitProduct = qtyLimitProductYnMap[baseProductCode];
        if(isQtyLimitProduct && parseInt(qty.val()) + 1 > 2){
            layerAlert('동일 상품(사이즈/컬러)은<br/>최대 2개까지 선택 가능합니다.');
            return ;
        }
        
        qty.val(Number(qty.val()) + 1);
    };
    
    function promotionProduct(){
        var la = new layerAlert('동일 옵션(컬러/사이즈)으로 최대 1개 구매 가능합니다.');
    }
    
    function getCSRFToken(){
        return "CSRFToken="+$("#CSRFForm [name='CSRFToken']").first().val();   
    }
    
    function setEcommerceData(idx, action){
        var prodList = JSON.parse(window.sessionStorage.getItem('ecommerceDataList'));
        
        if(prodList != null){
            if(prodList.length > 0){
                var prodInfo = prodList[idx];
    
                /* 위시리스트에서 쇼핑백담기 한 상품코드 */
                var form = $('#addToCartForm' + idx);
                var productCode = form.find('input[name=productCodePost]').val();
    
                /* 상품 정상이월세일 */
                var dimension19_1 = "정상상품";
                var dimension19_2 = "정상가";
                
                if(prodInfo.carryingForward!='NORMAL'){
                    dimension19_1 = "이월상품";
                }
                
                if(prodInfo.productNormalPrice!=prodInfo.productPrice){
                    dimension19_2 = "세일가";
                }
                
                /* 상품 카테고리url */
                var categoryUrl = prodInfo.productData.categories[0].url;
                var categories = categoryUrl.split("/").slice(2,5);
                var category = "";
                if(categories.length > 0){
                    $.each(categories, function(i) {
                        category += decodeURIComponent(categories[i]);
                        if(i != categories.length-1){
                            category += "/";
                        }
                    });
                }
                
                if(action == "Add To Cart"){
                    dataLayer.push({
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Add To Cart','layerLabel' : undefined,
                        'ecommerce': {
                        'currencyCode': 'KRW', //통화
                        'add': {
                            'products':
                                [{
                                    "id": productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
                                    "name": prodInfo.productName, //상품명
                                    "brand": prodInfo.brandName, //상품 브랜드
                                    "category": category, //decoded (상품 카테고리)
                                    "dimension19": dimension19_1+"_"+dimension19_2 //상품 정상이월세일
                                }]
                            }
                        }
                    });
                    
                }else if(action == "Click"){
                    dataLayer.push({
                        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
                        'ecommerce': {
                        'currencyCode': 'KRW', //통화
                        'click': {
                            'actionField': { 'list': '마이하트_찜리스트' }, //상품 리스트명
                            'products':
                                [{
                                    "id": prodInfo.productCode.indexOf("_") > -1 ? prodInfo.productCode.split("_")[0] : prodInfo.productCode, //상품코드
                                    "name": prodInfo.productName, //상품명
                                    "brand": prodInfo.brandName, //상품 브랜드
                                    "category": category, //상품 카테고리
                                    
                                    "position": 8 //상품 위치
                                    
                                }]
                            }
                        }
                    });
                }
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
    }
    
    
    //]]>
    </script>
    
        <input type="hidden" id="isEasyMember" value="true">
        <input type="hidden" id="normalPoint" value="5.0">
        <input type="hidden" id="outletPoint" value="1.0">
        <div class="title_wrap mt30">
            <h4 class="float_left">위시리스트<!-- 위시리스트 --></h4>
            <p class="txt_line">위시리스트에는 상품이 최대 200개 까지 저장 됩니다.<!-- 위시리스트에는 상품이 최대 200개 까지 저장 됩니다. --></p>
        </div>
        <form id="wishListForm" action="/ko/mypage/myWishList">
        </form>
        <!-- Table -->
        <div class="tblwrap">
            <table class="tbl_ltype">
                <caption>Backet</caption>
                <colgroup>
                    <col style="width:10px">
                    <col>
                    <col style="width:105px">
                    <col style="width:120px">
                    <col style="width:110px">
                    </colgroup>
                <thead>
                    <tr>
                        <th scope="col"><input type="checkbox" title="선택" value="" name="allcheck"></th>
                        <th scope="col">상품정보<!-- 상품정보 --></th>
                        <th scope="col">판매가<!-- 판매가 --></th>
                        <th scope="col">선택<!-- 선택 --></th>
                    </tr>
                </thead>
                <tbody id="listBody"><tr>   <td class="frt"><input type="checkbox" title="선택" value="9610457088702" name="checkpd" data-value="SJ2CAKCD034W"></td>   <td class="pt_list_wrap">      <div class="pt_list_all">           <a href="/ko/p/SJ2CAKCD034W" onclick="javascript:setEcommerceData('0','Click');GA_Event('위시리스트', '상품', '캐시미어 블렌드 칼라 가디건');"><img src="http://newmedia.thehandsome.com/SJ/2C/FW/SJ2CAKCD034W_PR_S01.jpg" alt="상품 이미지"></a>           <div class="tlt_wrap">               <a href="/ko/p/SJ2CAKCD034W" class="basket_tlt" onclick="javascript:setEcommerceData('0','Click');GA_Event('위시리스트', '상품', '캐시미어 블렌드 칼라 가디건');">               <span class="tlt">SJSJ</span>               <span class="sb_tlt">캐시미어 블렌드 칼라 가디건                   </span>            </a>         </div>      </div>   </td>   <td class="al_middle">      <div class="price_wrap">         <span> ￦435,000 </span>      </div>   </td>      <td class="al_middle">      <div class="btn_wrap">         <a href="javascript:void(0)" class="btn wt_ss add_bag parent_add_bag" product="8864683229185" index="0" productcode="SJ2CAKCD034W" onclick="GA_Event(&quot;위시리스트&quot;, &quot;쇼핑백담기&quot;, &quot;캐시미어 블렌드 칼라 가디건&quot;);">쇼핑백담기<!-- 쇼핑백담기 --></a>         <a href="javascript:void(0)" class="btn wt_ss wishDel" wishcode="9610457088702" onclick="GA_Event(&quot;위시리스트&quot;, &quot;삭제&quot;, &quot;캐시미어 블렌드 칼라 가디건&quot;);" data-value="SJ2CAKCD034W">삭제<!-- 삭제 --></a>      </div>   </td></tr><tr class="hid">   <td colspan="5" class="basket_wrap">      <div class="basket_info" id="cart0">      <span class="btn_arr">위치아이콘</span>         <div class="info">            <div class="pt_list" id="pt_list_0">            </div>            <div class="btns">               <a href="javascript:void(0)" class="btn wt_ss bag" id="addToCart_0">쇼핑백담기<!-- 쇼핑백담기 --></a>               <a href="javascript:void(0)" class="btn wt_ss mt10 bag" id="cancle_0">취소<!-- 취소 --></a>               <a href="javascript:void(0)" class="btn_close bag" id="close_0">닫기<!-- 닫기 --></a>            </div>         </div>      </div>   </td></tr><tr>   <td class="frt"><input type="checkbox" title="선택" value="9610457055934" name="checkpd" data-value="SJ2C9QOT213W"></td>   <td class="pt_list_wrap">      <div class="pt_list_all">           <a href="/ko/p/SJ2C9QOT213W" onclick="javascript:setEcommerceData('1','Click');GA_Event('위시리스트', '상품', '플랩 포켓 구스 다운 점퍼');"><img src="http://newmedia.thehandsome.com/SJ/2C/FW/SJ2C9QOT213W_DN_S01.jpg" alt="상품 이미지"></a>           <div class="tlt_wrap">               <a href="/ko/p/SJ2C9QOT213W" class="basket_tlt" onclick="javascript:setEcommerceData('1','Click');GA_Event('위시리스트', '상품', '플랩 포켓 구스 다운 점퍼');">               <span class="tlt">SJSJ</span>               <span class="sb_tlt">플랩 포켓 구스 다운 점퍼                   </span>            </a>         </div>      </div>   </td>   <td class="al_middle">      <div class="price_wrap">         <span> ￦695,000 </span>      </div>   </td>   <td class="al_middle">      <div class="btn_wrap">         <a href="javascript:void(0)" class="btn wt_ss add_bag parent_add_bag" product="8864682115073" index="1" productcode="SJ2C9QOT213W" onclick="GA_Event(&quot;위시리스트&quot;, &quot;쇼핑백담기&quot;, &quot;플랩 포켓 구스 다운 점퍼&quot;);">쇼핑백담기<!-- 쇼핑백담기 --></a>         <a href="javascript:void(0)" class="btn wt_ss wishDel" wishcode="9610457055934" onclick="GA_Event(&quot;위시리스트&quot;, &quot;삭제&quot;, &quot;플랩 포켓 구스 다운 점퍼&quot;);" data-value="SJ2C9QOT213W">삭제<!-- 삭제 --></a>      </div>   </td></tr><tr class="hid">   <td colspan="5" class="basket_wrap">      <div class="basket_info" id="cart1">      <span class="btn_arr">위치아이콘</span>         <div class="info">            <div class="pt_list" id="pt_list_1">            </div>            <div class="btns">               <a href="javascript:void(0)" class="btn wt_ss bag" id="addToCart_1">쇼핑백담기<!-- 쇼핑백담기 --></a>               <a href="javascript:void(0)" class="btn wt_ss mt10 bag" id="cancle_1">취소<!-- 취소 --></a>               <a href="javascript:void(0)" class="btn_close bag" id="close_1">닫기<!-- 닫기 --></a>            </div>         </div>      </div>   </td></tr></tbody>
            </table>
        </div>
        <!-- //Table -->
    
        <!--  <p class="mt10 ml10">* 세일/가격인하/아울렛 일부 할인 상품은 한섬마일리지 적립이 불가합니다. 정확한 적립율은 쇼핑백과 상품상세페이지에서 확인하세요.</p>-->
        <p class="mt10 ml10">* 정확한 적립율은 상품상세페이지에서 확인하세요.</p>
        <div class="btn_btwrap">
            <a href="javascript:void(0);" class="btn wt_ss chooseDel">선택삭제<!-- 선택삭제 --></a>
        </div>
        <!-- paging -->
        <div class="paging"><a class="prev2" href="javascript:void(0);">처음 페이지로 이동</a><a href="javascript:void(0);" class="prev">이전 페이지로 이동</a><span class="num"><a href="javascript:void(0);" class="pageBtn  on  " pagenum="1">1</a></span><a href="javascript:void(0);" class="next">다음 페이지로 이동</a><a href="javascript:void(0);" class="next2">마지막 페이지로 이동</a></div>
        <!-- //paging -->
        
    </div>
            <!-- //cnts -->
        </div>
    </div>
</body>
</html>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>