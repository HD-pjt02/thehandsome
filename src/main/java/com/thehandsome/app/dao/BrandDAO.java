package com.thehandsome.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.BrandDTO;

@Mapper
public interface BrandDAO {
	public List<BrandDTO> selectAllBrands();
}
