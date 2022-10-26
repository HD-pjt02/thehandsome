package com.thehandsome.app.service.impl;

import java.util.HashMap;
import java.util.StringTokenizer;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thehandsome.app.dto.AddressDTO;
import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.dto.OrderItemDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.mapper.OrderMapper;
import com.thehandsome.app.service.AddressService;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.OrderService;
/* 작성자 : 김민석
 * 작성일 : 2022.10.22.토
 * 주문 서비스 구현
 */
@Service
public class OrderServiceImpl implements OrderService{
   private static final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);

   @Resource
   OrderMapper ordermapper;

   @Resource
   AddressService addressService;

   @Resource
   CartService cartService;

   // 주문 내역을 추가한다.
   public int insertOrder(OrderItemListDTO orderitemlist, int ano) {
      if (ano == 0) {
         return ordermapper.insertOrderNewAddress(orderitemlist);
      } else {
         return ordermapper.insertOrderOldAddress(orderitemlist);
      }
   }

   public int insertItemToProductOrderItem(OrderItemDTO orderitem) {
      return ordermapper.insertItemToProductOrderItem(orderitem);
   }

   public int decreaseStockAmount(String scode, int amount) {
      HashMap<String, Object> map = new HashMap<String, Object>();
      map.put("scode", scode);
      map.put("amount", amount);

      return ordermapper.decreaseStockAmount(map);
   }



    //결제하기 버튼을 누르고 일어나는 트랜잭션
   @Transactional
   public void paymentOrder(OrderItemListDTO orderitemlist, AddressDTO address, String checkedItems, int itemsLength) {
     try {
     if (address.getAno() == 0) {
        // 현재 배송지를 테이블에 추가한다. (배송지 번호 부여)
        addressService.insertAddress(address);
     }

     // 주문 내역을 orderitemlist에 추가한다. (주문 번호 부여)
     insertOrder(orderitemlist, address.getAno());
     System.out.println(address.getAno());

     StringTokenizer st = new StringTokenizer(checkedItems, ",");

     // 주문 아이템들을 orderitem에 추가한다.
     for (int i = 0; i < itemsLength; i++) {
        int cartno = Integer.parseInt(st.nextToken());
        CartDTO cartdto = cartService.getCartProduct(cartno);
        OrderItemDTO poi = new OrderItemDTO();
        String scode = cartdto.getPcode() + "_" + cartdto.getPcolor() + "_" + cartdto.getPsize();
        poi.setSno(scode);
        poi.setOamount(cartdto.getPamount());
        insertItemToProductOrderItem(poi);

//        // 주문된 상품의 재고를 감소시킨다.
//        decreaseStockAmount(scode, poi.getOamount());

        // 주문된 상품을 쇼핑백에서 제거한다.
        cartService.deleteCart(cartno);
     }
  } catch (Exception e) {
     
     System.out.println("orderitemlist : " + orderitemlist);
     System.out.println("address : "+  address);
     System.out.println("checkedItems : " + checkedItems);
     System.out.println("itemsLength : " + itemsLength);
     
     logger.info("우린 절대 '결제하기'를 실패하지 않는다.");
     e.printStackTrace();
  }
//     try {
//     if (address.getAno() == 0) {
//        // 현재 배송지를 테이블에 추가한다. (배송지 번호 부여)
//        addressService.insertAddress(address);
//     }
//
//     // 주문 내역을 테이블에 추가한다. (주문 번호 부여)
//     insertOrder(orderitemlist, address.getAno());
//
//     StringTokenizer st = new StringTokenizer(checkedItems, ",");
//
//     // 주문 아이템들을 테이블에 추가한다.
//     for (int i = 0; i < itemsLength; i++) {
//        int sbno = Integer.parseInt(st.nextToken());
//        ShoppingBag sb = shoppingbagService.getShoppingProduct(sbno);
//        OrderItemDTO poi = new OrderItemDTO();
//        String scode = sb.getPcode() + "_" + sb.getSbproductcolor() + "_" + sb.getSbproductsize();
//        poi.setScode(scode);
//        poi.setOamount(sb.getSbproductamount());
//        insertItemToProductOrderItem(poi);
//
//        // 주문된 상품의 재고를 감소시킨다.
//        decreaseStockAmount(scode, poi.getOamount());
//
//        // 주문된 상품을 쇼핑백에서 제거한다.
//        cartService.deleteCart(sbno);
//     }
//  } catch (Exception e) {
//     logger.info("우린 절대 '결제하기'를 실패하지 않는다.");
//  }
   }

   @Override
   public Long checkMemberOrderProduct(OrderItemListDTO orderDTO) {
      return ordermapper.checkMemberOrderProduct(orderDTO);
   }

   
}
