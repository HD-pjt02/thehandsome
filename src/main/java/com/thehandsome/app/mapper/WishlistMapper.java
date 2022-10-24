package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.WishlistDTO;

@Mapper
public interface WishlistMapper {

	Long insertWishProduct(WishlistDTO wishlistDTO);

	Long deleteWishProduct(WishlistDTO wishlistDTO);

	Long selectWishlistYN(WishlistDTO wishlistDTO);
}
