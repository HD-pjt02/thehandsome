package com.thehandsome.app.controller;

import javax.annotation.Resource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thehandsome.app.service.MemberService;
import com.thehandsome.app.service.ProductService;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Resource
	private ProductService productService;
	
	@Resource
	private MemberService memberService;


}
