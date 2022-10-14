package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.mapper.CategoryMapper;
import com.thehandsome.app.service.CategoryService;
import com.thehandsome.app.dto.CategoryDTO;

@Service
public class CategoryServiceImpl  implements CategoryService {
	private static final Logger logger = LoggerFactory.getLogger(CategoryService.class);

	@Resource
	private CategoryMapper categoryMapper;

	public List<CategoryDTO> getCategoryMedium(CategoryDTO forMedium) {
		//logger.info("List<CategoryDTO> getCategoryMedium(CategoryDTO forMedium)" + forMedium + "?‹¤?–‰");
		return categoryMapper.selectCategoryMedium(forMedium);
	}
	
	public List<CategoryDTO> getCategorySmall(CategoryDTO forSmall) {
		//logger.info("List<CategoryDTO> getCategorySmall(CategoryDTO forSmall)" + forSmall + "?‹¤?–‰");
		return categoryMapper.selectCategorySmall(forSmall);
	}
}