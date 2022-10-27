package com.thehandsome.app.mapper;

import java.util.List;

import com.thehandsome.app.dto.ReviewDTO;

/* 작성자 : 신미림
 * 작성일 : 2022.10.18.화
 * 리뷰에 관련된 DB 호출을 관리하는 mapper 인터페이스
 */
public interface ReviewMapper {

	/*작성된 리뷰리스트*/
	List<ReviewDTO> getReviewList(ReviewDTO reviewDTO);
	/*상품정보 가져오기*/
	ReviewDTO getColorProduct(ReviewDTO reviewDTO);
	/*리뷰등록*/
	Long insertReview(ReviewDTO reviewDTO);
	/*리뷰사진첨가등록*/
	Long insertPhotoReview(ReviewDTO reviewDTO);

	Long selectNextReviewNo();
	/*등록된 모든 리뷰 수*/
	Long selectAllReviewCount(ReviewDTO reviewDTO);
	/*등록된 포토리뷰 수*/
	Long selectPhotoReviewCount(ReviewDTO reviewDTO);
	/*등록된 일반리뷰 수 */
	Long selectTextReviewCount(ReviewDTO reviewDTO);
	/*한 상품에 등록된 리뷰 평균 */
	Double selectoReviewRateAvg(ReviewDTO reviewDTO);
	/*구매내역이 있는 회원이 리뷰를 작성했는지 확인*/
	Long checkMemberReviewProduct(ReviewDTO reviewDTO);

	

}
