package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.mapper.BrandMapper;
import com.thehandsome.app.service.BrandService;

@Service
public class BrandServiceImpl  implements BrandService{
	private static final Logger logger = LoggerFactory.getLogger(BrandServiceImpl.class);

	@Resource
	private BrandMapper brandMapper;

	public List<BrandDTO> getBrandList() {
		logger.info("List<BrandDTO> getBrandList() ?‹¤?–‰");
		return brandMapper.selectAllBrands();
	}
}