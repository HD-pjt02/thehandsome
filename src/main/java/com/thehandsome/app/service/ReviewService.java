package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.BrandDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.ReviewDTO;
import com.thehandsome.app.dto.StockDTO;

/* 작성자 : 신미림
 * 작성일 : 2022.10.18.화
 * 리뷰에 관련된 DB 호출을 관리하는 인터페이스
 */
public interface ReviewService {

	List<ReviewDTO> getReviewList(ReviewDTO reviewDTO);
	
	
}
