package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.WishlistDTO;

public interface WishlistService {

	Long insertWishProduct(WishlistDTO wishlistDTO);

	Long deleteWishProduct(WishlistDTO wishlistDTO);

	Long selectWishlistYN(WishlistDTO wishlistDTO);

	List<WishlistDTO> getMemberWishlist(MemberDTO memberInfo);


}
