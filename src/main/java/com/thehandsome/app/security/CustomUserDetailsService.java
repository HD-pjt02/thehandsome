package com.thehandsome.app.security;

import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.thehandsome.app.dto.Member;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		
		System.out.println("Load User" + username);
		MemberDTO memberInfo = mapper.findById(username);
		
		if(memberInfo == null) {
			throw new UsernameNotFoundException(username);
		}
		Member user = new Member(memberInfo.getId(), memberInfo.getPassword(), authorities(memberInfo));
		return user;
	}
	
	
	
	private static Collection authorities(MemberDTO memberDTO){
        Collection authorities = new ArrayList<>();
        if(memberDTO.getRole().equals("ROLE_ADMIN")){
            authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        }{
        	System.out.println("role_member");
            authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"));
        }
        return authorities;
    }

}

	