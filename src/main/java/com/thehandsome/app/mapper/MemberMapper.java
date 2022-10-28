package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.MemberDTO;
/* 
 * 작성자 : 신미림(추가)
 * 작성일 : 2022.10.24.월
 * 
*/

@Mapper
public interface MemberMapper {

	
	String isdupluid(String uid);

	/*회원가입*/
	Long joinMember(MemberDTO memberDTO);
	/*로그인*/
	MemberDTO memberLogin(MemberDTO memberDTO);
	/*시큐리티*/
	MemberDTO findById(String id);
	/*마일리지업데이트*/
	Long updateMemberMileage(MemberDTO memberDTO);

	Long decreaseMemberMileage(MemberDTO memberInfo);

}
