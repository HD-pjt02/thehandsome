package com.thehandsome.app.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
/* 
 * 작성자 : 신미림(추가)
 * 작성일 : 2022.10.24.월
 * 
*/

public class Member extends User{
	
	 
	private static final long serialVersionUID = 1L;

	public Member(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}


}
