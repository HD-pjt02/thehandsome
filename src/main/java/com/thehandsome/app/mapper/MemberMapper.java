package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.MemberDTO;

@Mapper
public interface MemberMapper {

	Long isdupluid(String uid);

	Long joinMember(MemberDTO memberDTO);

}
