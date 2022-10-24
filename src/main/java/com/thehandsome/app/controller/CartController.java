package com.thehandsome.app.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.service.CartService;

/* 
 * 작성자 : 신미림
 * 작성일 : 2022.10.24.월
 * 장바구니 컨트롤러
*/

@Controller
@RequestMapping("/mycart")
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(WishlistController.class);


	@Autowired
	private CartService cartservice;
	
	@GetMapping(value="/checkCartProduct", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String checkCartProduct(CartDTO cart) {
		
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		String json = jsonObject.toString();
		return json;
	}
	
	
}
