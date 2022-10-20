package com.thehandsome.app.mapper;

import java.util.List;

import com.thehandsome.app.dto.ReviewDTO;

/* 작성자 : 신미림
 * 작성일 : 2022.10.18.화
 * 리뷰에 관련된 DB 호출을 관리하는 mapper 인터페이스
 */
public interface ReviewMapper {

	List<ReviewDTO> getReviewList(ReviewDTO reviewDTO);

	ReviewDTO getColorProduct(ReviewDTO reviewDTO);

	Long insertReview(ReviewDTO reviewDTO);

}
