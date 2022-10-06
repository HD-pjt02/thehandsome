package com.thehandsome.controller;

import org.slf4j.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	//���� ������ �̵�
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		
		logger.info("���� ������ ����");
		
	}
}
