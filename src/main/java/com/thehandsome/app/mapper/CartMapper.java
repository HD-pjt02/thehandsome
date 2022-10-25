package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.CartDTO;

@Mapper
public interface CartMapper {
   
   public int insertProduct(CartDTO cart);
   
   public int updateProduct(CartDTO cart);
   
   public int deleteProduct(int sbno);
   
   public int selectProductNo(CartDTO cart);
   
   public List<CartDTO> selectCartProducts(int mno);
   
   public CartDTO selectCartProduct(int cartno);
   
}