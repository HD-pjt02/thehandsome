package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.ReviewDTO;
import com.thehandsome.app.mapper.ProductMapper;
import com.thehandsome.app.mapper.ReviewMapper;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/* 작성자 : 신미림
 * 작성일 : 2022.10.18.화
 * 리뷰에 관련된 DB 호출을 관리하는 serviceimplements
 */

@Slf4j
@Service
@AllArgsConstructor
public class ReviewServicelmpl implements ReviewService{
	
	private static final Logger logger = LoggerFactory.getLogger(ProductService.class);

	@Resource
	private ReviewMapper reviewMapper;

	@Override
	public List<ReviewDTO> getReviewList(ReviewDTO reviewDTO) {
		return reviewMapper.getReviewList(reviewDTO);
	}
	
	@Override
	public ReviewDTO getColorProduct(ReviewDTO reviewDTO) {
		return reviewMapper.getColorProduct(reviewDTO);
	}

	@Override
	public Long insertReview(ReviewDTO reviewDTO) {
		return reviewMapper.insertReview(reviewDTO);
	}

}