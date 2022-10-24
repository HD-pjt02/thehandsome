package com.thehandsome.app.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.thehandsome.app.dto.CustomUserDetails;
import com.thehandsome.app.mapper.UserAuthDAO;

import lombok.extern.log4j.Log4j;


//DB에서 VO객체의 정보를 가져와 사용자 정보를 담는 UserDetails객체로 바꾸는 서비스
@Log4j
@SuppressWarnings("serial")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserAuthDAO userAuthDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserDetails user = userAuthDAO.getUserById(username);
		if(user==null) {
			throw new UsernameNotFoundException(username);
		}
		return user;
	}
	

}

	