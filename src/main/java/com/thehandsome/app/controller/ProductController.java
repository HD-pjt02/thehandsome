package com.thehandsome.app.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.ReviewDTO;
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.dto.WishlistDTO;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.ReviewService;
import com.thehandsome.app.service.WishlistService;

import lombok.extern.log4j.Log4j;

/* 
 * 작성자 : 정승하,신미림
 * 작성일 : 2022.10.17.월
 * 상품에 관련된 컨트롤러
*/
@Log4j
@Controller
@RequestMapping("/product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	public static HashMap<String, Integer> viewers = new HashMap<String, Integer>();

	@Resource
	ProductService productService;

	@Resource
	WishlistService wishlistService;

	@Resource
	ReviewService reviewService;

	@GetMapping("/brandproductlist")
	public String brandproductList(@RequestParam(defaultValue = "1") int pageNo, String bname, Model model,
			HttpSession session) {
		System.out.println("brandproductlist 실행");

		String clarge = "none";
		String cmedium = "none";
		String csmall = "none";

		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);

		BrandDTO brand = new BrandDTO(bname);

		model.addAttribute("brand", brand);
		int totalRows = productService.getTotalProductNumIncludeBrand(brand, category);

		session.setAttribute("totalRows", totalRows);

		PageDTO page = new PageDTO(12, 10, totalRows, pageNo);

		model.addAttribute("page", page);

		return "product/brandproductlist";
	}

	@GetMapping(value = "/getBrandProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getBrandProductList(@RequestParam(defaultValue = "1") int pageNo, String bname, Model model,
			HttpSession session) {
		System.out.println("getBrandProductList 실행");
		String clarge = "none";
		String cmedium = "none";
		String csmall = "none";

		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		BrandDTO brand = new BrandDTO(bname);

		model.addAttribute("category", category);
		model.addAttribute("brand", brand);

		int totalRows = Integer.parseInt(session.getAttribute("totalRows").toString());

		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);
		model.addAttribute("page", page);

		List<ProductDTO> products = productService.getProducts(brand, category, page);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ProductDTO p : products) {
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pcode", p.getPcode());
			pObject.put("pname", p.getPname());
			pObject.put("pprice", p.getPprice());
			pObject.put("bname", p.getBname());

			tmpObject.put("product", pObject);

			List<ColorDTO> colors = productService.getProductColor(p);
			tmpObject.put("colors", colors);
			tmpObject.put("state", 0);
			jsonArray.put(tmpObject);
		}

		jsonObject.put("products", jsonArray);
		jsonObject.put("result", "success");
		String json = jsonObject.toString();

		return json;
	}

	@GetMapping("/productlist")
	public String productList(@RequestParam(defaultValue = "1") int pageNo, String clarge, String cmedium,
			String csmall, Model model, HttpSession session) {
		System.out.println("productlist 실행");

		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);

		model.addAttribute("category", category);

		int totalRows = productService.getTotalProductNum(category);
		session.setAttribute("totalRows", totalRows);

		PageDTO page = new PageDTO(12, 10, totalRows, pageNo);

		model.addAttribute("page", page);

		return "product/productlist";
	}

	/* 대,중,소분류, 브랜드리스트, 색상, 정렬순, 가격, 사이즈로 필터링 */
	@GetMapping(value = "/getFilterList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productFilterList(@RequestParam(defaultValue = "1") int pageNo, String clarge, String cmedium,
			String csmall, String[] brandList, String pcolor, String orderby, String pprice, String psize, Model model,
			HttpSession session) {
		System.out.println("productFilterList 실행");

		/* 대,중,소분류 카테고리 */
		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		model.addAttribute("category", category);

		int totalRows = Integer.parseInt(session.getAttribute("totalRows").toString());

		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);
		model.addAttribute("page", page);

		/* 색상 필터링 */
		ColorDTO color = new ColorDTO();
		color.setPcolor(pcolor);

		/* 사이즈 필터링 */
		StockDTO stock = new StockDTO();
		stock.setPsize(psize);

		/* 가격 필터링 */
		ProductDTO product = new ProductDTO();
		product.setPprice(Integer.parseInt(pprice));

		List<ProductDTO> products = productService.filterProducts(category, page, brandList, color, stock, product,
				Integer.parseInt(orderby));

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		int count = 0;
		for (ProductDTO p : products) {
			count += 1;
			System.out.println("" + count + " : " + p);
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pcode", p.getPcode());
			pObject.put("pname", p.getPname());
			pObject.put("pprice", p.getPprice());
			pObject.put("bname", p.getBname());

			List<StockDTO> st = productService.getProductSize(p);
			ArrayList<String> arrList = new ArrayList<String>();
			for (StockDTO s : st) {
				arrList.add(s.getPsize());
			}
			pObject.put("size", arrList);

			tmpObject.put("product", pObject);

			List<ColorDTO> colors = productService.getProductColor(p);
			tmpObject.put("colors", colors);
			tmpObject.put("state", 0);
			jsonArray.put(tmpObject);
		}

		jsonObject.put("products", jsonArray);
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		System.out.println("데이터 생성 완료");
		return json;
	}

	@GetMapping(value = "/getProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductList(@RequestParam(defaultValue = "1") int pageNo, String clarge, String cmedium,
			String csmall, Model model, HttpSession session) {
		System.out.println("getProductlist 실행");
		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		model.addAttribute("category", category);

		int totalRows = Integer.parseInt(session.getAttribute("totalRows").toString());

		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);
		model.addAttribute("page", page);
		BrandDTO brand = new BrandDTO();

		List<ProductDTO> products = productService.getProducts(brand, category, page);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		int count = 0;
		for (ProductDTO p : products) {
			count += 1;
			System.out.println("" + count + " : " + p);
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pcode", p.getPcode());
			pObject.put("pname", p.getPname());
			pObject.put("pprice", p.getPprice());
			pObject.put("bname", p.getBname());

			List<StockDTO> stock = productService.getProductSize(p);
			ArrayList<String> arrList = new ArrayList<String>();
			for (StockDTO s : stock) {
				arrList.add(s.getPsize());
			}
			pObject.put("size", arrList);

			tmpObject.put("product", pObject);

			List<ColorDTO> colors = productService.getProductColor(p);
			tmpObject.put("colors", colors);
			tmpObject.put("state", 0);
			jsonArray.put(tmpObject);
		}

		jsonObject.put("products", jsonArray);
		jsonObject.put("result", "success");
		String json = jsonObject.toString();

		return json;
	}

	/* 필터링을 위한 brand 리스트 가져오기 */
	@GetMapping(value = "/filterProductBrandList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String filterProductsBrandDropdown(@RequestParam(defaultValue = "1") String clarge, String cmedium,
			String csmall, Model model, HttpSession session) {
		System.out.println("filterProductBrandList 실행");
		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		model.addAttribute("filterBrand", category);

		List<ProductDTO> result = productService.filterProductsBrand(category);
		// System.out.println(result);
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ProductDTO r : result) {
			JSONObject bObject = new JSONObject();
			bObject.put("bname", r.getBname());

			jsonArray.put(bObject);
		}

		jsonObject.put("brands", jsonArray);
		String json = jsonObject.toString();

		return json;
	}

	/* 필터링을 위한 color 리스트 가져오기 */
	@GetMapping(value = "/filterProductColorList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String filterProductsColorDropdown(@RequestParam(defaultValue = "1") String clarge, String cmedium,
			String csmall, Model model, HttpSession session) {
		System.out.println("filterProductColorList 실행");
		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		model.addAttribute("filterColor", category);

		List<ColorDTO> result = productService.filterProductsColor(category);
		System.out.println(result);
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ColorDTO r : result) {
			JSONObject cObject = new JSONObject();
			cObject.put("colorurl", r.getColorurl());

			jsonArray.put(cObject);
		}

		jsonObject.put("colors", jsonArray);
		String json = jsonObject.toString();

		return json;
	}

	/* 221017미림 수정 */
	@RequestMapping("/productdetail")
	public String productDetail(String pcode, String pcolor, Model model, HttpSession session) {
		logger.info("productdetail 실행");
		logger.info("pcode: " + pcode);
		logger.info("pcolor: " + pcolor);

		MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");

		ProductDTO product = productService.getProduct(pcode);
		List<ColorDTO> colors = productService.getProductColor(product);
		List<StockDTO> sizes = productService.getProductSize(product);
		WishlistDTO wishlistDTO = new WishlistDTO();
		ReviewDTO reviewDTO = new ReviewDTO();

		logger.info("color size: " + colors.size());
		for (int i = 0; i < colors.size(); i++) {
			logger.info("now color: " + colors.get(i).getPcolor());
			if (pcolor.equals(colors.get(i).getPcolor())) {
				wishlistDTO.setPid(colors.get(i).getPcodecolor());
				reviewDTO.setPcodecolor(colors.get(i).getPcodecolor());
				model.addAttribute("currentcolorcode", colors.get(i).getPcodecolor());
				model.addAttribute("currentpcolor", colors.get(i).getPcolor());
				model.addAttribute("productimage1", colors.get(i).getImgurl1());
				model.addAttribute("productimage2", colors.get(i).getImgurl2());
				model.addAttribute("productimage3", colors.get(i).getImgurl3());
				model.addAttribute("productimage4", colors.get(i).getImgurl4());
				model.addAttribute("productimage5", colors.get(i).getImgurl5());
				model.addAttribute("productimage6", colors.get(i).getImgurl6());
				model.addAttribute("productimage7", colors.get(i).getImgurl7());
				break;
			}
		}
		Long result = -1L;
		if (memberInfo == null) {
			wishlistDTO.setMid("");
			wishlistDTO.setMember_mno(-1);
		} else {
			wishlistDTO.setMid(memberInfo.getId());
			wishlistDTO.setMember_mno(memberInfo.getMno());
			try {
				result = wishlistService.selectWishlistYN(wishlistDTO);
				if (result == null) {
					result = 0L;
				}
			} catch (NullPointerException e) {
				result = 0L;
			}
		}

		model.addAttribute("reviewCnt", reviewService.selectAllReviewCount(reviewDTO));
		model.addAttribute("reviewRating", reviewService.selectoReviewRateAvg(reviewDTO));

		String wishYn = "";
		if (result == 1) {
			wishYn = "on";
		}

		model.addAttribute("wishYn", wishYn);
		model.addAttribute("product", product);
		model.addAttribute("colors", colors);
		model.addAttribute("sizes", sizes);

		int mileage = (int) (product.getPprice() * 0.05);
		int hpoint = (int) (product.getPprice() * 0.001);

		model.addAttribute("mileage", mileage);
		model.addAttribute("hpoint", hpoint);

		if (viewers.containsKey(pcode)) {
			viewers.put(pcode, viewers.get(pcode) + 1);
		} else {
			viewers.put(pcode, 1);
		}

		model.addAttribute("viewer", viewers.get(pcode));

		return "product/productdetail";
	}

	@RequestMapping("/exitPage")
	@ResponseBody
	public void exitPage(String pcode) {
		logger.info(pcode);
		if (viewers.get(pcode) == 1) {
			viewers.remove(pcode);
		} else {
			viewers.put(pcode, viewers.get(pcode) - 1);
		}
	}

	@RequestMapping(value = "/getProductStock", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductStock(String pcode, String color, String size, Model model) {
		logger.info("getProductStock 실행");
		String scode = pcode + "_" + color + "_" + size;

		JSONObject jsonObject = new JSONObject();
		String json;

		try {
			StockDTO stock = productService.getProductStock(scode);
			jsonObject.put("amount", stock.getPamount());
		} catch (Exception e) {
			jsonObject.put("amount", 0);
		} finally {
			json = jsonObject.toString();
		}

		return json;
	}

	@RequestMapping(value = "/productDetailAjax", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productDetailAjax(@RequestParam String code, Model model) {
		logger.info("productDetailAjax 실행");

		JSONObject jsonObject = new JSONObject();
		String json;

		try {

			jsonObject.put("amount", code);
		} catch (Exception e) {
			jsonObject.put("amount", 0);
		} finally {
			json = jsonObject.toString();
		}

		return code;
	}

	@Resource
	CartService cartService;

	@RequestMapping("/insertToCart")
	public String insertToCart(CartDTO cart, HttpSession session) {

		// Integer.parseInt(session.getAttribute("mno").toString())
		cart.setMno(1);
		int cartno = cartService.selectCartno(cart);

		if (cartno == -1) {

			cartService.insertCart(cart);
		} else {
			cart.setCartno(cartno);

			cartService.updateCart(cart);
		}

		return "redirect:/member/mycart";
	}

	@RequestMapping("/insertToCartForDirectOrder")
	public String insertToCartForDirectOrder(CartDTO cart, HttpSession session) {
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		cart.setMno(memberInfo.getMno());
		//cart.setMno(Integer.parseInt(session.getAttribute("mno").toString()));
		//미림 받아온 파라미터 로그로 확인
		log.info(cart.getMno());
		log.info(cart.getPcode());
		log.info(cart.getPcolor());
		log.info(cart.getPamount());
		log.info(cart.getPsize());
		cartService.insertCart(cart);

		return "redirect:/member/cartForDirectOrder";
	}
}