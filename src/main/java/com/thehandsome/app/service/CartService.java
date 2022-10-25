package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CartDTO;

public interface CartService {
   
   public int insertCart(CartDTO cart);
   
   public int updateCart(CartDTO cart);
   
   public int selectCartno(CartDTO cart);
   
   public int deleteCart(int cartno);
   
   public List<CartDTO> getCartProducts(int mno);
   
   public CartDTO getCartProduct(int cartno);
   
}