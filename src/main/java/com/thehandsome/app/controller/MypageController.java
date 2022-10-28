package com.thehandsome.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.WishlistDTO;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.MemberService;
import com.thehandsome.app.service.MyOrderService;
import com.thehandsome.app.service.OrderService;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.WishlistService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping(value = "/mypage")
public class MypageController {
	
	
	@Autowired
	private CartService cartService;

	@Autowired
	private ProductService productService;

	@Autowired
	private MemberService memberService;

	@Autowired
	private OrderService orderService;
	
	@Autowired
	MyOrderService myOrderService;
	
	@Autowired
	WishlistService wishlistService;
	
   
	//미림 마이페이지 수정
	@GetMapping(value = "/mypage")
	public String mypage(HttpSession session, Model model) {
		
		
		log.info("logined member");
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");
		List<OrderItemListDTO> orderList = myOrderService.getMemberOrders(memberInfo);
		List<WishlistDTO> wishList = wishlistService.getMemberWishlist(memberInfo);
		List<ColorDTO> wishProductList = new ArrayList<>();
		List<ColorDTO> orderProductList = new ArrayList<>();
		for(OrderItemListDTO order : orderList) {
			orderProductList.add(productService.getMemberOrderProduct(order));
		}
		for(WishlistDTO wish : wishList) {
			wishProductList.add(productService.getMemberWishProduct(wish));
		}
		
		model.addAttribute("member", memberInfo);
		model.addAttribute("wishProductList", wishProductList);
		model.addAttribute("orderProductList", orderProductList);
		return "mypage/mypage";
		
	}
	
	
	@GetMapping(value = "/mypoint")
	public void mypoint() {
		
		log.info("mypoint");
	}

	@GetMapping(value = "/myWish")
	public String myWish(HttpSession session,Model model) {
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");
		List<WishlistDTO> wishList = wishlistService.getMemberWishlist(memberInfo);
		List<ColorDTO> wishProductList = new ArrayList<>();
		for(WishlistDTO wish : wishList) {
			wishProductList.add(productService.getMemberWishProduct(wish));
		}
		model.addAttribute("member", memberInfo);
		model.addAttribute("wishProductList", wishProductList);
		log.info("myWish");
		return "mypage/myWish";
	}
   
	
	

}