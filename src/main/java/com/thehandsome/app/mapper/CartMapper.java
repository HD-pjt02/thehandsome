/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * CartMapper(장바구니xml과 연결되는 인터페이스)
 */
package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.CartDTO;

@Mapper
public interface CartMapper {
	/* 카트 추가 */
	//cart테이블에 row를 추가하는 메소드
	//반환타입을 int로 할 경우 row 추가 성공 시 1, 
	//실패시 0을 반환하는데 이러한 점을 필요할때 활용하기 위해 int로 지정하였습니다.
	public int addCart(CartDTO cart);
	
	/* 카트 삭제 */
	//cart테이블의 지정한 row를 삭제하는 메서드 입니다
	public int deleteCart(int cartId);
	
	/* 카트 수량 수정 */
	//해당 row의 id값과 수량을 수량을 선택해서 수정??
	public int modifyCount(CartDTO cart);
	
	/* 카트 목록 */
	public List<CartDTO> getCart(int mno);	
	
	/* 카트 확인 */
	//checkCart는 회원정보와 상품 정보를 넘겨서 해당하는 row가 있는지 확인하기 위해 작성한 메서드
	public CartDTO checkCart(CartDTO cart);
	
	
}
