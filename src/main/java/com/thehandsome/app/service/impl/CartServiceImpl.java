package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.mapper.CartMapper;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.service.OrderService;

@Service
public class CartServiceImpl implements CartService {
   private static final Logger logger = LoggerFactory.getLogger(CartService.class);

   @Resource
   private CartMapper cartMapper;

   @Resource
   private OrderService orderService;

   public int insertCart(CartDTO cart) {
      return cartMapper.insertProduct(cart);
   }

   public int updateCart(CartDTO cart) {
      return cartMapper.updateProduct(cart);
   }

   public int deleteCart(int cartno) {
      return cartMapper.deleteProduct(cartno);
   }

   public int selectCartno(CartDTO cart) {
      return cartMapper.selectProductNo(cart);
   }

   public List<CartDTO> getCartProducts(int mno) {
      return cartMapper.selectCartProducts(mno);
   }

   public CartDTO getCartProduct(int cartno) {
      return cartMapper.selectCartProduct(cartno);
   }
}