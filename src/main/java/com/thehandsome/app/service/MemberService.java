package com.thehandsome.app.service;

import com.thehandsome.app.dto.MemberDTO;

public interface MemberService {

	String isdupluid(String uid);

	String joinEmail(String userMail);

	Long joinMember(MemberDTO memberDTO);

	MemberDTO memberLogin(MemberDTO memberDTO);

	MemberDTO getMember(int parseInt);

}
