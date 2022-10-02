package com.thehandsome.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.ProductDTO;

@Mapper
public interface ProductDAO {
	public ProductDTO selectProduct(String pcode);
}
