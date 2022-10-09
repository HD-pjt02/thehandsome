package com.thehandsome.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.mapper.BrandMapper;
import com.thehandsome.app.service.BrandService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BrandServiceImpl implements BrandService{
	

	@Autowired
	private BrandMapper brandMapper;
	
	

	public List<BrandDTO> getBrandList() {
		return brandMapper.selectAllBrands();
	}
}
