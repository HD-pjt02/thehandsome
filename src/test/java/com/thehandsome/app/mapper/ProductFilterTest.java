package com.thehandsome.app.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;

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
public class ProductFilterTest {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Test
	public void selectProductTest() {
		
		HashMap<String, Object> categorypage = new HashMap<String, Object>();
		CategoryDTO category = new CategoryDTO();
		category.setClarge("여성");
		category.setCmedium("스커트");
		category.setCsmall("롱/맥시 스커트");
		
		PageDTO page = new PageDTO(12, 10, 100, 1);
		
		String[] brandList = {};
		
		List<String> brands = new ArrayList<String>();
		
		for (int i=0;i<brandList.length;i++) {
			brands.add(brandList[i]);
			System.out.println(brandList[i]);
		}

		System.out.println(brands);

		ColorDTO color = new ColorDTO();
		//color.setPcolor("BLACK");
		color.setPcolor("empty");
		
		StockDTO stock = new StockDTO();
		//stock.setPsize("F");
		stock.setPsize("empty");
		
		ProductDTO product = new ProductDTO();
		/*50만원*/
		//product.setPprice(500000);
		product.setPprice(1);
		
		int orderby = 0;
		
		categorypage.put("category", category);
		categorypage.put("page", page);
		categorypage.put("brands", brands);
		categorypage.put("color", color);
		categorypage.put("stock", stock);
		categorypage.put("product", product);
		categorypage.put("orderby", orderby);
		
		List<ProductDTO> result = mapper.filterProducts(categorypage);
		for (ProductDTO p:result) {
			System.out.println("상품 조회 데이터 price : " +
		 p);
			
		}
	}
	
}