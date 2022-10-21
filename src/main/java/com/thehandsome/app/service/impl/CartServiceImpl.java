/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.18.월
 * CartService(장바구니) 인터페이스를 구현한 자바소스파일
 */
package com.thehandsome.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.CartDTO;
import com.thehandsome.app.mapper.CartMapper;
import com.thehandsome.app.service.CartService;


@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartMapper cartmapper;
	
	@Override
	public int addCart(CartDTO cart) {
		
		// 장바구니 데이터 체크
		// 이전 담았던 상품이 있으면 2를 리턴
		CartDTO checkCart = cartmapper.checkCart(cart);
		
		if(checkCart != null) {
			return 2;
		}
		
		// 장바구니 등록 & 에러 시 0반환
		try {
			return cartmapper.addCart(cart);
		} catch (Exception e) {
			return 0;
		}
	}

}
