package com.thehandsome.app.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class Member extends User{
	
	 
	private static final long serialVersionUID = 1L;

	public Member(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}


}
