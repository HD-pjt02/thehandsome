package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.WishlistDTO;
/* 작성자 : 신미림
 * 작성일 : 2022.10.18.화
 * 위시리스트관련 DB 호출을 관리하는 mapper 인터페이스
 */
@Mapper
public interface WishlistMapper {

	/*위시리스트 추가*/
	Long insertWishProduct(WishlistDTO wishlistDTO);
	/*위시리스트 삭제*/
	Long deleteWishProduct(WishlistDTO wishlistDTO);
	/*좋아요 눌러놓은 상품을 유지하기 위함*/
	Long selectWishlistYN(WishlistDTO wishlistDTO);
	//미림 회원 위시리스트 조회
	List<WishlistDTO> getMemberWishlist(MemberDTO memberInfo);
}
