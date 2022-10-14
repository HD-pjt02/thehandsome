/* 
 * ?��?��?�� : �?민석
 * ?��?��?�� : 2022.10.17.?��
 * QnaController(문의 컨트롤러)
 */
package com.thehadsome.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	//qna?��?�� ?��?���?�? ?��?��
	@RequestMapping(value = "mtmInqrReg", method = RequestMethod.GET)
		public void qnaInsertGet() {
		log.info("qna ?��?�� ?��?���? 진입");
	}
	
	//qna?��?�� ?��?���? 
		@RequestMapping(value = "/mtmInqrReg", method = RequestMethod.POST)
		public String qnaPOST(QnaDTO qna) throws Exception {
			
			log.info("qna?��?�� ?��?���? 진입");
			
			//qna ?��?�� ?��비스 ?��?��
			qnaservice.qnainsert(qna);
			
			log.info("qna service ?���?");
			
			return "redirect:/main";
					
	}
		
		//qna조회 ?��?���?�? ?��?��
		@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
			public void qnaSelectGet(Model model) {
			log.info("qna 조회 ?��?���? 진입");
			int nMo = 1;
			model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
			System.out.println(model);
		}
		
//		//qna조회
//		@RequestMapping(value = "/customerCenterMain")
//		public String productGetDetail(Model model) {
//			int nMo = 1;
//			model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
//			System.out.println(model);
//			return "/qna/customerCenterMain";
//		}
		
		
		
}
