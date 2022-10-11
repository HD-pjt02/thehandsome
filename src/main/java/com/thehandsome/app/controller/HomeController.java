package com.thehandsome.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/")
@Log4j
public class HomeController {
	@RequestMapping(value="",  method= {RequestMethod.GET})
	public String home() {
		log.info("실행");
		return "main";
	
	}
	
}