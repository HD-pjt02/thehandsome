package com.thehandsome.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.mapper.MemberMapper;
import com.thehandsome.app.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public Long isdupluid(String uid) {
		return memberMapper.isdupluid(uid);
	}

}
