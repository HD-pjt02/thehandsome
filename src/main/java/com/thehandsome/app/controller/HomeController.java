package com.thehandsome.app.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.service.BrandService;
import com.thehandsome.app.service.CategoryService;

import lombok.extern.log4j.Log4j;


@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/")
	public String content() {
		return "redirect:/home";
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		logger.info("로그인 실행");
		return "/member/loginForm";
	}

	@Resource
	BrandService brandService;

	public static JSONObject brandListJson = new JSONObject();
	public static JSONObject categoryListJson = new JSONObject();

	public HomeController() {
		brandListJson.put("result", "fail");
		categoryListJson.put("result", "fail");
	}

	@GetMapping(value = "/getBrandList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getBrandList(HttpSession session) {
		if (!brandListJson.get("result").equals("success")) {
			List<BrandDTO> brand = brandService.getBrandList();
			brandListJson.put("brand", brand);
			brandListJson.put("result", "success");
		}
		String json = brandListJson.toString();
		return json;
	}

	@Resource
	CategoryService categoryService;

	@GetMapping(value = "/getCategoryList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getCategoryList(String clarge, HttpSession session) {
		System.out.println("clarge : " + clarge);
		if (!categoryListJson.get("result").equals("success")) {
			CategoryDTO tmp = new CategoryDTO();
			tmp.setClarge(clarge);
			System.out.println("tmp.getClarge() : " + tmp.getClarge());

			List<CategoryDTO> categoryMedium = categoryService.getCategoryMedium(tmp);

			JSONArray jsonArray = new JSONArray();

			for (CategoryDTO m : categoryMedium) {
				m.setClarge(tmp.getClarge());

				JSONObject tmpObject = new JSONObject();

				List<CategoryDTO> categorySmall = categoryService.getCategorySmall(m);

				JSONArray tmpArray = new JSONArray();
				int idx = 0;

				for (CategoryDTO s : categorySmall) {
					tmpArray.put(idx, s.getCsmall());
					idx += 1;
				}

				tmpObject.put(m.getCmedium(), tmpArray);
				jsonArray.put(tmpObject);
			}

			categoryListJson.put("result", "success");

			categoryListJson.put(clarge, jsonArray);

		}
		String json = categoryListJson.toString();

		return json;
	}
}