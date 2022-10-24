package com.thehandsome.app.service;

import com.thehandsome.app.dto.WishlistDTO;

public interface WishlistService {

	Long insertWishProduct(WishlistDTO wishlistDTO);

	Long deleteWishProduct(WishlistDTO wishlistDTO);

	Long selectWishlistYN(WishlistDTO wishlistDTO);


}
