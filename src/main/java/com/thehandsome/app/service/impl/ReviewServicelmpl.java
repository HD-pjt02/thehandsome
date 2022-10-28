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

	@Override
	public Long insertPhotoReview(ReviewDTO reviewDTO) {
		return reviewMapper.insertPhotoReview(reviewDTO);
	}

	@Override
	public Long selectNextReviewNo() {
		return reviewMapper.selectNextReviewNo();
	}

	@Override
	public Long selectAllReviewCount(ReviewDTO reviewDTO) {
		
		return reviewMapper.selectAllReviewCount(reviewDTO);
	}

	@Override
	public Long selectPhotoReviewCount(ReviewDTO reviewDTO) {
		
		return reviewMapper.selectPhotoReviewCount(reviewDTO);
	}

	@Override
	public Long selectTextReviewCount(ReviewDTO reviewDTO) {
		
		return reviewMapper.selectTextReviewCount(reviewDTO);
	}

	@Override
	public Double selectoReviewRateAvg(ReviewDTO reviewDTO) {
		
		return reviewMapper.selectoReviewRateAvg(reviewDTO);
	}

	@Override
	public Long checkMemberReviewProduct(ReviewDTO reviewDTO) {
		return reviewMapper.checkMemberReviewProduct(reviewDTO);
	}

	@Override
	public Long deleteReview(ReviewDTO reviewDTO) {
		return reviewMapper.deleteReview(reviewDTO);
	}

	

}
