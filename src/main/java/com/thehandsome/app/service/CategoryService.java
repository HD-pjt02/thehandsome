package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CategoryDTO;


public interface CategoryService {
	public List<CategoryDTO> getCategoryMedium(CategoryDTO forMedium);
	
	public List<CategoryDTO> getCategorySmall(CategoryDTO forSmall);
}	
