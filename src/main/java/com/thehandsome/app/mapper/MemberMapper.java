package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	Long isdupluid(String uid);

}
