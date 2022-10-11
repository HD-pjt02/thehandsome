package com.thehandsome.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/* 
 * 작성자 : 정승하
 * 작성일 : 2022.10.17.월
 * 상품 상세 조회 관련 기능을 다룬 컨트롤러
 * [상품 상세 정보, 상품 컬러 리스트]
 */
@Log4j
@Controller
@RequestMapping("/product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	public static HashMap<String, Integer> viewers = new HashMap<String, Integer>();

	@Resource
	ProductService productService;

	@GetMapping("/brandproductlist")
	public String brandproductList(@RequestParam(defaultValue = "1") int pageNo, String bname, Model model,
			HttpSession session) {
		logger.info("실행");

		String clarge = "none";
		String cmedium = "none";
		String csmall = "none";

		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);

		BrandDTO brand = new BrandDTO(bname);

		model.addAttribute("brand", brand);
		int totalRows = productService.getTotalProductNumIncludeBrand(brand, category);

		session.setAttribute("totalRows", totalRows);


		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);

		model.addAttribute("page", page);

		return "product/brandproductlist";
	}

	@GetMapping(value = "/getBrandProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getBrandProductList(@RequestParam(defaultValue = "1") int pageNo, String bname, Model model,
			HttpSession session) {

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
			pObject.put("bno", p.getBno());

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
		logger.info("productlist 실행");

		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);

		model.addAttribute("category", category);


		int totalRows = productService.getTotalProductNum(category);
		session.setAttribute("totalRows", totalRows);


		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);

		model.addAttribute("page", page);

		return "product/productlist";
	}

	@GetMapping(value = "/getProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductList(@RequestParam(defaultValue = "1") int pageNo, String clarge, String cmedium,
			String csmall, Model model, HttpSession session) {
		CategoryDTO category = new CategoryDTO(clarge, cmedium, csmall);
		model.addAttribute("category", category);


		int totalRows = Integer.parseInt(session.getAttribute("totalRows").toString());

		PageDTO page = new PageDTO(12, 5, totalRows, pageNo);
		model.addAttribute("page", page);
		BrandDTO brand = new BrandDTO();

		List<ProductDTO> products = productService.getProducts(brand, category, page);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ProductDTO p : products) {
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("pcode", p.getPcode());
			pObject.put("pname", p.getPname());
			pObject.put("pprice", p.getPprice());
			pObject.put("bno", p.getBno());

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

	@RequestMapping("/productDetail")
	public String productDetail(String pcode, String cproductcolor, Model model) {
		logger.info("실행");

		// pcode를 이용해서 product 객체 1개를 DB에서 가져온다.
		ProductDTO product = productService.getProduct(pcode);
		// product를 이용해서 해당 상품이 가지고 있는 color와 size를 가져온다.
		List<ColorDTO> colors = productService.getProductColor(product);
		//List<SizeDTO> sizes = productService.getProductSize(product);

		for (int i = 0; i < colors.size(); i++) {
			if (cproductcolor.equals(colors.get(i).getColorurl())) {
				model.addAttribute("productimage1", colors.get(i).getImgurl1());
				model.addAttribute("productimage2", colors.get(i).getImgurl2());
				model.addAttribute("productimage3", colors.get(i).getImgurl3());
				break;
			}
		}

		model.addAttribute("product", product);
		model.addAttribute("colors", colors);
		//model.addAttribute("sizes", sizes);

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

		return "product/productDetail";
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
	/*
	@RequestMapping(value = "/getProductStock", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductStock(String pcode, String color, String size, Model model) {
		String scode = pcode + "_" + color + "_" + size;
		// scode를 이용해서 재고 테이블에서 Stock DTO를 가져온다.

		JSONObject jsonObject = new JSONObject();
		String json;

		try {
			Stock stock = productService.getProductStock(scode);
			jsonObject.put("amount", stock.getSproductamount());
		} catch (Exception e) {
			jsonObject.put("amount", 0);
		} finally {
			json = jsonObject.toString();
		}

		return json;
	}

	@Resource
	ShoppingbagService shoppingbagService;

	@RequestMapping("/insertToShoppingbag")
	public String insertToShoppingbag(ShoppingBag shoppingBag, HttpSession session) {

		shoppingBag.setMno(Integer.parseInt(session.getAttribute("mno").toString()));

		// 이미 같은 내용의 상품을 넣은 적이 있는지를 확인하기 위해 사용한다.
		// 이미 있는 내용이라면 해당 sbno 값을 반환하고, 없는 내용이라면 -1을 반환한다.
		int sbno = shoppingbagService.selectSbno(shoppingBag);

		if (sbno == -1) {
			// 쇼핑백에 같은 종류의 상품이 담겨있지 않으면 값을 삽입한다.
			shoppingbagService.insertShoppingbag(shoppingBag);
		} else {
			shoppingBag.setSbno(sbno);
			// 쇼핑백에 이미 같은 종류의 상품이 담겨있으면 값을 갱신한다.
			shoppingbagService.updateShoppingbag(shoppingBag);
		}

		return "redirect:/member/shoppingbag";
	}

	@RequestMapping("/insertToShoppingbagForDirectOrder")
	public String insertToShoppingbagForDirectOrder(ShoppingBag shoppingBag, HttpSession session) {

		shoppingBag.setMno(Integer.parseInt(session.getAttribute("mno").toString()));
		shoppingbagService.insertShoppingbag(shoppingBag);

		return "redirect:/member/shoppingbagForDirectOrder";
	}*/
}