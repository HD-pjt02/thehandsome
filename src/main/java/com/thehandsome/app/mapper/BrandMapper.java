package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.BrandDTO;

@Mapper
public interface BrandMapper {
	public List<BrandDTO> selectAllBrands();
}
