package com.thehandsome.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.service.MemberService;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.MyOrderService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	   @Autowired
	   private MemberService memberService;
	   @Resource
	   CartService cartService;
	   
	   @Resource
	   ProductService productService;
	   
	   @Resource
	   MyOrderService myOrderService;

	   @Autowired
	   private BCryptPasswordEncoder pwEncoder;

	/***************** 회원가입 관련 기능 **********************/
	@RequestMapping(value = "/joinstart", method = { RequestMethod.GET })
	public String joinstart() {
		log.info("회원가입 시작 폼");
		return "member/joinstart";

	}

	@RequestMapping(value = "/joinprovision", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinprovision(@RequestParam("joincode") String joincode, Model model) {
		log.info("회원가입 동의 폼");
		String[] code = joincode.split(",");
		String token = code[0];
		String useremail = code[1];
		log.info("token: " + code[0]);
		log.info("useremail: " + code[1]);

		model.addAttribute("useremail", useremail);
		model.addAttribute("token", token);
		return "member/joinprovision";

	}

	@RequestMapping(value = "/joininfoform", method = { RequestMethod.GET })
	public String joininfoform() {
		log.info("회원가입 정보 입력 폼");
		return "member/joininfoform";

	}

	@RequestMapping(value = "/joininfoformaction", method = { RequestMethod.GET })
	public String joininfoformaction(@RequestParam Map<String, Object> map, Model model) {
		log.info("회원가입 정보 입력 폼 포스트");
		String token = (String) map.get("CSRFToken");
		String useremail = (String) map.get("uid");

		model.addAttribute("useremail", useremail);
		return "member/joininfoform";

	}

	@RequestMapping(value = "/joincompleteaction", method = { RequestMethod.GET })
	public String joincompleteaction(@RequestParam Map<String, Object> map) {
		log.info("회원가입 완료 폼");
		String rawPw = (String) map.get("passwd");
		String encodePw = pwEncoder.encode(rawPw);
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String) map.get("uid"));
		memberDTO.setBirth((String) map.get("sBirthday"));
		memberDTO.setPassword(encodePw);
		memberDTO.setName((String) map.get("name"));

		// String emailReceiveYn = (String)map.get("emailReceiveYn");
		// String collectionAgreementYN = (String)map.get("collectionAgreementYN");

		if (((String) map.get("emailAddress")).equals("")) {
			memberDTO.setEmail("null");
		} else {
			memberDTO.setEmail((String) map.get("emailAddress"));
		}
		memberService.joinMember(memberDTO);

		return "member/joincomplete";

	}

	@RequestMapping(value = "/joincomplete", method = { RequestMethod.GET })
	public String joincomplete() {
		log.info("회원가입 완료 폼");
		return "member/joincomplete";

	}

	@RequestMapping(value = "/isdupluid", method = { RequestMethod.GET })
	public @ResponseBody Boolean isdupluid(@RequestParam Map<String, Object> map) {
		log.info("이메일 중복체크");
		log.info("" + map.get("uid"));

		String uid = (String) map.get("uid");

//		Map<String,String> msg = new HashMap<String,String>();
//		msg.put("message","good");
//		log.info(""+msg);
		if (memberService.isdupluid(uid) == null) {
			return false;
		} else {
			return true;
		}

	}

	@RequestMapping(value = "/easyjoinsendmail", method = { RequestMethod.GET })
	public @ResponseBody Map<String, String> easyjoinsendmail(@RequestParam Map<String, Object> map) {
		log.info("이메일 인증발송");
		log.info("이메일: " + map.get("userMail"));
		String userMail = (String) map.get("userMail");

		memberService.joinEmail(userMail);

		Map<String, String> msg = new HashMap<String, String>();
		msg.put("resultCode", "S");
		log.info("" + msg);
		return msg;

	}

	/************************ 회원가입 관련 끝 ****************************/

	@RequestMapping(value = "/login", method = { RequestMethod.GET })
	public String login() {
		log.info("로그인 폼");
		return "member/login";
	}

	@RequestMapping(value = "/isduplglobaluid", method = { RequestMethod.GET })//요거 포스트였어요
	public @ResponseBody String isduplglobaluid(@RequestParam Map<String, Object> map) {
		log.info("통합회원 여부 체크");
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String) map.get("uid"));
		memberDTO.setPassword((String) map.get("upw"));
		log.info("id: " + memberDTO.getId());
		log.info("pw: " + memberDTO.getPassword());

		Map<String, String> msg = new HashMap<String, String>();
		
		log.info("" + msg);
		return "exist";
	}

	@RequestMapping(value = "/loginaction", method = { RequestMethod.GET })
	public String loginaction(@RequestParam Map<String, Object> map, Model model, HttpServletRequest request) {
		log.info("로그인 진행");

		HttpSession session = request.getSession();// 세션가져옴
		String rawPw = (String) map.get("j_password");
//		String j_username = (String)map.get("j_username");

		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String) map.get("inputId"));// 화면에서 입력된 아이디
		MemberDTO memberInfo = memberService.memberLogin(memberDTO);
		String encodePw = memberInfo.getPassword();

		if (memberInfo != null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			if (true == pwEncoder.matches(rawPw, encodePw)) {
				session.setAttribute("member", memberInfo);
				return "redirect:/";
			} else {
				model.addAttribute("result", 0);
				return "redirect:/member/login";
			}

		} else {
			model.addAttribute("result", 0);
			return "redirect:/member/login";
		}

	}

	/************************ 마이페이지 기능 ****************************/
	/* 마이페이지 시작 */
	@RequestMapping(value = "/mypage", method = { RequestMethod.GET })
	public String mypage() {
		log.info("마이페이지 시작 폼");
		return "member/mypage";

	}

	/* 마이페이지의 주문하기 */
	@RequestMapping("/myorders")
	public String myOrdersList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int pageNo,
			@RequestParam(defaultValue = "pcode") String type, @RequestParam(defaultValue = "") String keyword,
			HttpServletRequest httpServletRequest) { // 회원의 주문한 상품 리스트
		logger.info("myorders 실행");
		int mno = Integer.parseInt(session.getAttribute("1").toString());// 어떤 회원 인지
		// 페이징 처리
		int totalRows = myOrderService.getProductOrderCount(mno, type, keyword);

		session.setAttribute("totalRows", totalRows);

		PageDTO page = new PageDTO(5, 5, totalRows, pageNo);
		model.addAttribute("page", page);

		// 주문 테이블에서 mno에 해당하는 모든 정보를 가지고 옴
		List<OrderItemListDTO> orderList = myOrderService.getProductOrder(mno, page, type, keyword);

		for (OrderItemListDTO oild : orderList) {
			ProductDTO p = productService.getProduct(oild.getPcode());
			oild.setBname(p.getBname());
			oild.setPname(p.getPname());
			oild.setPprice(p.getPprice());

			// 상품이 가진 컬러 리스트를 가져온다.
			List<ColorDTO> colors = productService.getProductColor(p);

			for (int i = 0; i < colors.size(); i++) {
				if (oild.getPcolor().equals(colors.get(i).getPcolor())) {
					oild.setImgurl1(colors.get(i).getImgurl1());
					oild.setImgurl2(colors.get(i).getImgurl2());
				}
			}
			oild.setType(type);
			oild.setKeyword(keyword);
		}

		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		model.addAttribute("orderList", orderList);

		return "member/myorders";
	}

	/* 마이페이지의 장바구니 */
	@RequestMapping("/mycart")
	public String cart(HttpSession session, Model model) {
		logger.info("mycart 실행");

		// int mno = Integer.parseInt(session.getAttribute("1").toString());
		int mno = 1;
		System.out.println(mno);
		// mno라는 사람의 쇼핑백 정보를 DB 쇼핑백 테이블에서 가져온다.
		List<CartDTO> carts = cartService.getCartProducts(mno);
		logger.info("여기까지 mycart 실행1");
		for (CartDTO cart : carts) {
			ProductDTO p = productService.getProduct(cart.getPcode());

			cart.setPname(p.getPname());
			cart.setBname(p.getBname());
			cart.setPprice(p.getPprice());

			// 상품이 가진 컬러 리스트를 가져온다.
			List<ColorDTO> colors = productService.getProductColor(p);
			cart.setColors(colors);

			for (int i = 0; i < colors.size(); i++) {
				if (cart.getPcolor().equals(colors.get(i).getPcolor())) {
					cart.setColoridx(i);
					break;
				}
			}

			cart.setSizes(productService.getProductSize(p));
		}
		logger.info("여기까지 mycart 실행2");
		model.addAttribute("carts", carts);

		return "member/mycart";
	}

	@RequestMapping("/cartForDirectOrder")
	public String cartForDirectOrder(HttpSession session, Model model) {
		logger.info("cartForDirectOrder 실행");

		// int mno = Integer.parseInt(session.getAttribute("1").toString());
		int mno = 1;
		// mno라는 사람의 쇼핑백 정보를 DB 쇼핑백 테이블에서 가져온다.
		List<CartDTO> carts = cartService.getCartProducts(mno);

		// 가장 높은 번호가 최근에 주문한 쇼핑백 번호일 것이다.
		int maxVal = 0;

		for (CartDTO cart : carts) {
			maxVal = Math.max(maxVal, cart.getCartno());
		}

		return "redirect:/member/insertorder?checkedItems=" + String.valueOf(maxVal) + ",&itemsLength=1";
	}

	@PostMapping("/changeProductOption")
	public String changeProductOption(int cartnoSelected, String pcodeSelected, String colorSelected,
			String sizeSelected, int amountSelected, HttpSession session) {
		logger.info("changeProductOption 실행");

		CartDTO cart = new CartDTO();
		cart.setCartno(cartnoSelected);
		cart.setPcolor(colorSelected);
		cart.setPsize(sizeSelected);
		cart.setPcode(pcodeSelected);
		// cart.setMno(Integer.parseInt(session.getAttribute("mno").toString()));
		cart.setMno(1);
		// 변경하려는 값이 이미 존재하는지 확인한다.
		int cartno = cartService.selectCartno(cart);

		if (cartno == -1) {
			// 쇼핑백에 이미 같은 종류의 상품이 담겨있으면 값을 갱신한다.
			cartService.updateCart(cart);
		} else {
			// 이미 존재한다면 변경하려는 행을 삭제하고, 이전에 존재하는 행을 갱신한다.
			if (cartnoSelected != cartno) {
				cartService.deleteCart(cartnoSelected);
				cart.setCartno(cartno);
			}
			cartService.updateCart(cart);
		}

		// String scode = pcodeSelected + "_" + colorSelected + "_" + sizeSelected;
		System.out.println(pcodeSelected);
		System.out.println(colorSelected);
		System.out.println(sizeSelected);
		int remainStock = productService.getCartStock(pcodeSelected, colorSelected, sizeSelected).getPamount();
		
		cart.setPamount(Math.min(amountSelected, remainStock));
		cartService.updateCart(cart);

		// 너무 많은 디비 접근이 있을 거 같아서 변경하는 곳 한 군데만 재고를 보여준다.
		session.setAttribute("remainStock", remainStock);
		session.setAttribute("remainCartno", cartnoSelected);

		return "redirect:/member/mycart";
	}

	@RequestMapping("/deletecart")
	public String deleteCart(int cartnoSelected) {
		logger.info("deletecart 실행");
		cartService.deleteCart(cartnoSelected);

		return "redirect:/member/mycart";
	}

	@RequestMapping("/deleteallcart")
	public String deleteAllCart(HttpSession session) {
		logger.info("deleteallcart 실행");
		// int mno = Integer.parseInt(session.getAttribute("1").toString());
		int mno = 1;
		List<CartDTO> carts = cartService.getCartProducts(mno);

		for (CartDTO cart : carts) {
			cartService.deleteCart(cart.getCartno());
		}

		return "redirect:/member/mycart";
	}

	@RequestMapping("/insertorder")
	public String insertOrder(String checkedItems, int itemsLength, HttpSession session) {
		logger.info("insertorder 실행");

		session.setAttribute("checkedItems", checkedItems);
		session.setAttribute("itemsLength", itemsLength);

		return "redirect:/order/ordering";
	}

}