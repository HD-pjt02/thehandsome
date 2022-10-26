package com.thehandsome.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping(value = "/mypage")
public class MypageController {
	
	
	
   
	@GetMapping(value = "/mypage")
	public void mypage() {
		
		log.info("logined member");
	}
	
	
	@GetMapping(value = "/mypoint")
	public void mypoint() {
		
		log.info("mypoint");
	}

	@GetMapping(value = "/myWish")
	public String myWish() {
		
		log.info("myWish");
		return "mypage/myWish";
	}
   
	
	

}