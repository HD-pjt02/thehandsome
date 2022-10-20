/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.18.월
 * CartService(장바구니) 인터페이스
 */
package com.thehandsome.app.service;

import com.thehandsome.app.dto.CartDTO;

public interface CartService {
	
	/* 장바구니 추가 */
	public int addCart(CartDTO cart);
}
