package com.thehandsome.app.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.AddressDTO;
import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.service.AddressService;
import com.thehandsome.app.service.MemberService;
import com.thehandsome.app.service.OrderService;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.CartService;
/* 작성자 : 김민석, 신미림
 * 작성일 : 2022.10.22.토
 * 주문처리하는 Controller
 */
@Controller
@RequestMapping("/order")
public class OrderController {
   private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

   @Resource
   private CartService cartService;

   @Resource
   private ProductService productService;

   @Resource
   private MemberService memberService;

   @Resource
   private OrderService orderService;

   @Resource
   private AddressService addressService;

   @RequestMapping("/ordering")
   public String order(HttpSession session, HttpServletRequest request) {
      logger.info("ordering 실행");

      // 결제 총액을 저장한다.
      int total = 0;
      // 배송비를 저장한다.
      int post = 2500;

      int itemsLength = Integer.parseInt(session.getAttribute("itemsLength").toString());
      String checkedItems = session.getAttribute("checkedItems").toString();
      System.out.println(itemsLength);
      System.out.println(checkedItems);
      

      List<CartDTO> carts = new ArrayList<CartDTO>();

      StringTokenizer st = new StringTokenizer(checkedItems, ",");

      for (int i = 0; i < itemsLength; i++) {
         int cartno = Integer.parseInt(st.nextToken());

         CartDTO cart = cartService.getCartProduct(cartno);
         ProductDTO p = productService.getProduct(cart.getPcode());

         List<ColorDTO> colors = productService.getProductColor(p);
         cart.setColors(colors);

         for (int j = 0; j < colors.size(); j++) {
            if (cart.getPcolor().equals(colors.get(j).getPcolor())) {
               cart.setColoridx(j);
               break;
            }
         }

         cart.setBname(p.getBname());
         cart.setPname(p.getPname());
         cart.setPprice(p.getPprice());
         total += p.getPprice() * cart.getPamount();
         carts.add(cart);
      }
      System.out.println("그래서 카트는? " + carts);

      if (total > 30000) {
         post = 0;
      }

      request.setAttribute("carts", carts);
      request.setAttribute("total", total);
      request.setAttribute("post", post);
      
      System.out.println(carts);
      System.out.println(total);
      System.out.println(post);
      
      //MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		//int mno = memberInfo.getMno();// 어떤 회원 인지
		//String phone = memberIfo.getPhone();
      
      //신밀미 처리아러아어리ㅏㅇㄹ어랑마ㅓㄴ아러
      //Integer.parseInt(session.getAttribute("mno").toString())
      MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
      String phone = memberInfo.getPhone();
      //System.out.println(콜);
     // phone = phone.substring(0, 3) + "-" + phone.substring(3, 7) + "-" + phone.substring(7);
      phone="010-1234-5555";
      //member.setPhone(콜);
      request.setAttribute("member", memberInfo);
      System.out.println(memberInfo);
      return "order/order";
   }

   //미림수정
   @RequestMapping("/orderpayment")
   public String orderPayment(String ptype, String apostcode, String aaddress1, String aaddress2, String oreceivername,
         String oreceiverphone1, String oreceiverphone2, String ocomment, int ano,String[] pcode, HttpSession session) {
      logger.info("orderpayment 실행");
      logger.info(""+pcode.length);
//      for(String p:pcode) {
//    	  logger.info(p);
//      }
      
      //int mno = Integer.parseInt(session.getAttribute("mno").toString());
      MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		int mno = memberInfo.getMno();// 어떤 회원 인지
		
		ProductDTO productInfo = productService.getProduct((String)pcode[0]);
		memberInfo.setMileage(productInfo.getPprice());
      
      //int mno = 1;

      OrderItemListDTO oild = new OrderItemListDTO();
      oild.setPtype(ptype);
      oild.setOreceivername(oreceivername);
      oild.setOreceiverphone1(oreceiverphone1);
      //지금 jsp에서 넘어오지가 않아서 잠시 임시로 설정
      oild.setOreceiverphone2("아무거나");
      oild.setOcomment(ocomment);
      oild.setMno(mno);
      oild.setOdate(new Date());
      oild.setOstate(0);
      oild.setPmonth(0);
      oild.setAno(ano);
      oild.setPcode(pcode[0]);
      
      System.out.println("oild : " + oild);

      AddressDTO address = new AddressDTO();
      address.setApostcode(apostcode);
      address.setAaddress1(aaddress1);
      address.setAaddress2(aaddress2);
      address.setMno(mno);
      address.setAno(ano);
      
      System.out.println("address : " + address);
      
       String checkedItems = session.getAttribute("checkedItems").toString();
       int itemsLength = Integer.parseInt(session.getAttribute("itemsLength").toString());

      //주문된 정보를 orderitemlist와 orderitem에 저장해준다
      orderService.paymentOrder(oild, address, checkedItems, itemsLength);
      memberService.decreaseMemberMileage(memberInfo);

      session.removeAttribute("checkedItems");
      session.removeAttribute("itemsLength");

      return "redirect:/member/myorders";
   }

   @RequestMapping("/ordercomplete")
   public String orderComplete() {
      logger.info("실행");
      return "order/ordercomplete";
   }

   @RequestMapping(value = "/getBaseAddress", produces = "application/json; charset=UTF-8")
   @ResponseBody
   public String getBaseAddress(int mno) {
      JSONObject jsonObject = new JSONObject();
      AddressDTO address = addressService.getBaseAddress(mno);

      jsonObject.put("ano", address.getAno());
      jsonObject.put("postcode", address.getApostcode());
      jsonObject.put("address1", address.getAaddress1());
      jsonObject.put("address2", address.getAaddress2());
      String json = jsonObject.toString();

      return json;
   }

   @RequestMapping(value = "/getAddresses", produces = "application/json; charset=UTF-8")
   @ResponseBody
   public String getAddresses(int mno) {
      List<AddressDTO> addresses = addressService.getAddresses(mno);
      JSONArray jsonArray = new JSONArray();

      for (AddressDTO ad : addresses) {
         JSONObject tmpObject = new JSONObject();
         tmpObject.put("ano", ad.getAno());
         tmpObject.put("postcode", ad.getApostcode());
         tmpObject.put("address1", ad.getAaddress1());
         tmpObject.put("address2", ad.getAaddress2());
         jsonArray.put(tmpObject);
      }

      JSONObject jsonObject = new JSONObject();
      jsonObject.put("addresses", jsonArray);
      String json = jsonObject.toString();

      return json;
   }
}