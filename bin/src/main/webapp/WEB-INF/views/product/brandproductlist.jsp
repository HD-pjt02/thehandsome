<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<style>
ul {
	list-style: none;
	padding: 0;
}
.container {
	padding: 0;
}
a {
	color: black;
	text-decoration: none;
}
a:link {
	color: black;
	text-decoration: none;
}
a:visited {
	color: black;
	text-decoration: none;
}
a:hover {
	color: black;
	text-decoration: none;
}
.cell {
	float: left;
	box-sizing: border-box;
}
.product-list .cell {
	width: 20%;
	padding-left: 10px;
	padding-right: 10px;
	margin-top: 20px;
}
.img-box>img {
	display: block;
	width: 100%;
	cursor: pointer;
}
div .product-color {
	text-align: center;
}
div .product-color>a>img {
	margin: 0px 2px;
	width: 18px;
	height: 18px;
}
@media {
	.product-list .row .cell {
		width: calc(100%/ 3);
	}
}
.product-list .row .cell .brand-name, .product-name, .product-price {
	text-align: center;
	font-size: 12px;
}
.imgswap img:last-child {
	display: none
}
.imgswap:hover img:first-child {
	display: none
}
.imgswap:hover img:last-child {
	display: inherit
}
.btn-group button {
	cursor: pointer;
	float: left;
}
.btn-group button:not(:last-child) {
	border-right: none;
}
.dropdown-menu {
	height: auto;
	max-height: 200px;
	width: 250px;
	overflow-x: hidden;
}
input[id="cb1"] {
	width: 22px;
	height: 22px;
	margin: 2px 2px;
	cursor: pointer;
	border-radius: 5px;
	border-color: white;
}
</style>
</head>
<body>

	<div class="container">
		<p class="card-text bg m-4"
			style="transform: rotate(0); text-align: center; font-size: 20px;"
			id="product_brand_title"></p>
	</div>
	<script>
      //현재 페이지의 URL을 가져오기
      const url = new URL(window.location.href);
      //searchParams는메소드로 접근
      const urlParams = url.searchParams;
      let tmp = "<br><a href='${pageContext.request.contextPath}/product/brandproductlist?bname=none&pageNo=1'>BRAND</a>";
      
         if (urlParams.get("bname") !== "none") {
            tmp += " ＞ ";
            tmp += "<a href='${pageContext.request.contextPath}/product/brandproductlist?bname=" + encodeURI(urlParams.get("bname")) + "&pageNo=1'>" + urlParams.get("bname") + "</a>";
         }
      $("#product_brand_title").html(tmp);
   </script>
	<hr />
	<div class="container">
		<div style="font-size: 15px; text-align: center; align-self: center;">
			총 <span style="color: #3D59DB; font-weight: bold">${totalRows}건</span>의 상품이
			검색되었습니다.
		</div>
	</div>
	<div class="container product-list">
		<div class="list">
			<ul class="row" id="product-list-wrapper">

			</ul>
		</div>
	</div>
	<div id="page-container" class="container text-center mb-3">
		<a href="brandproductlist?bname=${brand.bname}&pageNo=1">처음</a>
		<c:if test="${page.groupNo > 1}">

			<a class="btn btn-light btn-sm"
				href="brandproductlist?bname=${brand.bname}&pageNo=${page.startPageNo-1}">이전</a>
		</c:if>
		<c:forEach var="i" begin="${page.startPageNo}"
			end="${page.endPageNo}">
			<c:if test="${page.pageNo != i}">
				<a class="btn btn-light btn-sm"
					href="brandproductlist?bname=${brand.bname}&pageNo=${i}">${i}</a>
			</c:if>
			<c:if test="${page.pageNo == i}">
				<a class="btn btn-outline-dark btn-sm"
					href="brandproductlist?bname=${brand.bname}&pageNo=${i}">${i}</a>
			</c:if>
		</c:forEach>
		<c:if test="${page.groupNo < page.totalGroupNo}">
			<a class=""
				href="brandproductlist?bname=${brand.bname}&pageNo=${page.endPageNo+1}">다음</a>
		</c:if>

		<a class=""
			href="brandproductlist?bname=${brand.bname}&pageNo=${page.totalPageNo}">끝</a>
	</div>

	<script>
      let product_array;
      
      $(window).ready(function () {
         $.ajax({
            url: "${pageContext.request.contextPath}/product/getBrandProductList?bname=" + urlParams.get("bname") + "&pageNo=" + urlParams.get("pageNo")
         }).done((data) => {
				product_array = data.products;
				let html_tmp = "";
				for (let i = 0; i < product_array.length; i++) {
					let product = product_array.at(i);
					let product_color = product.colors;
					//console.log(product_color);
					let product_info = product.product;
					//console.log(product_info);
					let tmp = "";
					tmp += "<li class='cell'><a id='product_link" + i + "' href='productdetail?pcode=" + product_array.at(i).product.pcode + "&pcolor=" + product_array.at(i).colors.at(product_array.at(i).state).pcolor + "'>";
					tmp += "	<div id='product_img" + i + "' class='img-box imgswap'>";
					tmp += "		<img src='" + product_color.at(product_array.at(i)["state"])["imgurl1"] + "' alt='' />";
					tmp += "		<img src='" + product_color.at(product_array.at(i)["state"])["imgurl2"] + "' alt='' />";
					tmp += "	</div>";
					tmp += "	<div class='brand-name'>" + product_info.bname + "</div>";
					tmp += "	<div class='product-name'>" + product_info.pname + "</div>";
					tmp += "	<div class='product-price'>￦ " + product_info.pprice.toLocaleString() + "원</div></a>";
					tmp += "	<div class='product-color'>";
					for (let j = 0; j < product_color.length; j++) {
						tmp += "<a href='javascript:changeColor(" + i + ", " + j + ")'><img src='" + product_color.at(j)["colorurl"] + "'/></a>";
					}
					tmp += "	</div>";
					tmp += "</li>";
					html_tmp += tmp;
				}
				$("#product-list-wrapper").html(html_tmp);
			});
		});
		function changeColor(product_idx, color_idx) {
			product_array.at(product_idx)["state"] = color_idx;
			let color_img = product_array.at(product_idx).colors.at(color_idx);
			//console.log(color_img);
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

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>