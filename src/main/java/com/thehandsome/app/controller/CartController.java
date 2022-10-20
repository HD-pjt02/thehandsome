package com.thehandsome.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService cartservice;
	
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart) {
		// 로그인 체크
//				HttpSession session = request.getSession();
//				MemberVO mvo = (MemberVO)session.getAttribute("member");
//				if(mvo == null) {
//					return "5";
//				}
				
		
				// 카트 등록
				int result = cartservice.addCart(cart);
				//반환값을 문자열로 바꾸기 위해 " " 더해준다?
				return result + "";
	}
}
