package com.thehandsome.app.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.app.dto.ProductDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* 
* 작성자 : 정승하
* 작성일 : 2022.10.17.월
* 상품 상세 조회 JUnit 테스트
* JUnit Test 완료
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Test
	public void selectProductTest() {
		
		String pcode = "YN2CAFOT063W";
		
		ProductDTO result = mapper.selectProduct(pcode);
		
		System.out.println("상품 조회 데이터 : " + result);
	}
	
}

