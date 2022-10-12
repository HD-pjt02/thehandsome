package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;

/* 작성자 : 정승하
 * 작성일 : 2022.10.17.월
 * 상품에 관련된 DB 호출을 관리하는 인터페이스
 */
public interface ProductService {
	
	public ProductDTO getProduct(String pcode);
	
	public List<ProductDTO> getProducts(BrandDTO bname, CategoryDTO category, PageDTO page);
	
	public List<ColorDTO> getProductColor(ProductDTO pcode);
	
	public int getTotalProductNum(CategoryDTO category);
	
	public int getTotalProductNumIncludeBrand(BrandDTO brand, CategoryDTO category);
	
	public StockDTO getProductStock(String pcode);
	
	public List<StockDTO> getProductSize(ProductDTO pcode);

}
