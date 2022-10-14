package com.thehandsome.app.mapper;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
/* ?ûë?Ñ±?ûê : ?†ï?äπ?ïò
 * ?ûë?Ñ±?ùº : 2022.10.18.?õî
 * ?ÉÅ?íà?óê Í¥??†®?êú DB ?ò∏Ï∂úÏùÑ Í¥?Î¶¨Ìïò?äî Î©îÌçº?Å¥?ûò?ä§
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
