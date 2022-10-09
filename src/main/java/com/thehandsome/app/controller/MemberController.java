package com.thehandsome.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	@RequestMapping(value="/joinstart", method= {RequestMethod.GET,RequestMethod.POST})
	public String joinstart() {
		log.info("회원가입 시작 폼");
		return "member/joinstart";
	
	}
	
	@RequestMapping(value="/joinprovision", method= {RequestMethod.GET,RequestMethod.POST})
	public String joinprovision() {
		log.info("회원가입 동의 폼");
		return "member/joinprovision";
	
	}
	
	@RequestMapping(value="/joininfoform", method= {RequestMethod.GET,RequestMethod.POST})
	public String joininfoform() {
		log.info("회원가입 정보 입력 폼");
		return "member/joininfoform";
	
	}
	
	@RequestMapping(value="/joincomplete", method= {RequestMethod.GET,RequestMethod.POST})
	public String joincomplete() {
		log.info("회원가입 완료 폼");
		return "member/joincomplete";
	
	}
	
	
	@RequestMapping(value="/login", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		log.info("로그인 폼");
		return "member/login";
	
	}
	
}