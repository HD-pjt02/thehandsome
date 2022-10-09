package com.thehandsome.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.mapper.MemberMapper;
import com.thehandsome.app.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public long isdupluid(String uid) {
		return memberMapper.isdupluid(uid);
	}

}
