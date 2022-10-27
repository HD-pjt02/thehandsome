<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/headerMain.jsp"%>
</head>
<body>
   <div id="bodyWrap" class="products">
      <h3 class="cnts_title ou1804">
         <span class="card-text bg m-4"
            style="transform: rotate(0); text-align: center; font-size: 20px;"
            id="product_category_title"></span>
      </h3>
      <script>
      const url = new URL(window.location.href);
      const urlParams = url.searchParams;
      let tmp = "<a href='${pageContext.request.contextPath}/product/productlist?clarge=" + urlParams.get("clarge") + "&cmedium=none&csmall=none&pageNo=1'>" + urlParams.get("clarge") + "</a>";
      if (urlParams.get("cmedium") !== "none") {
         tmp += " ＞ ";
         tmp += "<a href='${pageContext.request.contextPath}/product/productlist?clarge=" + urlParams.get("clarge") + "&cmedium=" + urlParams.get("cmedium") + "&csmall=none&pageNo=1'>" + urlParams.get("cmedium")
               + "</a>";
         if (urlParams.get("csmall") !== "none") {
            tmp += " ＞ ";
            tmp += "<a href='${pageContext.request.contextPath}/product/productlist?clarge=" + urlParams.get("clarge") + "&cmedium=" + urlParams.get("cmedium") + "&csmall=" + urlParams.get("csmall") + "&pageNo=1'>" + urlParams.get("csmall")
                  + "</a>";
         }
      }
      $("#product_category_title").html(tmp);
   </script>
      <hr />
      <div class="adaptive_wrap">
         <div id='result'></div>
         <div class="filterWrap hsDelivery1902">
            <ul class="clearfix float_left">
               <!-- 정상용 브랜드 검색 -->
               <li class="brand"><a href="javascript:void(0);" class="select"
                  onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드<span
                     class="ico_arr">arrow</span></a>
                  <div class="list" style="display: none;">
                     <ul id="category_brand_chip">

                     </ul>
                  </div></li>
               <li class="color"><a href="#" class="select"
                  onclick="GA_Event('카테고리_리스트','정렬','색상');">색상<span
                     class="ico_arr">arrow</span></a>
                  <div class="list list_item4" style="display: none;">
                     <ul class="color_chip clearfix" id="category_color_chip">
                        <li><a href="javascript:setRepProdColorCode('BEIGE')"
                           style="background: #fae7c4;"
                           onclick="GA_Event('카테고리_리스트','정렬','BEIGE');">BEIGE</a></li>
                        <li><a href="javascript:setRepProdColorCode('BLACK')"
                           style="background: #000000;"
                           onclick="GA_Event('카테고리_리스트','정렬','BLACK');">BLACK</a></li>
                        <li><a href="javascript:setRepProdColorCode('BLUE')"
                           style="background: #0f45bc;"
                           onclick="GA_Event('카테고리_리스트','정렬','BLUE');">BLUE</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('BROWN')"
                           style="background: #673915;"
                           onclick="GA_Event('카테고리_리스트','정렬','BROWN');">BROWN</a></li>
                        <li><a href="javascript:setRepProdColorCode('BURGUNDY')"
                           style="background: #741313;"
                           onclick="GA_Event('카테고리_리스트','정렬','BURGUNDY');">BURGUNDY</a></li>
                        <li><a href="javascript:setRepProdColorCode('CAMEL')"
                           style="background: #876c41;"
                           onclick="GA_Event('카테고리_리스트','정렬','CAMEL');">CAMEL</a></li>
                        <li><a href="javascript:setRepProdColorCode('GOLD')"
                           style="background: #ffc733;"
                           onclick="GA_Event('카테고리_리스트','정렬','GOLD');">GOLD</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('GREEN')"
                           style="background: #0f6f0e;"
                           onclick="GA_Event('카테고리_리스트','정렬','GREEN');">GREEN</a></li>
                        <li><a href="javascript:setRepProdColorCode('GREY')"
                           style="background: #444445;"
                           onclick="GA_Event('카테고리_리스트','정렬','GREY');">GREY</a></li>
                        <li><a href="javascript:setRepProdColorCode('IVORY')"
                           style="background: #fff8d9;"
                           onclick="GA_Event('카테고리_리스트','정렬','IVORY');">IVORY</a></li>
                        <li><a href="javascript:setRepProdColorCode('KHAKI')"
                           style="background: #465626;"
                           onclick="GA_Event('카테고리_리스트','정렬','KHAKI');">KHAKI</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('LAVENDER')"
                           style="background: #9c81bb;"
                           onclick="GA_Event('카테고리_리스트','정렬','LAVENDER');">LAVENDER</a></li>
                        <li><a href="javascript:setRepProdColorCode('METAL')"
                           style="background: #9d9fa2;"
                           onclick="GA_Event('카테고리_리스트','정렬','METAL');">METAL</a></li>
                        <li><a href="javascript:setRepProdColorCode('MINT')"
                           style="background: #95d0ab;"
                           onclick="GA_Event('카테고리_리스트','정렬','MINT');">MINT</a></li>
                        <li><a href="javascript:setRepProdColorCode('MULTI')"
                           style="background: #534741;"
                           onclick="GA_Event('카테고리_리스트','정렬','MULTI');">MULTI</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('NAVY')"
                           style="background: #061836;"
                           onclick="GA_Event('카테고리_리스트','정렬','NAVY');">NAVY</a></li>
                        <li><a href="javascript:setRepProdColorCode('OLIVE')"
                           style="background: #5d682d;"
                           onclick="GA_Event('카테고리_리스트','정렬','OLIVE');">OLIVE</a></li>
                        <li><a href="javascript:setRepProdColorCode('ORANGE')"
                           style="background: #ee6423;"
                           onclick="GA_Event('카테고리_리스트','정렬','ORANGE');">ORANGE</a></li>
                        <li><a href="javascript:setRepProdColorCode('PINK')"
                           style="background: #ea589b;"
                           onclick="GA_Event('카테고리_리스트','정렬','PINK');">PINK</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('PURPLE')"
                           style="background: #833b95;"
                           onclick="GA_Event('카테고리_리스트','정렬','PURPLE');">PURPLE</a></li>
                        <li><a href="javascript:setRepProdColorCode('RED')"
                           style="background: #ec1e24;"
                           onclick="GA_Event('카테고리_리스트','정렬','RED');">RED</a></li>
                        <li><a href="javascript:setRepProdColorCode('SILVER')"
                           style="background: #c0c0c0;"
                           onclick="GA_Event('카테고리_리스트','정렬','SILVER');">SILVER</a></li>
                        <li><a href="javascript:setRepProdColorCode('SKY')"
                           style="background: #a2d6f3;"
                           onclick="GA_Event('카테고리_리스트','정렬','SKY');">SKY</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepProdColorCode('VIOLET')"
                           style="background: #4c2b7b;"
                           onclick="GA_Event('카테고리_리스트','정렬','VIOLET');">VIOLET</a></li>
                        <li><a href="javascript:setRepProdColorCode('WHITE')"
                           class="wt" style="background: #ffffff;"
                           onclick="GA_Event('카테고리_리스트','정렬','WHITE');">WHITE</a></li>
                        <li><a href="javascript:setRepProdColorCode('YELLOW')"
                           style="background: #ffea0a;"
                           onclick="GA_Event('카테고리_리스트','정렬','YELLOW');">YELLOW</a></li>
                     </ul>
                  </div></li>
               <li class="size"><a href="#" class="select"
                  onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈<span
                     class="ico_arr">arrow</span></a>
                  <div class="list list_item3" style="display: none;">
                     <ul class="size_chip clearfix" id="category_size_chip">
                        <li><a href="javascript:setRepSizeEnumCode('XXXS')"
                           onclick="GA_Event('카테고리_리스트','정렬','XXXS');">XXXS</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXS')"
                           onclick="GA_Event('카테고리_리스트','정렬','XXS');">XXS</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepSizeEnumCode('XS')"
                           onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('S')"
                           onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('M')"
                           onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepSizeEnumCode('L')"
                           onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XL')"
                           onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXL')"
                           onclick="GA_Event('카테고리_리스트','정렬','XXL');">XXL</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepSizeEnumCode('XXXL')"
                           onclick="GA_Event('카테고리_리스트','정렬','XXXL');">XXXL</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('XXXXL')"
                           onclick="GA_Event('카테고리_리스트','정렬','XXXXL');">XXXXL</a></li>
                        <li><a href="javascript:setRepSizeEnumCode('FREE')"
                           onclick="GA_Event('카테고리_리스트','정렬','FREE');">FREE</a></li>
                        <li class="mr0"><a
                           href="javascript:setRepSizeEnumCode('ETC')"
                           onclick="GA_Event('카테고리_리스트','정렬','ETC');">ETC</a></li>
                     </ul>
                  </div></li>
               <li class="price"><a href="#" class="select"
                  onclick="GA_Event('카테고리_리스트','정렬','가격');">가격<span
                     class="ico_arr">arrow</span></a>
                  <div class="list" style="display: none;">
                     <ul>
                        <li><input type="checkbox" id="price_ck1"
                           name="price_value" value="0"
                           onclick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');"> <label
                           for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
                        <li><input type="checkbox" id="price_ck2"
                           name="price_value" value="100000"
                           onclick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');">
                           <label for="price_ck2" id="lable_ck2">￦100,000 ~
                              ￦300,000</label></li>
                        <li><input type="checkbox" id="price_ck3"
                           name="price_value" value="300000"
                           onclick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');">
                           <label for="price_ck3" id="lable_ck3">￦300,000 ~
                              ￦500,000</label></li>
                        <li><input type="checkbox" id="price_ck4"
                           name="price_value" value="500000"
                           onclick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');">
                           <label for="price_ck4" id="lable_ck4">￦500,000 ~
                              ￦1,000,000</label></li>
                        <li><input type="checkbox" id="price_ck5"
                           name="price_value" value="1000000"
                           onclick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');"> <label
                           for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
                     </ul>
                  </div></li>

               <li class="sortby"><a href="#" class="select"
                  onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span
                     class="ico_arr">arrow</span></a>
                  <div class="list" style="display: none;">
                     <ul>
                        <li><a href="javascript:setProductOrderCode(1);"
                           onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
                        <li><a href="javascript:setProductOrderCode(2);"
                           onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
                        <li><a href="javascript:setProductOrderCode(3);"
                           onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
                        <li><a href="javascript:setProductOrderCode(4);"
                           onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
                        <li><a href="javascript:setProductOrderCode(5);"
                           onclick="GA_Event('카테고리_리스트','정렬','이름순');">이름순</a></li>
                     </ul>
                  </div></li>


               <li class="btn"><a href="javascript:reset();"
                  onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a
                  href="javascript:void(0);"
                  onclick="GA_Event('카테고리_리스트','정렬','적용'); getCheckboxValue()"
                  id="submit">적용</a></li>
            </ul>
            <div class="items_count float_right">
               <span class="num">${totalRows}</span> <span>전체</span>
            </div>
         </div>

         <script>
         
          </script>

         <div class="items_list cate_item4" id="listContent"
            style="display: block;">
            <ul class="clearfix" id="listBody">

            </ul>
         </div>
      </div>
      <div id="page-container" class="paging" style="display: block;">
         <a class="prev2"
            href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=1">처음페이지로
            이동</a>
         <c:if test="${page.groupNo > 1}">
            <a class="prev"
               href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.startPageNo-1}">이전페이지로
               이동</a>
         </c:if>
         <span class="num"> <c:forEach var="i"
               begin="${page.startPageNo}" end="${page.endPageNo}">
               <c:if test="${page.pageNo == 1}">
                  <a class="class=" pageBtn on " pagenum=${i+1
                     }
            href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${i}">${i}</a>
               </c:if>
               <c:if test="${page.pageNo > 1}">
                  <a class="pageBtn " pagenum=${i+1
                     }
            href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${i}">${i}</a>
               </c:if>
            </c:forEach>
         </span>
         <c:if test="${page.groupNo < page.totalGroupNo}">
            <a class="next"
               href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.endPageNo+1}">다음
               페이지로 이동</a>
         </c:if>

         <a class="next2"
            href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.totalPageNo}">마지막
            페이지로 이동</a>
      </div>
      <script>
      $(document).ready(function(){        
            //라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터       
            $('input[type="checkbox"][name="price_value"]').click(function(){          
               //클릭 이벤트 발생한 요소가 체크 상태인 경우            
               if ($(this).prop('checked')) 
               {              
               //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정        
               $('input[type="checkbox"][name="price_value"]').prop('checked', false);
                   $(this).prop('checked', true);       
               }
         });
      });

   var product_brand;
   $(window).ready(function () {
      $.ajax({
         url: "${pageContext.request.contextPath}/product/filterProductBrandList?clarge=" + urlParams.get("clarge")
               + "&cmedium=" + urlParams.get("cmedium")
               + "&csmall=" + urlParams.get("csmall")
               + "&pageNo=" + urlParams.get("pageNo")
      }).done((data) => {
         brand_array = data.brands;
         console.log(brand_array);
         let html_tmp = "";
         for (let i = 0; i < brand_array.length; i++) {
            let brand = brand_array.at(i);
            let tmp = "";
            tmp += "<li>";
            tmp += "   <input type='checkbox' id='brand_ck" + String(i+1) + "' name='brand_value' value='" + brand.bname;
            tmp +=          "' onclick='GA_Event('카테고리_리스트', '정렬','" + brand.bname + "')'; setOnlineShopBrand(this, 'BR" + String(i+1) + "');>";
            tmp += "       <label for='branck_ck'" + String(i+1) + ">" + brand.bname + "</label>";
            tmp += "</li>";
            html_tmp += tmp;
         }
         $("#category_brand_chip").html(html_tmp);
      });
   });
   var post_data = new Object();
     post_data.brands = {};
     post_data.color = 'empty';
     post_data.price = 1;
     post_data.orderby = '0';
     post_data.size = 'empty';
   
     let product_array;
   function getCheckboxValue()  {
       post_data.brands = {};
        const query_brand = "input[name='brand_value']:checked";
        const query_price = "input[name='price_value']:checked";
        const selected_brand = 
            document.querySelectorAll(query_brand);
        
        const selected_price = 
            document.querySelectorAll(query_price);
        
        var pdata = new Array();
          selected_brand.forEach((el) => {
             pdata.push(el.value)
          });
            post_data.brands = pdata;
          selected_price.forEach((el) => {
            post_data.price = el.value;
          });
          console.log(post_data);
          console.log(post_data);
        
          var u = "${pageContext.request.contextPath}/product/getFilterList?clarge=" + urlParams.get("clarge")
           + "&cmedium=" + urlParams.get("cmedium")
           + "&csmall=" + urlParams.get("csmall")
           + "&pageNo=" + urlParams.get("pageNo")
           + "&brandList=";
           for(let i=0;i<post_data.brands.length;i++){
              u += post_data.brands[i];
              if ( i == post_data.brands.length-1){
                 break;
              }else{
                 u += ", ";
              }
           };
           u += "&pcolor=" + post_data.color;
           u += "&orderby=" + post_data.orderby;
           u += "&pprice=" + post_data.price;
           u += "&psize=" + post_data.size;
        
        
        
           $(function () {
              $.ajax({
                 url: u
                 }).done((data) => {
                 console.log("안되는 부분");
                 console.log(data);
                 product_array = data.products;
                 html_tmp = "";
                 if (product_array.length == 0){
                    let empty = "";
                    empty += "<div class='sh_result none' id='searchResult_None' style='display: block;'>조건에 맞는 상품 정보가 없습니다.</div>"
                    $("#listBody").html(empty);         
                 }
                 else{
                    for (let i = 0; i < product_array.length; i++) {
                   let product = product_array.at(i);
                   let product_color = product.colors;
                   //console.log(product_color);
                   let product_info = product.product;
                   //console.log(product_info);
                   let tmp = "";
                   if (i % 4 == 3){
                      tmp += "<li class='mr1m'>";
                   }
                   else if (i % 4 == 0 && i != 0) {
                      tmp += "<li style='clear: both;'>";
                   }
                   else{
                      tmp += "<li>";
                   }
                   tmp +=       "<div class='item_box'>";
                   tmp +=          "<a class='item_info1' id='product_link" + i + "' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
                   tmp +=             "<span class='item_img' id='product_img"+i+ "'>";
                   tmp +=                "<img class='respon_image' src='" + product_color.at(product_array.at(i)["state"])["imgurl1"] + "' alt='' />";
                   tmp +=                "<img class='respon_image on' style='display: none; opacity: 1;' src='" + product_color.at(product_array.at(i)["state"])["imgurl2"] + "' alt='' />";
                   tmp +=             "</span>";
                   tmp +=            "<span class='item_size' id='itemsize_"+i +"' style='display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;'>"; 
                   tmp +=             "<div id='"+ product_array.at(i).product.pcode +"'>";
                   for (let j = 0; j< product_array.at(i).product.size.length; j++){
                      tmp += "<span>" + product_array.at(i).product.size.at(j) + "</span>"
                   } 
                   tmp += "</div>"
                   tmp +=             "</span>";
                   tmp +=          "</a>";
                   tmp +=          "<a class='item_info2' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
                   tmp +=             "<span class='brand'>"+product_info.bname+"</span>";
                   tmp +=            "<span class='title'>"+product_info.pname+"</span>";
                   tmp +=            "<span class='price'>￦"+product_info.pprice.toLocaleString()+"원</span>";
                   tmp +=         "</a>";
                   
                   tmp +=         "<div class='color_more_wrap'>";
                   for (let j = 0; j < product_color.length; j++) {
                      tmp +=    "<a class='cl wt' href='javascript:changeColor(" + i + ", " + j + ")' style='background: url(\"";
                      tmp +=       product_color.at(j)['colorurl'];
                      tmp +=  "\");'></a>"; 
                   }
                   tmp +=         "</div>";
                   tmp +=       "</div>";
                   tmp += "</li>";
                   
                   html_tmp += tmp;
                }
                $("#listBody").html(html_tmp);
                 }
              });
           });
        }
   
     function setRepProdColorCode(color){
        post_data.color = color;
     }
     function setProductOrderCode(number){
        post_data.orderby = number;
     }
     function setRepSizeEnumCode(size){
        post_data.size = size;
     }
     function reset(){
        post_data.brands = {};
        post_data.color = 'empty';
        post_data.price = 1;
        post_data.orderby = '0';
        post_data.size = 'empty';
        // 초기화할 checkbox 선택
        const brand_checkboxes 
             = document.getElementsByName('brand_value');
        
        // 체크박스 목록을 순회하며 checked 값을 초기화
        brand_checkboxes.forEach((checkbox) => {
          checkbox.checked = false;
        })
        // 초기화할 checkbox 선택
        const price_checkboxes 
             = document.getElementsByName('price_value');
        
        // 체크박스 목록을 순회하며 checked 값을 초기화
        price_checkboxes.forEach((checkbox) => {
          checkbox.checked = false;
        })
        $(function () {
            $.ajax({
               url: "${pageContext.request.contextPath}/product/getProductList?clarge=" + urlParams.get("clarge")
                     + "&cmedium=" + urlParams.get("cmedium")
                     + "&csmall=" + urlParams.get("csmall")
                     + "&pageNo=" + urlParams.get("pageNo")
            }).done((data) => {
            product_array = data.products;
            console.log(product_array);
            let html_tmp = "";
            for (let i = 0; i < product_array.length; i++) {
               let product = product_array.at(i);
               let product_color = product.colors;
               //console.log(product_color);
               let product_info = product.product;
               //console.log(product_info);
               let tmp = "";
               if (i % 4 == 3){
                  tmp += "<li class='mr1m'>";
               }
               else if (i % 4 == 0 && i != 0) {
                  tmp += "<li style='clear: both;'>";
               }
               else{
                  tmp += "<li>";
                  
               }
               tmp +=       "<div class='item_box'>";
               tmp +=          "<a class='item_info1' id='product_link" + i + "' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
               tmp +=             "<span class='item_img' id='product_img"+i+ "'>";
               tmp +=                "<img class='respon_image' src='" + product_color.at(product_array.at(i)["state"])["imgurl1"] + "' alt='' />";
               tmp +=                "<img class='respon_image on' style='display: none; opacity: 1;' src='" + product_color.at(product_array.at(i)["state"])["imgurl2"] + "' alt='' />";
               tmp +=             "</span>";
               tmp +=            "<span class='item_size' id='itemsize_"+i +"' style='display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;'>"; 
               tmp +=             "<div id='"+ product_array.at(i).product.pcode +"'>";
               
               for (let j = 0; j< product_array.at(i).product.size.length; j++){
                  tmp += "<span>" + product_array.at(i).product.size.at(j) + "</span>"
               } 
               tmp += "</div>"
               tmp +=             "</span>";
               tmp +=          "</a>";
               tmp +=          "<a class='item_info2' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
               tmp +=             "<span class='brand'>"+product_info.bname+"</span>";
               tmp +=            "<span class='title'>"+product_info.pname+"</span>";
               tmp +=            "<span class='price'>￦"+product_info.pprice.toLocaleString()+"원</span>";
               tmp +=         "</a>";
               
               tmp +=         "<div class='color_more_wrap'>";
               for (let j = 0; j < product_color.length; j++) {
                  tmp +=    "<a class='cl wt' href='javascript:changeColor(" + i + ", " + j + ")' style='background: url(\"";
                  tmp +=       product_color.at(j)['colorurl'];
                  tmp +=  "\");'></a>"; 
               }
               tmp +=         "</div>";
               tmp +=       "</div>";
               tmp += "</li>";
               
               html_tmp += tmp;
            }
            $("#listBody").html(html_tmp);
            });
         });
      }
      $(window).ready(function () {
         $.ajax({
            url: "${pageContext.request.contextPath}/product/getProductList?clarge=" + urlParams.get("clarge")
                  + "&cmedium=" + urlParams.get("cmedium")
                  + "&csmall=" + urlParams.get("csmall")
                  + "&pageNo=" + urlParams.get("pageNo")
         }).done((data) => {
            product_array = data.products;
            console.log("product_array");
            console.log(product_array);
            let html_tmp = "";
            for (let i = 0; i < product_array.length; i++) {
               let product = product_array.at(i);
               let product_color = product.colors;
               //console.log(product_color);
               let product_info = product.product;
               //console.log(product_info);
               let tmp = "";
               if (i % 4 == 3){
                  tmp += "<li class='mr1m'>";
               }
               else if (i % 4 == 0 && i != 0) {
                  tmp += "<li style='clear: both;'>";
               }
               else{
                  tmp += "<li>";
               }
               tmp +=       "<div class='item_box'>";
               tmp +=          "<a class='item_info1' id='product_link" + i + "' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
               tmp +=             "<span class='item_img' id='product_img"+i+ "'>";
               tmp +=                "<img class='respon_image' src='" + product_color.at(product_array.at(i)["state"])["imgurl1"] + "' alt='' />";
               tmp +=                "<img class='respon_image on' style='display: none; opacity: 1;' src='" + product_color.at(product_array.at(i)["state"])["imgurl2"] + "' alt='' />";
               tmp +=             "</span>";
               tmp +=            "<span class='item_size' id='itemsize_"+i +"' style='display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;'>"; 
               tmp +=             "<div id='"+ product_array.at(i).product.pcode +"'>";
               
               for (let j = 0; j< product_array.at(i).product.size.length; j++){
                  tmp += "<span>" + product_array.at(i).product.size.at(j) + "</span>"
               } 
               tmp += "</div>"
               tmp +=             "</span>";
               tmp +=          "</a>";
               
               tmp +=          "<a class='item_info2' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
               tmp +=             "<span class='brand'>"+product_info.bname+"</span>";
               tmp +=            "<span class='title'>"+product_info.pname+"</span>";
               tmp +=            "<span class='price'>￦"+product_info.pprice.toLocaleString()+"원</span>";
               tmp +=         "</a>";
               
               tmp +=         "<div class='color_more_wrap'>";
               for (let j = 0; j < product_color.length; j++) {
                  tmp +=    "<a class='cl wt' href='javascript:changeColor(" + i + ", " + j + ")' style='background: url(\"";
                  tmp +=       product_color.at(j)['colorurl'];
                  tmp +=  "\");'></a>"; 
               }
               tmp +=         "</div>";
               tmp +=       "</div>";
               tmp += "</li>";
               
               html_tmp += tmp;
            }
            $("#listBody").html(html_tmp);
         });
      });
      
      function changeColor(product_idx, color_idx) {
         console.log(product_idx);
         console.log(color_idx);

         product_array.at(product_idx)["state"] = color_idx;
         let color_img = product_array.at(product_idx).colors.at(color_idx);
         console.log("여기도 안되네?");
         console.log(product_array.at(product_idx).colors.at(color_idx));
         console.log("color_img");
         console.log(color_img);
         let p_color_id = "#product_img" + product_idx;
         let p_link = "#product_link" + product_idx;
         console.log(p_link);
         //2022.10.19.수 수정사항
         let tmp = "";
            tmp += "<img class='respon_image' src='" + color_img["imgurl1"] + "' alt='' />";
            tmp += "<img class='respon_image on' style='display: none; opacity: 1;' src='" + color_img["imgurl2"] + "' alt='' />";
         console.log(tmp);
         $(p_link).attr("href", "productdetail?pcode=" + product_array.at(product_idx).product.pcode + "&pcolor=" + product_array.at(product_idx).colors.at(product_array.at(product_idx).state).pcolor);
         $(p_color_id).html(tmp);
      }
   </script>
   </div>

   <%@ include file="/WEB-INF/views/common/footer.jsp"%>