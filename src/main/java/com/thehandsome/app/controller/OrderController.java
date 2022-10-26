////package com.thehandsome.app.controller;
////
////import java.util.ArrayList;
////import java.util.Date;
////import java.util.List;
////import java.util.StringTokenizer;
////
////import javax.annotation.Resource;
////import javax.servlet.http.HttpServletRequest;
////import javax.servlet.http.HttpSession;
////
////import org.json.JSONArray;
////import org.json.JSONObject;
////import org.slf4j.Logger;
////import org.slf4j.LoggerFactory;
////import org.springframework.stereotype.Controller;
////import org.springframework.web.bind.annotation.GetMapping;
////import org.springframework.web.bind.annotation.RequestMapping;
////import org.springframework.web.bind.annotation.ResponseBody;
////
////import com.thehandsome.app.dto.AddressDTO;
////import com.thehandsome.app.dto.BrandDTO;
////import com.thehandsome.app.dto.MemberDTO;
////import com.thehandsome.app.dto.ProductDTO;
////import com.thehandsome.app.dto.ColorDTO;
////import com.thehandsome.app.dto.OrderItemListDTO;
////import com.thehandsome.app.dto.CartDTO;
////import com.thehandsome.app.service.AddressService;
////import com.thehandsome.app.service.MemberService;
////import com.thehandsome.app.service.OrderService;
////import com.thehandsome.app.service.ProductService;
////import com.thehandsome.app.service.CartService;
/////* 작성자 : 김민석
//// * 작성일 : 2022.10.22.토
//// * 주문처리하는 Controller
//// */
////@Controller
////@RequestMapping("/order")
////public class OrderController {
////   private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
////
////   @Resource
////   private CartService cartService;
////
////   @Resource
////   private ProductService productService;
////
////   @Resource
////   private MemberService memberService;
////
////   @Resource
////   private OrderService orderService;
////
////   @Resource
////   private AddressService addressService;
////
////   @RequestMapping("/ordering")
////   public String order(HttpSession session, HttpServletRequest request) {
////      logger.info("ordering 실행");
////
////      // 결제 총액을 저장한다.
////      int total = 0;
////      // 배송비를 저장한다.
////      int post = 2500;
////
////      int itemsLength = Integer.parseInt(session.getAttribute("itemsLength").toString());
////      String checkedItems = session.getAttribute("checkedItems").toString();
////
////      List<CartDTO> carts = new ArrayList<CartDTO>();
////
////      StringTokenizer st = new StringTokenizer(checkedItems, ",");
////
////      for (int i = 0; i < itemsLength; i++) {
////         int cartno = Integer.parseInt(st.nextToken());
////
////         CartDTO cart = cartService.getCartProduct(cartno);
////         ProductDTO p = productService.getProduct(cart.getPcode());
////
////         List<ColorDTO> colors = productService.getProductColor(p);
////         cart.setColors(colors);
////
////         for (int j = 0; j < colors.size(); j++) {
////            if (cart.getPcolor().equals(colors.get(j).getPcolor())) {
////               cart.setColoridx(j);
////               break;
////            }
////         }
////
////         cart.setBname(p.getBname());
////         cart.setPname(p.getPname());
////         cart.setPprice(p.getPprice());
////         total += p.getPprice() * cart.getPamount();
////         carts.add(cart);
////      }
////
////      if (total > 30000) {
////         post = 0;
////      }
////
////      request.setAttribute("carts", carts);
////      request.setAttribute("total", total);
////      request.setAttribute("post", post);
////      
////      //Integer.parseInt(session.getAttribute("mno").toString())
////      MemberDTO member = memberService.getMember(10);
////      String phone = member.getPhone();
////      //System.out.println(콜);
////      phone = phone.substring(0, 3) + "-" + phone.substring(3, 7) + "-" + phone.substring(7);
////      member.setPhone(phone);
////      request.setAttribute("member", member);
////      
////      return "order/order";
////   }
////
////   @RequestMapping("/orderpayment")
////   public String orderPayment(String ptype, String acode, String aaddress1, String aaddress2, String oreceivername,
////         String oreceiverphone1, String oreceiverphone2, String ocomment, int ano, HttpSession session) {
////      logger.info("orderpayment 실행");
////      //int mno = Integer.parseInt(session.getAttribute("mno").toString());
////      int mno = 1;
////
////      OrderItemListDTO oild = new OrderItemListDTO();
////      oild.setPtype(ptype);
////      oild.setOreceivername(oreceivername);
////      oild.setOreceiverphone1(oreceiverphone1);
////      oild.setOreceiverphone2(oreceiverphone2);
////      oild.setOcomment(ocomment);
////      oild.setMno(mno);
////      oild.setOdate(new Date());
////      oild.setOstate(0);
////      oild.setPmonth(0);
////      oild.setAno(ano);
////
////      AddressDTO address = new AddressDTO();
////      address.setAcode(acode);
////      address.setAddr1(aaddress1);
////      address.setAddr2(aaddress2);
////      address.setMno(mno);
////      address.setAno(ano);
////      
////      String checkedItems = session.getAttribute("checkedItems").toString();
////      int itemsLength = Integer.parseInt(session.getAttribute("itemsLength").toString());
////
////      orderService.paymentOrder(oild, address, checkedItems, itemsLength);
////
////      session.removeAttribute("checkedItems");
////      session.removeAttribute("itemsLength");
////
////      return "redirect:/member/myorders";
////   }
////
////   @RequestMapping("/ordercomplete")
////   public String orderComplete() {
////      logger.info("실행");
////      return "order/ordercomplete";
////   }
////
////   @RequestMapping(value = "/getBaseAddress", produces = "application/json; charset=UTF-8")
////   @ResponseBody
////   public String getBaseAddress(int mno) {
////      JSONObject jsonObject = new JSONObject();
////      AddressDTO address = addressService.getBaseAddress(mno);
////
////      jsonObject.put("ano", address.getAno());
////      jsonObject.put("postcode", address.getAcode());
////      jsonObject.put("address1", address.getAddr1());
////      jsonObject.put("address2", address.getAddr2());
////      String json = jsonObject.toString();
////
////      return json;
////   }
////
////   @RequestMapping(value = "/getAddresses", produces = "application/json; charset=UTF-8")
////   @ResponseBody
////   public String getAddresses(int mno) {
////      List<AddressDTO> addresses = addressService.getAddresses(mno);
////      JSONArray jsonArray = new JSONArray();
////
////      for (AddressDTO ad : addresses) {
////         JSONObject tmpObject = new JSONObject();
////         tmpObject.put("ano", ad.getAno());
////         tmpObject.put("postcode", ad.getAcode());
////         tmpObject.put("address1", ad.getAddr1());
////         tmpObject.put("address2", ad.getAddr2());
////         jsonArray.put(tmpObject);
////      }
////
////      JSONObject jsonObject = new JSONObject();
////      jsonObject.put("addresses", jsonArray);
////      String json = jsonObject.toString();
////
////      return json;
////   }
////}

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
/* 작성자 : 김민석
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
	  MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
      logger.info("ordering 실행");

      // 결제 총액을 저장한다.
      int total = 0;
      // 배송비를 저장한다.
      int post = 2500;
//미림 요거 바로주문할 때도 세션에 담아주세요
      int itemsLength = Integer.parseInt(session.getAttribute("itemsLength").toString());
      String checkedItems = session.getAttribute("checkedItems").toString();
      System.out.println(itemsLength);
      System.out.println(checkedItems);
      

      List<CartDTO> carts = new ArrayList<CartDTO>();

      StringTokenizer st = new StringTokenizer(checkedItems, ",");

      for (int i = 0; i < itemsLength; i++) {
         int cartno = Integer.parseInt(st.nextToken());

         CartDTO cart = cartService.getCartProduct(cartno);
         //미림 여기에서 오류나는데 원인이 세션에 없어서 그렇습ㄴ디ㅏ
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
     // request.setAttribute("mileage", memberInfo.getMileage());
      
      System.out.println(carts);
      System.out.println(total);
      System.out.println(post);
      
      
      //Integer.parseInt(session.getAttribute("mno").toString())
      //MemberDTO member = memberService.getMember(memberInfo.getMno());
      String phone = memberInfo.getPhone();
      //System.out.println(phone);
      phone = phone.substring(0, 3) + "-" + phone.substring(3, 7) + "-" + phone.substring(7);
      memberInfo.setPhone(phone);
      request.setAttribute("member", memberInfo);
      System.out.println(memberInfo);
      return "order/order";
   }

   @RequestMapping("/orderpayment")
   public String orderPayment(String ptype, String apostcode, String aaddress1, String aaddress2, String oreceivername,
         String oreceiverphone1, String oreceiverphone2, String ocomment, int ano, HttpSession session) {
      logger.info("orderpayment 실행");
      
      
      //int mno = Integer.parseInt(session.getAttribute("mno").toString());
      
      int mno = 1;

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
