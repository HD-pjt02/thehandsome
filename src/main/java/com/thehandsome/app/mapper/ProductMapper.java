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
	public ProductDTO selectProduct(String pcode);

	public List<ProductDTO> selectProducts(HashMap<String, Object> categoryPage);

	public List<ProductDTO> selectProductsNoMedium(HashMap<String, Object> categoryPage);

	public List<ProductDTO> selectProductsNoSmall(HashMap<String, Object> categoryPage);

	public List<ColorDTO> selectProductColor(ProductDTO pcode);

	public List<StockDTO> selectProductSize(ProductDTO pcode);

	public StockDTO selectProductStock(String pcode);

	public int count(CategoryDTO category);

	public int countNoMedium(CategoryDTO category);

	public int countNoSmall(CategoryDTO category);

	public int countNoLarge(CategoryDTO category);

	public int countNoLargeIncludeBrand(HashMap<String, Object> categoryPage);

	public List<ProductDTO> selectProductsBrand(HashMap<String, Object> categoryPage);
}
