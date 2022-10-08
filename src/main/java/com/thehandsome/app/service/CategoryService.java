package com.thehandsome.app.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.mapper.CategoryMapper;

@Service
public class CategoryService {
	private static final Logger logger = LoggerFactory.getLogger(CategoryService.class);

	@Resource
	private CategoryMapper categoryMapper;
	public List<CategoryDTO> getCategoryLarge(CategoryDTO forLarge) {
		return categoryMapper.selectCategoryLarge(forLarge);
	}

	public List<CategoryDTO> getCategoryMedium(CategoryDTO forMedium) {
		return categoryMapper.selectCategoryMedium(forMedium);
	}
	
	public List<CategoryDTO> getCategorySmall(CategoryDTO forSmall) {
		return categoryMapper.selectCategorySmall(forSmall);
	}
}
