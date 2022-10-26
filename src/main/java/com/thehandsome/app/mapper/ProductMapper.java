package com.thehandsome.app.mapper;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
/* 작성자 : 정승하
 * 작성일 : 2022.10.18.월
 * 상품에 관련된 DB 호출을 관리하는 메퍼클래스
 */
@Mapper
public interface ProductMapper {
	/* 상품 선택 후 상품 상세페이지에서 상품 정보 반환 */
	public ProductDTO selectProduct(String pcode);
	
	/* 브랜드 상품 카테고리 필터링*/
	public List<ProductDTO> filterProductsBrandDropdownLarge(CategoryDTO category);
	
	/* 브랜드 상품 카테고리(대) 필터링*/
	public List<ProductDTO> filterProductsBrandDropdownMedium(CategoryDTO category);
	
	/* 브랜드 상품 카테고리(대,중) 필터링*/
	public List<ProductDTO> filterProductsBrandDropdownSmall(CategoryDTO category);
	
	/* 브랜드 상품 카테고리(대,중,소) 필터링*/
	public List<ProductDTO> filterProductsBrandDropdown(CategoryDTO category);
	
	/* 컬러 필터링*/
	public List<ColorDTO> filterProductsColorDropdownLarge(CategoryDTO category);
	
	/* 필터링*/
	public List<ProductDTO> filterProducts(HashMap<String, Object> categoryPage);
	
	/* 컬러  상품 카테고리(대) 필터링*/
	public List<ColorDTO> filterProductsColorDropdownMedium(CategoryDTO category);
	
	/* 컬러  상품 카테고리(대,중) 필터링*/
	public List<ColorDTO> filterProductsColorDropdownSmall(CategoryDTO category);
	
	/* 컬러  상품 카테고리(대,중,소) 필터링*/
	public List<ColorDTO> filterProductsColorDropdown(CategoryDTO category);
	
	/* 상품 카테고리(대,중,소) 검색 후 상품 리스트 반환*/
	public List<ProductDTO> selectProducts(HashMap<String, Object> categoryPage);	
	
	/* 상품 카테고리(대) 검색 후 상품 리스트 반환*/
	public List<ProductDTO> selectProductsNoMedium(HashMap<String, Object> categoryPage);
	
	/* 상품 카테고리(대,중) 검색 후 상품 리스트 반환*/
	public List<ProductDTO> selectProductsNoSmall(HashMap<String, Object> categoryPage);
	
	/* 상품 색상 검색*/
	public List<ColorDTO> selectProductColor(ProductDTO pcode);
	
	/* 상품 사이즈 검색*/
	public List<StockDTO> selectProductSize(ProductDTO pcode);
	
	/* */
	public StockDTO selectProductStock(String pcode);
	/* */
	public int count(CategoryDTO category);
	/* */
	public int countNoMedium(CategoryDTO category);
	/* */
	public int countNoSmall(CategoryDTO category);
	/* */
	public int countNoLarge(CategoryDTO category);
	/* */
	public int countNoLargeIncludeBrand(HashMap<String, Object> categoryPage);
	/* */
	public List<ProductDTO> selectProductsBrand(HashMap<String, Object> categoryPage);
	
	/* 가격 소팅 테스트*/
	public List<ProductDTO> selectProductsPrice(HashMap<String, Object> categoryPage);
	
	/* 색상 소팅 테스트*/
	public List<ColorDTO> selectProductsColor(HashMap<String, Object> categoryPage);
	
	public StockDTO selectCartStock(String pcodeSelected, String colorSelected, String sizeSelected);

	public ColorDTO getCurrentProductColor(String productCode);
	
	
}
