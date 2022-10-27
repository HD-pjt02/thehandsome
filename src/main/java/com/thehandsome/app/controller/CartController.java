package com.thehandsome.app.controller;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.ProductService;

/* 
 * 작성자 : 신미림(추가)
 * 작성일 : 2022.10.24.월
 * 장바구니 컨트롤러
*/

@Controller
@RequestMapping("/mycart")
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);


	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;
	
	//장바구니에 같은 상품이 담겨있는지 확인
	@GetMapping(value="/checkCartProduct", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String checkCartProduct(@RequestParam String productCode, HttpSession session) {
		System.out.println("장바구니 체크");
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		if(memberInfo == null) {
			return "redirect:/member/login";
		}//비회원이 존재하지 않으므로 장바구니 또한 로그인을 했는지 확인 후 담는다. 
		ColorDTO currentProductColor = productService.getCurrentProductColor(productCode);//pcode로 관련 pcodecolor를 가져온다. 
		
		CartDTO cartDTO = new CartDTO();
		cartDTO.setMno(memberInfo.getMno());//세션정보로 가져온다. 
		cartDTO.setPcode(currentProductColor.getPcode());//화면에서 받아오는 pcode 
		cartDTO.setPcolor(currentProductColor.getPcolor());
		
		System.out.println(cartDTO.getMno());
		System.out.println(cartDTO.getPcode());
		System.out.println(cartDTO.getPcolor());
		
		CartDTO memberProductCart = cartService.getMemberProductCart(cartDTO);
		if(memberProductCart == null) {
			return null;
		}//cart테이블에 상품이 존재하는지 확인 
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		String json = jsonObject.toString();
		return json;// json형태로 다시 리턴한다. 
	}
	
	//쇼핑백 담기를 누르면 작동하는 장바구니 추가 
	@GetMapping(value="/add", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String add(@RequestParam int qty, String productCodePost,String selectProductSize,HttpSession session) {
		System.out.println("장바구니 추가");
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		if(memberInfo == null) {
			return "redirect:/member/login";
		}//위의 코드와 동일하다. 
		ColorDTO colorDTO = productService.getCurrentProductColor(productCodePost);

		CartDTO cartDTO = new CartDTO();
		cartDTO.setPamount(qty);//수량 담고있다. 
		cartDTO.setMno(memberInfo.getMno());
		cartDTO.setPcode(colorDTO.getPcode());
		cartDTO.setPcolor(colorDTO.getPcolor());
		cartDTO.setPsize(selectProductSize);//form태그안에 있는 변수 넘겨줌 
		
		
		
		int result = cartService.insertCart(cartDTO);
		if(result >= 1) {
			return null;
		}//insert 못할 경우 
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		String json = jsonObject.toString();
		return json;
	}
	
	
}
