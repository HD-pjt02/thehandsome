<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/common/headerMain.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="bodyWrap">
   <h3 class="cnts_title cnts_tlt1807">
      <span>쇼핑백</span>
   </h3>
   <!-- 장바구니개편 -->
   <span id="shoppingbagCartView"> <!--sub_container-->
      <div class="sub_container ">
         <!--order wrap-->
         <div class="shopping_cart_tab1807 tab_a">
            <!-- 장바구니개편 -->
            <ul class="tab3">
               <li><a href="#;" name="cartDivision" data-division=""
                  onclick="GA_Event('쇼핑백', '탭', '택배');" class="active"><span
                     class="delt_ico"></span>택배</a></li>
               <li><a href="#;" name="cartDivision" data-division="store"
                  onclick="GA_Event('쇼핑백', '탭', '매장수령');" class=""><span
                     class="spt_ico"></span>매장수령</a></li>
               <li><a href="#;" name="cartDivision" data-division="quick"
                  onclick="GA_Event('쇼핑백', '탭', '퀵배송');" class=""><span
                     class="quk_ico"></span>퀵배송</a></li>
            </ul>
         </div>
         <div class="orderwrap1807">
            <div class="tbl_info_wrap">
               <p class="cart_top_text"></p>
               <div class="fourpm_pd_ck">
                  <div class="input_wrap"></div>
               </div>
            </div>
            <div class="tblwrap">
               <table class="tbl_ltype">
                  <caption>쇼핑백</caption>
                  <colgroup>
                     <col style="width: 10px;">
                     <col>
                     <col style="width: 120px">
                     <col style="width: 105px">
                     <col style="width: 140px">
                     <col style="width: 110px">
                  </colgroup>
                  <thead>
                     <tr>
                        <th scope="col">
                           <!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 --> <input
                           type="checkbox" id="allchecked" value="cartlist">
                        </th>
                        <th scope="col">상품정보</th>
                        <th scope="col">수량</th>
                        <th scope="col">판매가</th>
                        <th scope="col">적립율</th>
                        <th scope="col">선택</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="cart_product" items="${carts}" varStatus="status">

                        <tr name="entryProductInfo" data-pk="10949709168684"
                           data-deliverykind="" data-outofstock="false"
                           data-category="ME025">
                           <!-- 왼쪽 체크박스 -->
                           <td class="frt"><input type="checkbox"
                              name="cartno-checkbox" id="${cart_product.cartno}"
                              <c:if test="${cart_product.pamount == 0}">
                                 disabled
                              </c:if>
                              onchange="handleCartnoCheckbox(this)"></td>
                        <td class="pt_list_wrap">
                              <div class="pt_list_all">
                                 <a href=""
                                    onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','${cart_product.pname}');">
                                    <img
                                    src="${cart_product.colors[cart_product.coloridx].imgurl1}"
                                    alt="product-img">
                                 </a>
                                 <div class="tlt_wrap">
                                    <input type="hidden" value="${cart_product.cartno}"
                                       name="cartnoSelected" /> <input type="hidden"
                                       value="${cart_product.pcode}" name="pcodeSelected" /> <a
                                       href="" class="basket_tlt"
                                       onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','${cart_product.pname}');">
                                       <span class="tlt">${cart_product.bname}</span> <span
                                       class="sb_tlt"> ${cart_product.pname}</span>
                                    </a>
                                    <p class="color_op">
                                    <c:forEach var="color" items="${cart_product.colors}">
                                       <c:if test="${color.pcolor eq cart_product.pcolor}">
                                             color : ${color.pcolor}<span class="and_line">/</span>
                                       </c:if>
                                    </c:forEach>
                                    <c:forEach var="size" items="${cart_product.sizes}">
                                          <c:if test="${size.psize eq cart_product.psize}">
                                          size : ${size.psize}
                                          </c:if>
                                    </c:forEach>
                                    </p>
                                    <!--  아래에 띄우는 용도  -->
                                    <div class="option_wrap">
                                       <a href="#none" class="btn_option"
                                          id="optOpenLayer^0^MU2C9TTO104M5E_BR"
                                          onclick="GA_Event('쇼핑백','옵션변경', '${cart_product.pname}')">옵션변경</a>
                                    </div>
                                 </div>
                              </div>
                           </td>
                           <td class="al_middle">
                              <form id="updateCartForm1" action=""
                                 method="post">
                                 <input type="hidden" name="entryNumber" value="1"> <input
                                    type="hidden" name="productCode" value="MU2C9TPC029M5E_BR_M">
                                 <input type="hidden" name="initialQuantity" value="1">
                                 <input type="hidden" name="chgProductCode"
                                    value="MU2C9TPC029M5E_BR_M"> <input type="hidden"
                                    name="curSize" value="M"> <input type="hidden"
                                    name="storeId" value=""> <input type="hidden"
                                    name="storePickupDate" value=""> <input
                                    type="hidden" name="deliveryKind" value=""> <input
                                    type="hidden" name="cartDivision" value="">
                                 <!-- qty_sel -->
                                 <span class="qty_sel num"> <a href="#none"
                                    class="left"
                                    onclick="change_qty('${status.index}', 'left');">이전 버튼</a> <input
                                    id="quantity${status.index}" name="pamountSelected${cart_product.cartno }"
                                    type="text" value="${cart_product.pamount}" class="mr0"
                                    value="1" size="1" maxlength="3" min="1" max="2"> <!--  $('input[name=pamountSelected]').val(); -->
                                    <a href="#none" class="right"
                                    onclick="change_qty('${status.index}', 'right');">다음 버튼</a>
                                 </span>
                                 <script>
                                 function change_qty(cartIndex, button){
                                    //console.log("cartIndex: "+cartIndex);
                                    //console.log("버튼: "+button);
                                    var this_qty = $("#quantity"+cartIndex).val()*1;
                                    var min_qty = 1;
                                    var max_qty = 2;
                                    if(button=='left'){
                                       this_qty -= 1;
                                       if(this_qty<min_qty){
                                          this_qty = 1;
                                       }
                                       //console.log(this_qty);
                                    }else if(button=='right'){                                       
                                       this_qty += 1;
                                        if(this_qty > max_qty){
                                       alert("2개 초과로 구매할 수 없습니다.");
                                       return;
                                       } 
                                       //console.log('+들어옴'+this_qty);
                                    }
                                    //console.log("내값 : "+ this_qty);
                                    $("#quantity"+cartIndex).val(this_qty);
                                    //console.log("value : " + $("#quantity"+cartIndex).val());
                                 }
                                 </script>
                                 <!-- //qty_sel -->
                                 <a href="#none" id="QuantityProduct_${cat_product.coloridx}"
                                    class="btn wt_ss qty_w mr0"
                                    onclick="clickChange('${cart_product.cartno}', ${status.index })">변경</a>
                                 <div>
                                    <input type="hidden" name="CSRFToken"
                                       value="a66fd8d8-210b-43d7-9d88-edeb49e1f5ef">
                                 </div>
                              </form>
                           </td>
                           <td class="al_middle">
                              <!-- Price -->
                              <div class="price_wrap">
                                 <span>₩${cart_product.pprice}</span> <input type="hidden" id="cartno-price-${cart_product.cartno}"
                                    name="checkZeroPrice" value="${cart_product.pprice}">
                              </div> <!-- //Price -->
                           </td>
                           <td class="al_middle"><span class="earn">5%
                                 (한섬마일리지)</span> <br> <span class="earn">0.1% (H.Point)</span></td>
                           <td class="al_middle">
                              <!-- Button size -->
                              <div class="btn_wrap">
                                 <a href="" class="btn wt_ss"
                                    onclick="callWishListClick('${cart_product.pname}',$(this),'${car_product.pcode}');"
                                    data-value="0">위시리스트</a> <a
                                    href="deletecart?cartnoSelected=${cart_product.cartno}"
                                    id="RemoveProduct_1" class="btn wt_ss"
                                    onclick="GA_Event('쇼핑백','삭제','${cart_product.pname}');">삭제</a>
                              </div> <!-- //Button size -->
                           </td>
                        </tr>
                        <!-- 옵션 변경 파트 -->
                        <tr>
                           <td colspan="6" class="basket_wrap">
                              <!-- display : block - > none으로 바꾸기 -->
                              <div class="basket_info" style="display: none;">
                                 <span class="btn_arr">위치아이콘</span>
                                 <div class="info">
                                    <!-- Products -->
                                    <div class="pt_list" id="pt_list_${status.index}">
                                       <a href=""> <img
                                          src="${cart_product.colors[cart_product.coloridx].imgurl1}"
                                          id="pt_list_img_${status.index}" alt="">
                                       </a>
                                       <div class="tlt_wrap">
                                          <a href="" class="basket_tlt"> <span class="tlt">${cart_product.bname}</span>
                                             <span class="sb_tlt">${cart_product.pname}</span>
                                          </a>
                                          <!-- color_size -->
                                          <dl class="cs_wrap">
                                             <dt>COLOR</dt>
                                             <dd>
                                                <div class="cl_select">
                                                   <c:forEach var="color" items="${cart_product.colors}"
                                                      varStatus="stat">
                                                      <c:if test="${color.pcolor eq cart_product.pcolor}">
                                                         <a href="javascript:void(0);" value="${color.pcolor}"
                                                            class="beige on"
                                                            onclick="clickColor('${status.index}','${color.pcolor}','${color.imgurl1}');"
                                                            style="background: #694b41 url('${color.colorurl}')">${color.pcolor}</a>
                                                      </c:if>
                                                      <c:if test="${color.pcolor ne cart_product.pcolor}">
                                                         <a href="javascript:void(0);" value="${color.pcolor}"
                                                            class="beige"
                                                            onclick="clickColor('${status.index}','${color.pcolor}','${color.imgurl1}');"
                                                            style="background: #694b41 url('${color.colorurl}')">${color.pcolor}</a>
                                                      </c:if>
                                                   </c:forEach>
                                                   <script>
                                                   function clickColor(index,codecolor,img, what){
                                                      //console.log("들어옴! : "+codecolor);
                                                      //console.log("clickColor함수에 index : "+index);
                                                      $(".cs_sel1807").html(codecolor);   //선택된 색상 컬러코드 보여주기
                                                      $("#pt_list_img_"+index).attr("src",img);//선택된 색상 이미지 보여주기
                                                   }
                                                </script>

                                                </div>
                                             </dd>
                                             <dt>SIZE</dt>
                                             <dd style="width: 90%; height: 100%;">
                                                <div class="sz_select">
                                                   <c:forEach var="size" items="${cart_product.sizes}"
                                                      varStatus="stat">
                                                      <c:if test="${size.psize eq cart_product.psize}">
                                                         <a href="javascript:void(0);" value="${size.psize}"
                                                            class="on" style="line-height: 15px;">${size.psize}</a>
                                                      </c:if>
                                                      <c:if test="${size.psize ne cart_product.psize}">
                                                         <a href="javascript:void(0);" value="${size.psize}">${size.psize}</a>
                                                      </c:if>
                                                   </c:forEach>
                                                </div>
                                             </dd>
                                          </dl>
                                       </div>
                                    </div>
                                    <!-- 상품 컬러와 사이즈 변경하는 부분 -->
                                    <div class="btns">
                                       <a href="#none" class="btn wt_ss mr0"
                                          id="UpdateCart_${status.index}"
                                          onclick="clickChange('${cart_product.cartno}', '${status.index }');">변경</a>
                                       <a href="#none" class="btn wt_ss mt10 mr0"
                                          id="optCloseLayer_${status.index}}">취소</a> <a href="#none"
                                          class="btn_close" id="optCloseLayer_${status.index}">닫기</a>
                                    </div>
                                    <script>
                                               function clickChange(cid, sidx){
                                                  console.log(sidx);
                                                  console.log("카트아이디: "+cid);
                                                  //var color = $(".cl_select").find("a.beige.on").text();
                                                  var color = $(".cl_select").find("a.beige.on")[sidx].getAttribute("value");
                                                  //var size = $(".sz_select").find("a.on").text();
                                                  var size = $(".sz_select").find("a.on")[sidx].getAttribute("value");
                                                  var amount = $('input[id=quantity'+sidx).val();
                                                  console.log("옵션color : "+color);
                                                  console.log("옵션size : "+size);
                                                  console.log(amount);
                                                  location.href="/member/changeProductOption?cartno="+cid+"&pcolor="+color+"&psize="+size+"&pamount="+amount;
                                               }
                                               </script>
                                 </div>
                              </div>
                           </td>
                        </tr>
                        <tr>
                           <td colspan="6" class="basket_wrap"></td>
                        </tr>

                     </c:forEach>
                  </tbody>
                  <script>
                     let checkboxes;
                     $("#allchecked").click(
                           function() {
                              if ($("input:checkbox[id='allchecked']").prop(
                                    "checked")) {
                                 $("input[type=checkbox]:not(:disabled)").prop(
                                       "checked", true);
         
                              } else {
                                 $("input[type=checkbox]")
                                       .prop("checked", false);
                              }
                              handleCartnoCheckbox();
                           });
                     function handleCartnoCheckbox() {
                        checkboxes = $('input:checkbox[name="cartno-checkbox"]:checked');
                        console.log(checkboxes);
                        let sum = 0;
                        // 배송비
                        let post = 3000;
                        let total = 0;
                        for (let i = 0; i < checkboxes.length; i++) {
                           let id = "#cartno-price-" + checkboxes[i].id;
                           var amount = $('input[name=pamountSelected'+checkboxes[i].id).val();
                           console.log(amount);
                           console.log(id);
                           // 숫자 내부의 쉼표를 제거한다.
                           sum += parseInt($(id).val()) * parseInt(amount);
                        }
                        if (sum >= 30000) {
                           post = 0;
                        } else {
                           post = 2500;
                        }
                        total = (sum + post).toLocaleString();
                        sum = sum.toLocaleString();
                        $("#product-price-total").html(sum);
                        $("#product-price-all").html(total);
                        $("#product-count").html(checkboxes.length);
                        $("#post-fee").html(post);
                     }
                  </script>
               </table>
            </div>
            <div class="total_wrap">
               <!-- total -->
               <div class="total_price_wrap">
                  <dl>
                     <dt>상품 합계</dt>
                     <dd>
                        ￦<span id="product-price-total">0</span>
                     </dd>
                     <dt class="delch_wrap">
                        <p class="tlt_ship">배송비</p>
                        <!--delivery charge layer popup-->
                        <div class="delch_box" style="display: none;">
                           <span class="arr">위치아이콘</span>
                           <ul class="bul_sty01_li">
                              <li>쿠폰/바우처 할인금액 및 한섬마일리지/H.Point 사용을 제외한 실 결제금액 기준 <strong>3만원
                                    미만 결제 시 2,500원 배송비가 부과</strong> 됩니다.(3만원 이상 구매 시 무료배송)
                              </li>
                              <li>도서산간 지역은 배송비가 추가 될 수 있습니다.</li>
                              <li>한섬마일리지, H.Point, e-money로 배송비 결제가 불가합니다.</li>
                           </ul>
                        </div>
                     </dt>
                     <dd>
                        ￦<span id="post-fee">2500</span>
                     </dd>
                  </dl>
                  <dl class="total ">
                     <dt>합계</dt>
                     <dd>
                        ￦<span id="product-price-all">2500</span>
                     </dd>
                  </dl>
               </div>
               <div class="total_count1807">
                  <p>
                     총 <span id="selectProductCount"><fmt:formatNumber value="${fn:length(carts)}" /></span>개 상품
                  </p>
               </div>
               <!-- //total -->
            </div>
            <div class="btnwrap order" id="checkout_btn_wrap">
               <a href="#;" onclick="selectRemove();"><input value="선택상품삭제"
                  class="btn wt" type="button"></a> <a href="#;"
                  onclick="moveOrderPage();"> <input value="선택상품 주문하기"
                  class="btn gray mr0" type="button">
               </a>
               <script>
                  function moveOrderPage() {
                     if (checkboxes === undefined) {
                        alert("구매하실 상품을 선택해주세요.");
                     } else {
                        let checkedItems = "";
                        for (let i = 0; i < checkboxes.length; i++) {
                           checkedItems += checkboxes[i].id + ",";
                        }
                        location.href = "insertorder?checkedItems="
                              + checkedItems + "&itemsLength="
                              + checkboxes.length;
                     }
                  }
               </script>
            </div>
            <div class="promotion_wrap mt60" id="freeGiftPromotion">
                        <dl class="promotion_list" style="border-top:1px solid #ebebeb; padding:60px 20px 18px 20px">
                            <dt class="promotion_tit">PROMOTION 혜택</dt>
                            <dd class="promotion_con1">
                                <strong>혜택 1 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/m-thumb-02.jpg?context=bWFzdGVyfHJvb3R8MzM2ODN8aW1hZ2UvanBlZ3xoZTkvaDIzLzkzNDIzNzUzMjk4MjIuanBnfGQwYThmZGU0OWVlZTljZWY2ZDJkMmVkYTAyZjBiNWNiYTk1ODk5MjEyMjE4Yjg0NTk0MTc0NDRmOWRiY2RkMjc"></li>
                                    <li>사은품 : 마인 뷰티 박규영 브로슈어</li>
                                    <li>마인 뷰티 제품 구매 시 " 박규영 가을 화보 브로슈어 " 를 드립니다. <br> 기간 : 10/24 (월) ~ 소진 시 까지<br> 마인 뷰티 립 OR 쿠션 제품 필수 구매 시 증정 <br> 본 사은품은 주문번호 당 1회 합배송으로 증정되며, 반품 및 교환 시 사은품은 반드시 동봉하여 회수됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 2 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/221021-ARTEKGIFT.jpg?context=bWFzdGVyfHJvb3R8Mjc2NTF8aW1hZ2UvanBlZ3xoOGQvaDAxLzkzNDIwNTkxNTEzOTAuanBnfGRjODNmY2QyNzIyNDBiMGI5NGY1NzM3OTQ5NzkyOTRmMGMxOWQwNWNkODg0NjYxNzQwNjNmYTgwYjU2NWNhMjk"></li>
                                    <li>사은품 : ARTEK 캔버스 에코백</li>
                                    <li>더캐시미어띵스 내 ARTEK 스툴 혹은 테이블을 구매하신 고객님께 "캔버스 에코백"을 드립니다.<br>기간 : 10월 21일~소진 시 까지<br>ARTEK 스툴 혹은 테이블 상품 필수 구매<br>사은품은 주문하신 상품과 함께 동봉하여 발송될 예정입니다.<br>본 사은품은 주문번호당 1회 증정되며, 반품 및 교환 시 사은품은 반드시 동봉하여 회수됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 3 /
                                800,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/0921-03129-3.jpg?context=bWFzdGVyfHJvb3R8Mjc0NTl8aW1hZ2UvanBlZ3xoZWQvaDI3LzkzNDAzMjA2NDUxNTAuanBnfDFlZDkxZDliM2IyZGQ2ZDAyZGQ1Y2RlZGY1NTQ4OTZjN2YwODVmODA5M2I4NGIwOWIxZjIyNzZiNzU4NTlhNzY"></li>
                                    <li>사은품 : 클럽모나코 여성 캠핑 체어</li>
                                    <li>클럽모나코 여성 정상 실결제 80만원 이상 구매 고객님께 "클럽모나코 여성 캠핑 체어"를 드립니다.<br> (실결제금액 기준, 아울렛 제외)<br> *기간 : 10월  17 ~ 10월 30일 ( 사은품 소진 시 종료, 선착순  20명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 18일 이후 순차적으로 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 4 /
                                800,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/0921-03133-2.jpg?context=bWFzdGVyfHJvb3R8MjYyNDR8aW1hZ2UvanBlZ3xoM2UvaDMwLzkzNDAzMjAxNTM2MzAuanBnfDQ5OGU5ZDRiYmZlMDM3ZTFmYWEyMTI1MjlhN2M1Y2FjZTNiNWNjNjIzMjNhYzNiMDlmYmU0NzgxYWU4MjJhMTY"></li>
                                    <li>사은품 : 클럽모나코 남성 캠핑 체어</li>
                                    <li>클럽모나코 남성 정상 실결제 80만원 이상 구매 고객님께 "클럽모나코 남성 캠핑 체어"를 드립니다.<br> (실결제금액 기준, 아울렛 제외)<br> *기간 : 10월  17 ~ 10월 30일 ( 사은품 소진 시 종료, 선착순  15명, 1인 1개) * 사은품은 취소 및 반품을 고려하여 주문하신 배송지로 11월 18일 이후 순차적으로 발송됩니다.</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 5 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/220930-.JPG?context=bWFzdGVyfHJvb3R8MTk0NjZ8aW1hZ2UvanBlZ3xoY2QvaGJhLzkzMzYzMTE0ODAzNTAuanBnfDVjZjkxNzEzOWE5YmE2ZmVlNTBmNWZmZDkyZDE4NmEzNGM4NTUyZTg4OGM0OGYyNjkwY2UxYjExMWI3YmFkMmI"></li>
                                    <li>사은품 : Liquides 로고 에코백</li>
                                    <li>리퀴드 퍼퓸바 브랜드 상품을 구매하신 모든 고객님께 Liquides 시그니처 로고 에코백을 사은품으로 드립니다.<br>주문 1건당 1개 제공되며, 사은품은 주문하신 배송지로 11월 17일 이후 별도 발송됩니다.<br>- 기간 : 9월 30일 ~ 10월 31일(선착순 증정)</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con2">
                                <strong>혜택 6 /
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/220930-.JPG?context=bWFzdGVyfHJvb3R8MzkwMzh8aW1hZ2UvanBlZ3xoN2UvaDQ5LzkzMzYzMDE2ODI3MTguanBnfGViZWY1Y2RmZDQ3MzEwMjNkY2I1YTU3MmE4N2Q5NzY0NmMyM2QzNjE3NTdiZTJhYWI5OTUwZDUxMjQ2Yzk1Y2I"></li>
                                    <li>사은품 : Liquides 10월 샘플링 2종</li>
                                    <li>기간 내 리퀴드 퍼퓸바 향수 구매 고객님께 향수 2종 샘플을  사은품으로 드립니다.<br>주문 1건당 1개 제공되며, 사은품은 주문하신 배송지로 구매 상품과 함께 발송됩니다. <br>- 기간 : 9월 30일 ~ 10월 31일(선착순 증정)</li>
                                </ul>
                            </dd>
                            <dd class="promotion_con1">
                                <strong>혜택 7 /
                                30,000원 이상
                                
                                구매하신 고객님께 사은품을 드립니다.
                                </strong>
                                <ul class="bul_sty01_li promotion_img">
                                    <li class="img"><img src="/medias/GIFT.jpg?context=bWFzdGVyfHJvb3R8NTI5OTI1fGltYWdlL2pwZWd8aGJmL2hmNS85Mjg0MzMwMTYwMTU4LmpwZ3xjYjNhYmMwNDU1ZTExZTM3ZTYwN2M4YzNiNWY5YjRkOWNhZTYyOTZhZmQxNGYwMjE0OThkZWVmMzVmMGQ3NGE3"></li>
                                    <li>사은품 : 바디 브러쉬 &amp; 코튼 매쉬 파우치</li>
                                    <li>더캐시미어띵즈 내 WEEKNDERS 상품 3만원 이상 구매하신 고객님께 "바디 브러쉬 &amp; 코튼 매쉬 파우치"을 드립니다.<br>기간 : 5월 31일~소진 시 까지<br>*WEEKNDERS 상품 필수 구매<br>사은품은 주문하신 상품과 함께 동봉하여 발송될 예정입니다.<br>본 사은품은 주문번호당 1회 증정되며, 반품 및 교환시 사은품은 반드시 동봉하여 회수됩니다.</li>
                                </ul>
                            </dd>
                            </dl>
                    </div>
         </div>

      </div>
   </span>
</div>



<!-- 이전 장바구니 
<br>
<h3 class="text-center m-4 border-top p-4">
   <span>쇼핑백</span>
</h3>
<div class="container">
   <table class="table">
      <thead>
         <tr class="row bg-light">
            <th class="col-1 text-center"><input type="checkbox" name=""
               id="allchecked"></th>
            <th class="col text-center">상품정보</th>
            <th class="col-1 text-center">수량</th>
            <th class="col-1 text-center">판매가</th>
            <th class="col-1 text-center">적립율</th>
            <th class="col-1 text-center">선택</th>
         </tr>
      </thead>
      <tbody>
         <c:forEach var="cart_product" items="${carts}">
            <form method="post" action="changeProductOption">
               <tr class="row">
                  <td class="col-1 text-center"><input type="checkbox"
                     name="cartno-checkbox" id="${cart_product.cartno}"
                     <c:if test="${cart_product.pamount == 0}">
                        disabled
                     </c:if>
                     onchange="handleCartnoCheckbox(this)"></td>
                  <td class="col">
                     <div class="card border-white" style="max-width: 540px;">
                        <div class="row no-gutters">
                           <div class="col-md-4">
                              <img class="img-thumbnail"
                                 src="${cart_product.colors[cart_product.coloridx].imgurl1}"
                                 alt="product-img">
                           </div>
                           <div class="col-md-8">
                              <input type="hidden" value="${cart_product.cartno}"
                                 name="cartnoSelected" /> <input type="hidden"
                                 value="${cart_product.pcode}" name="pcodeSelected" />
                              <div class="card-body">
                                 <p class="card-text">${cart_product.bname}</p>
                                 <h6 class="card-title">${cart_product.pname}</h6>

                                 <p class="card-text">
                                    <small class="text-muted">color : <select
                                       class="custom-select col-4" name="colorSelected"
                                       id="colorSelected">
                                          <c:forEach var="color" items="${cart_product.colors}">
                                             <option
                                                <c:if test="${color.pcolor eq cart_product.pcolor}">
                                             selected</c:if>
                                                value="${color.pcolor}">${color.pcolor}</option>
                                          </c:forEach>
                                    </select>
                                    </small> <small class="text-muted">/ size : <select
                                       class="custom-select col-4" name="psizeSelected"
                                       id="psizeSelected">
                                          <c:forEach var="size" items="${cart_product.sizes}">
                                             <option
                                                <c:if test="${size.psize eq cart_product.psize}">
                                             selected</c:if>
                                                value="${size.psize}">${size.psize}</option>
                                          </c:forEach>
                                    </select>
                                    </small>
                                 </p>


                                 <p class="card-text">
                                    <small class="text-muted text-right">
                                       <button id="changeOptionBtn" class="btn btn-light btn-sm">옵션변경</button>
                                       <script>
                                          $("#changeOptionBtn")
                                                .click(
                                                      function(
                                                            event) {
                                                         console
                                                               .log("옵션변경!");
                                                         event
                                                               .preventDefault();
                                                      });
                                          //기본 서브밋 속성 제거..
                                       </script>
                                    </small>
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </td>
                  <td class="col-1 text-center align-middle border-left"><input
                     class="mb-2 text-center" type="number" size="1"
                     style="width: inherit;" name="pamountSelected"
                     value="${cart_product.pamount}" min="1" />
                     <button class="btn btn-outline-secondary btn-sm"
                        style="width: inherit;">변경</button></td>
                  <td class="col-1 text-center align-middle border-left"
                     id="cartno-price-${cart_product.cartno}"><fmt:formatNumber
                        value="${cart_product.pamount * cart_product.pprice}" /></td>
                  <td class="col-1 text-center align-middle border-left">5%</td>
                  <td class="col-1 text-center align-middle border-left"><a
                     class="btn btn-outline-secondary btn-sm"
                     href="deletecart?cartnoSelected=${cart_product.cartno}">삭제</a></td>
               </tr>
            </form>
         </c:forEach>
         <script>
            let checkboxes;
            $("#allchecked").click(
                  function() {
                     if ($("input:checkbox[id='allchecked']").prop(
                           "checked")) {
                        $("input[type=checkbox]:not(:disabled)").prop(
                              "checked", true);

                     } else {
                        $("input[type=checkbox]")
                              .prop("checked", false);
                     }
                     handleCartnoCheckbox();
                  });
            function handleCartnoCheckbox() {
               checkboxes = $('input:checkbox[name="cartno-checkbox"]:checked');
               let sum = 0;
               // 배송비
               let post = 3000;
               let total = 0;
               for (let i = 0; i < checkboxes.length; i++) {
                  let id = "#cartno-price-" + checkboxes[i].id;
                  // 숫자 내부의 쉼표를 제거한다.
                  sum += parseInt($(id).html().replace(/\D/g, ''));
               }
               if (sum >= 30000) {
                  post = 0;
               } else {
                  post = 2500;
               }
               total = (sum + post).toLocaleString();
               sum = sum.toLocaleString();
               $("#product-price-total").html(sum);
               $("#product-price-all").html(total);
               $("#product-count").html(checkboxes.length);
               $("#post-fee").html(post);
            }
         </script>
         <tr>
            <td>
               <div class="float-right">
                  <dl class="row">
                     <dt class="col-sm-6">상품합계</dt>
                     <dd class="col-sm-6">
                        ￦<span id="product-price-total">0</span>
                     </dd>

                     <dt class="col-sm-6">배송비</dt>
                     <dd class="col-sm-6">
                        ￦<span id="post-fee">2500</span>
                     </dd>
                  </dl>
                  <div class="row">
                     <dt class="col-sm-6">합계</dt>
                     <dd class="col-sm-6">
                        ￦<span id="product-price-all">2500</span>
                     </dd>
                  </div>
               </div>
               <div class="float-right mr-5">
                  <div>
                     <dd>
                        총 상품 <span id="product-count">0</span>종
                     </dd>
                  </div>
               </div>
            </td>
         </tr>
         <tr>
            <td>
               <div class="text-center">
                  <a href="deleteallcart" class="btn btn-light">전체 삭제</a>
                  <button onclick="moveOrderPage()" class="btn btn-secondary">선택상품
                     주문하기</button>
                  <script>
                     function moveOrderPage() {
                        if (checkboxes === undefined) {
                           alert("구매하실 상품을 선택해주세요.");
                        } else {
                           let checkedItems = "";
                           for (let i = 0; i < checkboxes.length; i++) {
                              checkedItems += checkboxes[i].id + ",";
                           }
                           location.href = "insertorder?checkedItems="
                                 + checkedItems + "&itemsLength="
                                 + checkboxes.length;
                        }
                     }
                  </script>
               </div>
            </td>
         </tr>
      </tbody>
   </table>
</div>
-->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>