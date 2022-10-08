package com.thehandsome.app.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.mapper.BrandMapper;

@Service
public class BrandService {
	private static final Logger logger = LoggerFactory.getLogger(BrandService.class);

	@Resource
	private BrandMapper brandMapper;

	public List<BrandDTO> getBrandList() {
		return brandMapper.selectAllBrands();
	}
}
