package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.WishlistDTO;
import com.thehandsome.app.mapper.WishlistMapper;
import com.thehandsome.app.service.WishlistService;

@Service
public class WishlistServiceImpl implements WishlistService{

	@Resource
	private WishlistMapper wishlistMapper;
	
	@Override
	public Long insertWishProduct(WishlistDTO wishlistDTO) {
		return wishlistMapper.insertWishProduct(wishlistDTO);
	}

	@Override
	public Long deleteWishProduct(WishlistDTO wishlistDTO) {
		
		return wishlistMapper.deleteWishProduct(wishlistDTO);
	}

	@Override
	public Long selectWishlistYN(WishlistDTO wishlistDTO) {
	
		return wishlistMapper.selectWishlistYN(wishlistDTO);
	}

	@Override
	public List<WishlistDTO> getMemberWishlist(MemberDTO memberInfo) {
		return wishlistMapper.getMemberWishlist(memberInfo);
	}

}
