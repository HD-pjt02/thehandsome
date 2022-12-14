package com.thehandsome.app.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.WishlistDTO;
import com.thehandsome.app.service.WishlistService;

/* 
 * 작성자 : 신미림
 * 작성일 : 2022.10.22.토
 * 좋아요 컨트롤러
*/

//상품상세페이지에서 위시리스트 
@Controller
@RequestMapping("/wishlist")
public class WishlistController {

	private static final Logger logger = LoggerFactory.getLogger(WishlistController.class);

	@Resource
	WishlistService wishlistService; 
	
	@GetMapping(value = "/add-product-action", produces = "application/json; charset=UTF-8" )
	@ResponseBody
	public String wishlistAddProductAction(@RequestParam String productCode, String wishOn, HttpSession session) {
		MemberDTO memberInfo =(MemberDTO)session.getAttribute("member");
		//로그인을 해야지 좋아요가 눌리도록 한다. 

		
		WishlistDTO wishlistDTO = new WishlistDTO();
		wishlistDTO.setPid(productCode); // 화면에서 받아온 데이터
		wishlistDTO.setMid(memberInfo.getId());
		wishlistDTO.setMember_mno(memberInfo.getMno());
		
		if(wishOn.equals("Y")) {
			
			Long result = wishlistService.deleteWishProduct(wishlistDTO);//좋아요를 눌러서 Y라면 좋아요테이블에서 삭제하고
			
		}else {
			
			Long result = wishlistService.insertWishProduct(wishlistDTO);// Y가 아니라면 좋아요 테이블에 추가한다. 
		}
		
		
		
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		String json = jsonObject.toString();
		return json;
		
	}
		
		
	
		
}
