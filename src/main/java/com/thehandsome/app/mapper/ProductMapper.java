package com.thehandsome.app.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.ProductDTO;

@Mapper
public interface ProductMapper {
	public ProductDTO selectProduct(String pcode);
}
