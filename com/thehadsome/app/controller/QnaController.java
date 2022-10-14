/* 
 * ?‘?„±? : ê¹?ë¯¼ì„
 * ?‘?„±?¼ : 2022.10.17.?›”
 * QnaController(ë¬¸ì˜ ì»¨íŠ¸ë¡¤ëŸ¬)
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
	
	
	//qna?…? ¥ ?˜?´ì§?ë¡? ?´?™
	@RequestMapping(value = "mtmInqrReg", method = RequestMethod.GET)
		public void qnaInsertGet() {
		log.info("qna ?…? ¥ ?˜?´ì§? ì§„ì…");
	}
	
	//qna?…? ¥ ?˜?´ì§? 
		@RequestMapping(value = "/mtmInqrReg", method = RequestMethod.POST)
		public String qnaPOST(QnaDTO qna) throws Exception {
			
			log.info("qna?…? ¥ ?˜?´ì§? ì§„ì…");
			
			//qna ?…? ¥ ?„œë¹„ìŠ¤ ?‹¤?–‰
			qnaservice.qnainsert(qna);
			
			log.info("qna service ?„±ê³?");
			
			return "redirect:/main";
					
	}
		
		//qnaì¡°íšŒ ?˜?´ì§?ë¡? ?´?™
		@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
			public void qnaSelectGet(Model model) {
			log.info("qna ì¡°íšŒ ?˜?´ì§? ì§„ì…");
			int nMo = 1;
			model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
			System.out.println(model);
		}
		
//		//qnaì¡°íšŒ
//		@RequestMapping(value = "/customerCenterMain")
//		public String productGetDetail(Model model) {
//			int nMo = 1;
//			model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
//			System.out.println(model);
//			return "/qna/customerCenterMain";
//		}
		
		
		
}
