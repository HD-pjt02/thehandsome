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
* ?‘?„±? : ? •?Š¹?•˜
* ?‘?„±?¼ : 2022.10.17.?›”
* ?ƒ?’ˆ ?ƒ?„¸ ì¡°íšŒ JUnit ?…Œ?Š¤?Š¸
* JUnit Test ?™„ë£?
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
		
		System.out.println("?ƒ?’ˆ ì¡°íšŒ ?°?´?„° : " + result);
	}
	
}

