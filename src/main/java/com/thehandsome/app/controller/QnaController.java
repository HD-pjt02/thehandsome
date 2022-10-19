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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.PagingDTO;
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
		
//		//qna조회 
//		@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
//			public void qnaSelectGet(Model model) {
//			log.info("qna 조회 페이지 진입");
//			int nMo = 1;
//			model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
//		}
		
		@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
		public void qnaSelectGet(PagingDTO vo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			System.out.println("qna 조회 진입");
			int total = qnaservice.countQna();
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}
			vo = new PagingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			model.addAttribute("paging", vo);
			model.addAttribute("viewAll", qnaservice.selectQna(vo));
			
		}
//		

		
		//qna삭제 수행
		@RequestMapping(value = "/qnaDelete", method = RequestMethod.POST)
		public String qnaDelete(int qid, PagingDTO vo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) throws Exception{
		log.info("qna 삭제 진입");
		qnaservice.qnadelect(qid);
		
		log.info("qna service delete 성공");
		
		int total = qnaservice.countQna();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", qnaservice.selectQna(vo));
		
		return "/qna/customerCenterMain";
	    }
		
		
		//qna 뜨면서 뿌려주는거
		@RequestMapping(value = "qnaUpdate", method = RequestMethod.GET)
			public void qnaUpdateGet(int qid, Model model) throws Exception{
			log.info("qna 수정 페이지 진입");
			QnaDTO qnadto = new QnaDTO();		
			
			qnadto = qnaservice.qnaselectDTO(qid);
			model.addAttribute("qnaDTO", qnadto);
			System.out.println(model);
		}
		
		//qna 수정
		
//    //qna수정 버튼 눌렀을 때 진행
	@RequestMapping(value = "/qnaUpdate", method = RequestMethod.POST)
	@ResponseBody
		public String qnaUpdate(@RequestParam("qid")int qid, Model model) {
		log.info("qna 수정전 조회 페이지 진입");
		QnaDTO qnadto = new QnaDTO();		
		qnadto = qnaservice.qnaselectDTO(qid);
		System.out.println(qnadto);
		
		model.addAttribute("qnadto", qnadto);
		
		return "/qna/qnaUpdate";
	}
		
	
//	//qna조회 페이지로 이동
//	@RequestMapping(value = "customerCenterMain", method = RequestMethod.GET)
//		public void qnaSelectGet(Model model) {
//		log.info("qna 조회 페이지 진입");
////		int nMo = 1;
////		model.addAttribute("qnaList", qnaservice.qnaselect(nMo));
//	}
	
	
//	@GetMapping("boardList")
//	public String boardList(PagingDTO vo, Model model
//			, @RequestParam(value="nowPage", required=false)String nowPage
//			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
//		
//		int total = qnaservice.countQna();
//		if (nowPage == null && cntPerPage == null) {
//			nowPage = "1";
//			cntPerPage = "5";
//		} else if (nowPage == null) {
//			nowPage = "1";
//		} else if (cntPerPage == null) { 
//			cntPerPage = "5";
//		}
//		vo = new PagingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
//		model.addAttribute("paging", vo);
//		model.addAttribute("viewAll", qnaservice.selectQna(vo));
//		return "qna/customerCenterMain";
//	}



}

