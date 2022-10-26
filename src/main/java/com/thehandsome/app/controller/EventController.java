package com.thehandsome.app.controller;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/event")
public class EventController {

   @Autowired
   MemberService memberService;

   @RequestMapping(value = "", method = RequestMethod.GET)
   public String mypage(HttpSession session, Model model) {
	  if(session.getAttribute("member")!=null) {
         return "event";
	  }
      else
         return "/member/login";

   }
   
   @GetMapping(value = "/wantmileage")
	@ResponseBody
	public String wantmileage(@RequestParam int mileage, HttpSession session) {
		log.info("wantmileage");
		log.info(mileage);
		if(session.getAttribute("member")==null) {
			return "redirect:/member/login";
		}
		
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		memberInfo.setMileage(memberInfo.getMileage()+mileage);
		Long result = memberService.updateMemberMileage(memberInfo);
		
		if(result>=1) {
			return "good";
		}
		else {
			return null;
		}
	}
}