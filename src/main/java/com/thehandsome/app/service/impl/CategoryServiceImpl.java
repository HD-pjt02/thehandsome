package com.thehandsome.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.mapper.CategoryMapper;
import com.thehandsome.app.service.CategoryService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CategoryServiceImpl implements CategoryService {
	

	@Autowired
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
