package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.dto.WishlistDTO;

/* 작성자 : 정승하,신미림
 * 작성일 : 2022.10.17.월
 * 상품에 관련된 DB 호출을 관리하는 인터페이스
 */
public interface ProductService {
	
	public ProductDTO getProduct(String pcode);
	
	public List<ProductDTO> getProducts(BrandDTO bname, CategoryDTO category, PageDTO page);
	
	/* 선택한 카테고리를 브랜드 필터링*/
	public List<ProductDTO> filterProductsBrand(CategoryDTO category);
	
	/* 선택 카테고리를 색상 필터링*/
	public List<ColorDTO> filterProductsColor(CategoryDTO category);
	
	/* 필터링*/
	public List<ProductDTO> filterProducts(CategoryDTO category, PageDTO page, String[] brandList, ColorDTO color, StockDTO stock,
			ProductDTO product, int orderby);
	
	public List<ColorDTO> getProductColor(ProductDTO pcode);
	
	public int getTotalProductNum(CategoryDTO category);
	
	public int getTotalProductNumIncludeBrand(BrandDTO brand, CategoryDTO category);
	
	public StockDTO getProductStock(String pcode);
	
	public List<StockDTO> getProductSize(ProductDTO pcode);

	public StockDTO getCartStock(String pcodeSelected, String colorSelected, String sizeSelected);

	public ColorDTO getCurrentProductColor(String productCode);

	public ColorDTO getMemberOrderProduct(OrderItemListDTO order);

	public ColorDTO getMemberWishProduct(WishlistDTO wish);
}
