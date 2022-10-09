package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	long isdupluid(String uid);

}
