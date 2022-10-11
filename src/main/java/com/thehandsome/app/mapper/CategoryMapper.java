package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.CategoryDTO;

@Mapper
public interface CategoryMapper {
	public List<CategoryDTO> selectCategoryMedium(CategoryDTO forMedium);
	public List<CategoryDTO> selectCategorySmall(CategoryDTO forSmall);
}
