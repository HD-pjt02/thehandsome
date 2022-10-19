<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
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
								<li><input type="checkbox" id="brand_ck1"
									onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label
									for="brand_ck1" id="BR01">TIME</label></li>
								<li><input type="checkbox" id="brand_ck2"
									onclick="GA_Event('카테고리_리스트','정렬','MINE');setOnlineShopBrand(this, 'BR02');"><label
									for="brand_ck2" id="BR02">MINE</label></li>
								<li><input type="checkbox" id="brand_ck3"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN COLLECTION');setOnlineShopBrand(this, 'BR19');"><label
									for="brand_ck3" id="BR19">LANVIN COLLECTION</label></li>
								<li><input type="checkbox" id="brand_ck4"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN BLANC');setOnlineShopBrand(this, 'BR63');"><label
									for="brand_ck4" id="BR63">LANVIN BLANC</label></li>
								<li><input type="checkbox" id="brand_ck5"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM');setOnlineShopBrand(this, 'BR03');"><label
									for="brand_ck5" id="BR03">SYSTEM</label></li>
								<li><input type="checkbox" id="brand_ck6"
									onclick="GA_Event('카테고리_리스트','정렬','SJSJ');setOnlineShopBrand(this, 'BR04');"><label
									for="brand_ck6" id="BR04">SJSJ</label></li>
								<li><input type="checkbox" id="brand_ck7"
									onclick="GA_Event('카테고리_리스트','정렬','TIME HOMME');setOnlineShopBrand(this, 'BR06');"><label
									for="brand_ck7" id="BR06">TIME HOMME</label></li>
								<li><input type="checkbox" id="brand_ck8"
									onclick="GA_Event('카테고리_리스트','정렬','SYSTEM HOMME');setOnlineShopBrand(this, 'BR07');"><label
									for="brand_ck8" id="BR07">SYSTEM HOMME</label></li>
								<li><input type="checkbox" id="brand_ck9"
									onclick="GA_Event('카테고리_리스트','정렬','the CASHMERE');setOnlineShopBrand(this, 'BR08');"><label
									for="brand_ck9" id="BR08">the CASHMERE</label></li>
								<li><input type="checkbox" id="brand_ck10"
									onclick="GA_Event('카테고리_리스트','정렬','LÄTT');setOnlineShopBrand(this, 'BR31');"><label
									for="brand_ck10" id="BR31">LÄTT</label></li>
								<li><input type="checkbox" id="brand_ck11"
									onclick="GA_Event('카테고리_리스트','정렬','OBZEE');setOnlineShopBrand(this, 'BR43');"><label
									for="brand_ck11" id="BR43">OBZEE</label></li>
								<li><input type="checkbox" id="brand_ck12"
									onclick="GA_Event('카테고리_리스트','정렬','O&amp;#039;2nd');setOnlineShopBrand(this, 'BR45');"><label
									for="brand_ck12" id="BR45">O'2nd</label></li>
								<li><input type="checkbox" id="brand_ck13"
									onclick="GA_Event('카테고리_리스트','정렬','CLUB MONACO');setOnlineShopBrand(this, 'BR44');"><label
									for="brand_ck13" id="BR44">CLUB MONACO</label></li>
								<li><input type="checkbox" id="brand_ck14"
									onclick="GA_Event('카테고리_리스트','정렬','oera');setOnlineShopBrand(this, 'BR61');"><label
									for="brand_ck14" id="BR61">oera</label></li>
								<li><input type="checkbox" id="brand_ck15"
									onclick="GA_Event('카테고리_리스트','정렬','OUR LEGACY');setOnlineShopBrand(this, 'BR64');"><label
									for="brand_ck15" id="BR64">OUR LEGACY</label></li>
								<li><input type="checkbox" id="brand_ck16"
									onclick="GA_Event('카테고리_리스트','정렬','BALLY');setOnlineShopBrand(this, 'BR21');"><label
									for="brand_ck16" id="BR21">BALLY</label></li>
								<li><input type="checkbox" id="brand_ck17"
									onclick="GA_Event('카테고리_리스트','정렬','LANVIN PARIS');setOnlineShopBrand(this, 'BR20');"><label
									for="brand_ck17" id="BR20">LANVIN PARIS</label></li>
								<li><input type="checkbox" id="brand_ck18"
									onclick="GA_Event('카테고리_리스트','정렬','3.1 Phillip Lim');setOnlineShopBrand(this, 'BR41');"><label
									for="brand_ck18" id="BR41">3.1 Phillip Lim</label></li>
								<li><input type="checkbox" id="brand_ck19"
									onclick="GA_Event('카테고리_리스트','정렬','ROCHAS');setOnlineShopBrand(this, 'BR37');"><label
									for="brand_ck19" id="BR37">ROCHAS</label></li>
								<li><input type="checkbox" id="brand_ck20"
									onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label
									for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
								<li><input type="checkbox" id="brand_ck21"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM THE STORE');setOnlineShopBrand(this, 'BR35');"><label
									for="brand_ck21" id="BR35">FOURM THE STORE</label></li>
								<li><input type="checkbox" id="brand_ck22"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM STUDIO');setOnlineShopBrand(this, 'BR30');"><label
									for="brand_ck22" id="BR30">FOURM STUDIO</label></li>
								<li><input type="checkbox" id="brand_ck23"
									onclick="GA_Event('카테고리_리스트','정렬','FOURM MEN&amp;#039;S LOUNGE');setOnlineShopBrand(this, 'BR32');"><label
									for="brand_ck23" id="BR32">FOURM MEN'S LOUNGE</label></li>
								<li><input type="checkbox" id="brand_ck24"
									onclick="GA_Event('카테고리_리스트','정렬','MUE');setOnlineShopBrand(this, 'BR16');"><label
									for="brand_ck24" id="BR16">MUE</label></li>
								<li><input type="checkbox" id="brand_ck25"
									onclick="GA_Event('카테고리_리스트','정렬','H : SCENE');setOnlineShopBrand(this, 'BR47');"><label
									for="brand_ck25" id="BR47">H : SCENE</label></li>
								<li><input type="checkbox" id="brand_ck26"
									onclick="GA_Event('카테고리_리스트','정렬','Liquides Perfume Bar');setOnlineShopBrand(this, 'BR62');"><label
									for="brand_ck26" id="BR62">Liquides Perfume Bar</label></li>
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
									onclick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');setPriceOrderCode(this, '1')">
									<label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
								<li><input type="checkbox" id="price_ck2"
									onclick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');setPriceOrderCode(this, '2')">
									<label for="price_ck2" id="lable_ck2">￦100,000 ~
										￦300,000</label></li>
								<li><input type="checkbox" id="price_ck3"
									onclick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');setPriceOrderCode(this, '3')">
									<label for="price_ck3" id="lable_ck3">￦300,000 ~
										￦500,000</label></li>
								<li><input type="checkbox" id="price_ck4"
									onclick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');setPriceOrderCode(this, '4')">
									<label for="price_ck4" id="lable_ck4">￦500,000 ~
										￦1,000,000</label></li>
								<li><input type="checkbox" id="price_ck5"
									onclick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');setPriceOrderCode(this, '5')">
									<label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
							</ul>
						</div></li>

					<li class="sortby"><a href="#" class="select"
						onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span
							class="current">신상품</span><span class="ico_arr">arrow</span></a>
						<div class="list" style="display: none;">
							<ul>
								<li><a href="javascript:setProductOrderCode('NEW', '신상품');"
									onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
								<li><a
									href="javascript:setProductOrderCode('SALES', '판매순');"
									onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
								<li><a
									href="javascript:setProductOrderCode('HIGH', '고가순');"
									onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
								<li><a href="javascript:setProductOrderCode('LOW', '저가순');"
									onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
								<li><a
									href="javascript:setProductOrderCode('REVIEW', '평점순');"
									onclick="GA_Event('카테고리_리스트','정렬','상품평순');">평점순</a></li>
							</ul>
						</div></li>

					<li class="prd_list_filter1810 delivery" style="display: none">
						<!-- 딜리버리 190219 -->
						<div class="input_wrap">
							<input type="checkbox" id="checkDelivery" name="checkDelivery"
								onclick="sethsDeliveryCode();GA_Event('카테고리_리스트','정렬','한섬딜리버리');"><label
								for="checkDelivery" id="hsDelivery">한섬딜리버리</label>
						</div> <img
						src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png"
						alt="한섬딜리버리란?" class="tlt" onmouseover="onMouseOverRecommend();"
						onmouseout="onMouseOutRecommend();">
						<div class="rmd_pb_popup" style="display: none;">
							<p>4PM, 퀵배송이 가능합니다.</p>
							<span class="box_arr"></span>
						</div>
					</li>
					<li class="btn"><a href="javascript:reset();"
						onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a
						href="javascript:gubunSearch(1);"
						onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
				</ul>
				<div class="items_count float_right">
					<span class="num">257</span> <span>전체</span>
				</div>
			</div>
			</form>

			<script>
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
					tmp += "	<input type='checkbox' id='brand_ck" + String(i+1) + "' name='brand_value' value='" + brand.bname + "'>";
					tmp += "    	<label for='branck_ck'" + String(i+1) + ">" + brand.bname + "</label>";
					tmp += "</li>";
					html_tmp += tmp;
				}
				$("#brand-list-wrapper").html(html_tmp);
			});
		});
		function getCheckboxValue()  {
			  // 선택된 목록 가져오기
			  const query_brand = "input[name='brand_value']:checked";
			  const query_price = "input[name='price_value']:checked";
			  const selected_brand = 
			      document.querySelectorAll(query_brand);
			  
			  const selected_price = 
			      document.querySelectorAll(query_price);
			  
			  // 선택된 목록에서 value 찾기
			  let result = '';
			  selected_brand.forEach((el) => {
			    result += el.value + ' ';
			  });
			  selected_price.forEach((el) => {
			    result += el.value + ' ';
			  });
			  
			  // 출력
			  document.getElementById('result').innerText
			    = result;
			}
		</script>
			<div class="items_list cate_item4" id="listContent"
				style="display: block;">
				<ul class="clearfix" id="listBody">

				</ul>
			</div>
		</div>
		<div id="page-container" class="paging">
			<a
				href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=1">처음
				페이지로 이동</a>
			<c:if test="${page.groupNo > 1}">
				<a class="btn btn-light btn-sm"
					href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.startPageNo-1}">이전
					페이지로 이동</a>
			</c:if>
			<c:forEach var="i" begin="${page.startPageNo}"
				end="${page.endPageNo}">
				<c:if test="${page.pageNo != i}">
					<a class="btn btn-light btn-sm"
						href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${i}">${i}</a>
				</c:if>
				<c:if test="${page.pageNo == i}">
					<a class="btn btn-outline-dark btn-sm"
						href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${i}">${i}</a>
				</c:if>
			</c:forEach>
			<c:if test="${page.groupNo < page.totalGroupNo}">
				<a class=""
					href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.endPageNo+1}">다음
					페이지로 이동</a>
			</c:if>

			<a class=""
				href="productlist?clarge=${category.clarge}&cmedium=${category.cmedium}&csmall=${category.csmall}&pageNo=${page.totalPageNo}">마지막
				페이지로 이동</a>
		</div>
		<script>
		let product_array;
		
		$(window).ready(function () {
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
					tmp += 		"<div class='item_box'>";
					tmp += 			"<a class='item_info1' id='product_link'" + i + " href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
					tmp += 				"<span class='item_img' id='product_img'"+i+ ">";
					tmp += 					"<img class='respon_image' src='" + product_color.at(product_array.at(i)["state"])["imgurl1"] + "' alt='' />";
					tmp += 					"<img class='respon_image on' style='display: none; opacity: 1;' src='" + product_color.at(product_array.at(i)["state"])["imgurl2"] + "' alt='' />";
					tmp += 				"</span>";
					tmp +=				"<span class='item_size' id='itemsize_"+i +"' style='display: none; height: 20px; padding-top: 15px; margin-top: 0px; padding-bottom: 15px; margin-bottom: 0px;'>"; 
					tmp += 				"<div id='"+ product_array.at(i).product.pcode +"'> <span>82</span><span>88</span></div> ";
					tmp += 				"</span>";
					tmp += 			"</a>";
					
					tmp += 			"<a class='item_info2' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
					tmp += 				"<span class='brand'>"+product_info.bname+"</span>";
					tmp +=				"<span class='title'>"+product_info.pname+"</span>";
					tmp +=				"<span class='price'>￦"+product_info.pprice.toLocaleString()+"원</span>";
					tmp +=			"</a>";
					
					tmp +=			"<div class='color_more_wrap'>";
					for (let j = 0; j < product_color.length; j++) {
						tmp += 	"<a class='cl wt' href='javascript:changeColor(" + i + ", " + j + ")' style='background: url(\"";
						tmp += 		product_color.at(j)['colorurl'];
						tmp +=  "\");'></a>"; 
					}
					tmp +=			"</div>";
					tmp += 		"</div>";
					tmp += "</li>";
					
					html_tmp += tmp;
				}
				$("#listBody").html(html_tmp);
			});
		});
		function changeColor(product_idx, color_idx) {
			product_array.at(product_idx)["state"] = color_idx;
			let color_img = product_array.at(product_idx).colors.at(color_idx);
			console.log(color_img);
			let p_color_id = "#product_img" + product_idx;
			let p_link = "#product_link" + product_idx;
			//2022.10.19.수 수정사항
			let tmp = "";
				tmp += "<img src='" + color_img["imgurl1"] + "' alt='' />";
				tmp += "<img src='" + color_img["imgurl2"] + "' alt='' />";
			$(p_link).attr("href", "productdetail?pcode=" + product_array.at(product_idx).product.pcode + "&pcolor=" + product_array.at(product_idx).colors.at(product_array.at(product_idx).state).pcolor);
			console.log($(p_link));
			$(p_color_id).html(tmp);
		}
	</script>
	</div>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>