package com.thehandsome.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
      if (session.getAttribute("session_mid") == null)
         return "event";
      else
         return "/member/login";

   }
}