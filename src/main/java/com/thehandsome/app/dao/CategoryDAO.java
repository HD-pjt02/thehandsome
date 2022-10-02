package com.thehandsome.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.CategoryDTO;

@Mapper
public interface CategoryDAO {
	public List<CategoryDTO> selectCategoryLarge(CategoryDTO forLarge);
	public List<CategoryDTO> selectCategoryMedium(CategoryDTO forMedium);
	public List<CategoryDTO> selectCategorySmall(CategoryDTO forSmall);
}