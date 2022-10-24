package com.thehandsome.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.*;
import com.thehandsome.app.service.*;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping(value = "/mypage/*")
public class MypageController {
   
	@GetMapping(value = "/mypage")
	public void mypage() {
		
		System.out.println("logined member");
	}

   
   
   

}