/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaMapperTests : CartMapper.xml을 test 
 */
package com.thehandsome.app.mapper;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.app.mapper.QnaMapper;
import com.thehandsome.app.service.CartService;
import com.thehandsome.app.dto.*;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTests {

	@Autowired
	private CartMapper cartmapper;
	@Autowired
	private CartService service;
//	//cartAdd 테스트
//	@Test
//	public void cartAdd() throws Exception{
//		int pcount = 3;
//		int mno = 1;
//		String pcode = "OB2C9ABG192W";
//		
//		CartDTO cart  =new CartDTO();
//		cart.setPcount(pcount);
//		cart.setMno(mno);
//		cart.setPcode(pcode);
//		
//		cartmapper.addCart(cart);
//		log.info("카트 add 성공");
//		System.out.println("카트 add 성공");
//		
//	}
	
//	//cartget 테스트
//	@Test
//	public void qnaSelect() throws Exception{	
//		
//		int mno = 1;
//		
//		List<CartDTO> list = cartmapper.getCart(mno);
//		log.info("select 성공");
//		System.out.println(list);
//	}
	
	
	
	//장바구니 등록 테스트
		@Test
		public void addCartTest() {
				CartDTO dto = new CartDTO(); 
				dto.setMno(2);
				dto.setPcode("OB2C9AJW691W");
				
			
			
			
		}

	
	
	
}