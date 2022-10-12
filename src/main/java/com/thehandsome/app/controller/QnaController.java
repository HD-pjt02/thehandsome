/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaController(문의 컨트롤러)
 */
package com.thehandsome.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thehandsome.app.dto.QnaDTO;
import com.thehandsome.app.service.QnaService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/qna")
public class QnaController {
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@Autowired
	private QnaService qnaservice;
	
	
	//qna입력 페이지로 이동
	@RequestMapping(value = "mtmInqrReg", method = RequestMethod.GET)
		public void qnaInsertGet() {
		log.info("qna 입력 페이지 진입");
	}
	
	//qna입력 페이지 
		@RequestMapping(value = "/mtmInqrReg", method = RequestMethod.POST)
		public String qnaPOST(QnaDTO qna) throws Exception {
			
			log.info("qna입력 페이지 진입");
			
			//qna 입력 서비스 실행
			qnaservice.qnainsert(qna);
			
			log.info("qna service 성공");
			
			return "redirect:/main";
					
	}
		
		//qna조회 페이지로 이동
		@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
			public void qnaSelectGet() {
			log.info("qna 조회 페이지 진입");
		}
		
		//qna조회
		@RequestMapping(value = "customerCenterMain", method = RequestMethod.POST)
		public void productGetDetail(Model model) {
			int nMo = 1;
			model.addAttribute("qnaInfoList", qnaservice.qnaselect(nMo));
			System.out.println(model);
		}
		
		
		
}