package com.thehadsome.app.controller;

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
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/* 
 * ?ûë?Ñ±?ûê : ?†ï?äπ?ïò
 * ?ûë?Ñ±?ùº : 2022.10.17.?õî
 * ?ÉÅ?íà ?ÉÅ?Ñ∏ Ï°∞Ìöå Í¥??†® Í∏∞Îä•?ùÑ ?ã§Î£? Ïª®Ìä∏Î°§Îü¨
 * [?ÉÅ?íà ?ÉÅ?Ñ∏ ?†ïÎ≥?, ?ÉÅ?íà Ïª¨Îü¨ Î¶¨Ïä§?ä∏]
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
		logger.info("brandproductlist ?ã§?ñâ");

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
		logger.info("productlist ?ã§?ñâ");

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

	/*221017ÎØ∏Î¶º ?àò?†ï */
	@RequestMapping("/productdetail")
	public String productDetail(String pcode, String pcolor, Model model) {
		logger.info("productdetail ?ã§?ñâ");
		logger.info("pcode: "+pcode);
		logger.info("pcolor: "+ pcolor);
		ProductDTO product = productService.getProduct(pcode);
		List<ColorDTO> colors = productService.getProductColor(product);
		List<StockDTO> sizes = productService.getProductSize(product);
		logger.info("color size: "+colors.size());
		for (int i = 0; i < colors.size(); i++) {
			logger.info("now color: "+colors.get(i).getPcolor());
			if (pcolor.equals(colors.get(i).getPcolor())) {
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
	
	
	

}