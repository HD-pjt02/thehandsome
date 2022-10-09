package com.thehandsome.app.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	
	/*****************회원가입 관련 기능**********************/
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
	
	@RequestMapping(value="/isdupluid", method= {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Boolean isdupluid(@RequestParam Map<String,Object> map) {
		log.info("이메일 중복체크");
		log.info(""+map.get("uid"));
		
		String uid = (String)map.get("uid");
		
//		Map<String,String> msg = new HashMap<String,String>();
//		msg.put("message","good");
//		log.info(""+msg);
		if(memberService.isdupluid(uid)==null) {
			return false;
		}
		else {
			return true;
		}
	
	}
	
	
	/************************회원가입 관련 끝****************************/
	
	@RequestMapping(value="/login", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		log.info("로그인 폼");
		return "member/login";
	
	}
	
}