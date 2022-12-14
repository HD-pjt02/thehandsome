<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<style>
.detail-title {
	padding-left: 0;
	width: 100px;
}
a:hover {
	color: black;
	text-decoration: none;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-6">
			<img src="${productimage1}" alt="" style="width: inherit;"> <img
				src="${productimage2}" alt="" style="width: inherit;"> <img
				src="${productimage3}" alt="" style="width: inherit;">
				<img src="${productimage4}" alt="" style="width: inherit;">
				<img src="${productimage5}" alt="" style="width: inherit;">
				<img src="${productimage6}" alt="" style="width: inherit;">
				<img src="${productimage7}" alt="" style="width: inherit;">
		</div>
		<div class="col-6">
			<div class="toast" data-autohide="false"
				style="z-index: 1; width: 250px; position: fixed; right: 50px; bottom: 50px">
				<div class="toast-body text-center">
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
					지금 ${viewer}명의 고객님이<br> 이 제품을 함께 보고 있습니다.
				</div>
			</div>
			<script>
				$(window).ready(function(){
				  $('.toast').toast('show');
				});
			</script>
			<table class="table">
				<tr>
					<td class="border-bottom">
						<h5>${product.bname}</h5>
						<h3>${product.pname}</h3>
						<h5>
							<fmt:formatNumber value="${product.pprice}" />
							원
						</h5>
						<p>상품번호 : ${product.pcode}</p>
						<div class="bg-light rounded p-3">"${product.pcontent}"</div>
					</td>

				</tr>
				<tr>
					<td class="border-bottom d-flex justify-content-between"><span>더보기</span>
						<span>+</span></td>
				</tr>
				<tr>
					<td class="border-bottom">
						<div>
							<span class="detail-title"><small>한섬마일리지</small></span><span><small>
									<fmt:formatNumber value="${mileage}" /> M (5%)
							</small></span>
						</div>
						<div>
							<span class="detail-title"><small>H.Point</small></span><span><small>
									<fmt:formatNumber value="${hpoint}" />P (0.1%)
							</small></span>
						</div>
						<div>
							<span class="detail-title"><small>배송비</small></span><span><small>
									30,000원 이상 무료배송 (실결제 기준)</small></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="border-bottom">
						<p>
							<small class="detail-title">색상</small>
							<c:forEach var="color" items="${colors}">
								<a
									href="productdetail?pcode=${product.pcode}&pcolor=${color.pcolor}">
									<img src="${color.colorurl}"
									style="margin: 0px 2px; width: 26px; height: 26px;" />
								</a>
							</c:forEach>
						</p>
						<p>
							<small class="detail-title">사이즈</small>
							<c:forEach var="size" items="${sizes}">
								<input type="button" class="btn btn-light btn-sm border"
									onclick="checkStock(this, ${product.pprice})"
									value="${size.psize}" />
							</c:forEach>
						</p>
						<p>
							<small class="detail-title">수량</small> <input
								id="product-amount-input" class="mb-2 text-center" type="number"
								size="1" style="width: 50px;" value="1"
								onchange="changeAmount(this, ${product.pprice})" max="100" min="1" />
						</p>
						<p id="product-stock-amount"></p> <script>
							const url = new URL(window.location.href);
							const urlParams = url.searchParams;
							let current_size = '0';
							
							function changeAmount(amount, product_price) {
								if (typeof(amount) !== 'number') {
									amount = amount.value;
								}
								let tmp = product_price * amount;
								tmp = tmp.toLocaleString();
								$("#product-total-price").html(tmp + "원");
							}
							
							function checkStock(obj, product_price) {
								current_size = obj.value;
								
								$.ajax({
									url: "/product/getProductStock",
									data: {
										"pcode" : "${product.pcode}",
										"pcolor" : urlParams.get("pcolor"),
										"size" : obj.value
									}
								}).done((data) => {
									let p_amount = Math.min($("#product-amount-input").val(), data.pamount);
									$("#product-amount-input").val(p_amount);
									changeAmount(p_amount, product_price);
									$("#product-amount-input").attr("max", data.amount);
									$("#product-stock-amount").html("<small class='detail-title' style='color: red;'>남은 수량 <span>" + data.pamount + "개</span></small>");
								});
							}
						</script>
					</td>
				</tr>
				<tr>
					<td>
						<div class="d-flex justify-content-between mb-4">
							<h6>총 합계</h6>
							<h5 id="product-total-price">
								<fmt:formatNumber value="${product.pprice}" />
								원
							</h5>
						</div>

						<div class="d-flex justify-content-between">
							<button class="btn btn-white btn-lg col-2">♡</button>
							<button onclick="addShoppingBag()"
								class="btn btn-outline-secondary btn-lg col-5">쇼핑백 담기</button>
							<button onclick="addShoppingBagForDirectOrder()"
								class="btn btn-secondary btn-lg col-5">바로주문</button>
						</div> <script>
									function addShoppingBag() {
										if ($("#product-amount-input").val() > 0) {
											location.href = "insertToShoppingbag?sbproductcolor="
													+ urlParams.get("pcolor")
													+ "&sbproductsize=" + current_size
													+ "&sbproductamount=" + $("#product-amount-input").val()
													+ "&pcode=" + urlParams.get("pcode");
										} else {
											alert("상품의 수량을 확인해주세요.");
										}
									}
									
									function addShoppingBagForDirectOrder() {
										if ($("#product-amount-input").val() > 0) {
											location.href = "insertToShoppingbagForDirectOrder?sbproductcolor="
												+ urlParams.get("pcolor")
												+ "&sbproductsize=" + current_size
												+ "&sbproductamount=" + $("#product-amount-input").val()
												+ "&pcode=" + urlParams.get("pcode");
										} else {
											alert("상품의 수량을 확인해주세요.");
										}
									}
						</script>
					</td>
				</tr>
				<tr>
					<td class="border-bottom d-flex justify-content-between"><span>상품상세정보</span>
						<span>+</span></td>
				</tr>
				<tr>
					<td class="border-bottom d-flex justify-content-between"><span>실측사이즈</span>
						<span>+</span></td>
				</tr>
				<tr>
					<td class="border-bottom d-flex justify-content-between"><span>배송
							및 교환/반품</span> <span>+</span></td>
				</tr>
				<tr>
					<td class="border-bottom d-flex justify-content-between"><span>상품평(0)</span>
						<span>+</span></td>
				</tr>
			</table>
			<script>			
				$(window).on("beforeunload", exitPage);
				
				function exitPage(){
					$.ajax({
						url: "/product/exitPage",
						data: {
							"pcode" : "${product.pcode}"
						}
					})
				}
			</script>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>