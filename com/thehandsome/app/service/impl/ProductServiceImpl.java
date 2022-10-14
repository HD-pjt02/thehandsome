package com.thehandsome.app.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.StockDTO;
import com.thehandsome.app.mapper.ProductMapper;
import com.thehandsome.app.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	private static final Logger logger = LoggerFactory.getLogger(ProductService.class);

	@Resource
	private ProductMapper productMapper;

	public ProductDTO getProduct(String pcode) {
		//logger.info("ProductDTO getProduct(String pcode) ?‹¤?–‰");
		return productMapper.selectProduct(pcode);
	}

	public List<ProductDTO> getProducts(BrandDTO bname, CategoryDTO category, PageDTO page) {
		HashMap<String, Object> categorypage = new HashMap<String, Object>();
		categorypage.put("category", category);
		categorypage.put("page", page);
		categorypage.put("brand", bname);
		
		if (category.getClarge().equals("none")) {
			return productMapper.selectProductsBrand(categorypage);
		} else if (category.getCmedium().equals("none")) {
			return productMapper.selectProductsNoMedium(categorypage);
		} else if (category.getCsmall().equals("none")) {
			return productMapper.selectProductsNoSmall(categorypage);
		}
		return productMapper.selectProducts(categorypage);
	}

	public List<ColorDTO> getProductColor(ProductDTO pcode) {
		return productMapper.selectProductColor(pcode);
	}

	public List<StockDTO> getProductSize(ProductDTO pcode) {
		return productMapper.selectProductSize(pcode);
	}

	public int getTotalProductNum(CategoryDTO category) {
		if (category.getClarge().equals("none")) {
			return productMapper.countNoLarge(category);
		} else if (category.getCmedium().equals("none")) {
			return productMapper.countNoMedium(category);
		} else if (category.getCsmall().equals("none")) {
			return productMapper.countNoSmall(category);
		}
		return productMapper.count(category);
	}

	public int getTotalProductNumIncludeBrand(BrandDTO brand, CategoryDTO category) {
		HashMap<String, Object> categorypage = new HashMap<String, Object>();
		categorypage.put("category", category);
		categorypage.put("brand", brand);
		if (category.getClarge().equals("none")) {
			return productMapper.countNoLargeIncludeBrand(categorypage);
		} else if (category.getCmedium().equals("none")) {
			return productMapper.countNoMedium(category);
		} else if (category.getCsmall().equals("none")) {
			return productMapper.countNoSmall(category);
		}
		return productMapper.count(category);
	}

	public StockDTO getProductStock(String pcode) {
		return productMapper.selectProductStock(pcode);
	}
}
