package com.thehandsome.app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	
	
	/*****************회원가입 관련 기능**********************/
	@RequestMapping(value="/joinstart",  method= {RequestMethod.GET})
	public String joinstart() {
		log.info("회원가입 시작 폼");
		return "member/joinstart";
	
	}
	
	@RequestMapping(value="/joinprovision",  method= {RequestMethod.GET,RequestMethod.POST})
	public String joinprovision(@RequestParam("joincode") String joincode, Model model ) {
		log.info("회원가입 동의 폼");
		String[] code = joincode.split(",");
		String token = code[0];
		String useremail = code[1];
		log.info("token: "+code[0]);
		log.info("useremail: "+code[1]);
		
		model.addAttribute("useremail",useremail);
		model.addAttribute("token",token);
		return "member/joinprovision";
	
	}
	
	@RequestMapping(value="/joininfoform",  method= {RequestMethod.GET})
	public String joininfoform() {
		log.info("회원가입 정보 입력 폼");
		return "member/joininfoform";
	
	}
	
	@RequestMapping(value="/joininfoform",  method= {RequestMethod.POST})
	public String joininfoformaction(@RequestParam Map<String,Object> map,Model model) {
		log.info("회원가입 정보 입력 폼 포스트");
		String token = (String)map.get("CSRFToken");
		String useremail = (String)map.get("uid");
		
		model.addAttribute("useremail", useremail);
		return "member/joininfoform";
	
	}
	
	@RequestMapping(value="/joincomplete",  method= {RequestMethod.POST})
	public String joincompleteaction(@RequestParam Map<String,Object> map) {
		log.info("회원가입 완료 폼");
		String rawPw = (String)map.get("passwd");
		String encodePw = pwEncoder.encode(rawPw);
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String)map.get("uid"));
		memberDTO.setEmail((String)map.get("emailAddress"));
		memberDTO.setBirth((String)map.get("sBirthday"));
		memberDTO.setPassword(encodePw);
		memberDTO.setName((String)map.get("name"));
		
		//String emailReceiveYn = (String)map.get("emailReceiveYn");
		//String collectionAgreementYN = (String)map.get("collectionAgreementYN");
		memberService.joinMember(memberDTO);
		
		return "member/joincomplete";
	
	}
	
	@RequestMapping(value="/joincomplete",  method= {RequestMethod.GET})
	public String joincomplete() {
		log.info("회원가입 완료 폼");
		return "member/joincomplete";
	
	}
	
	@RequestMapping(value="/isdupluid",  method= {RequestMethod.GET})
	public @ResponseBody Boolean isdupluid(@RequestParam Map<String,Object> map) {
		log.info("이메일 중복체크");
		log.info(""+map.get("uid"));
		
		String uid = (String)map.get("uid");
		
//		Map<String,String> msg = new HashMap<String,String>();
//		msg.put("message","good");
//		log.info(""+msg);
		if(memberService.isdupluid(uid)==null) {
			return false;
		}
		else {
			return true;
		}
	
	}
	
	@RequestMapping(value="/easyjoinsendmail",  method= {RequestMethod.GET})
	public @ResponseBody Map<String,String> easyjoinsendmail(@RequestParam Map<String,Object> map) {
		log.info("이메일 인증발송");
		log.info("이메일: "+map.get("userMail"));
		String userMail = (String)map.get("userMail");
		
		 memberService.joinEmail(userMail);
		
		
		Map<String,String> msg = new HashMap<String,String>();
		msg.put("resultCode","S");
		log.info(""+msg);
		return msg;
	
	}
	
	
	
	
	/************************회원가입 관련 끝****************************/
	
	@RequestMapping(value="/login",  method= {RequestMethod.GET})
	public String login() {
		log.info("로그인 폼");
		return "member/login";
	}
	
	@RequestMapping(value="/isduplglobaluid",  method= {RequestMethod.POST})
	public @ResponseBody Map<String,String> isduplglobaluid(@RequestParam Map<String,Object> map) {
		log.info("통합회원 여부 체크");
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String)map.get("uid"));
		memberDTO.setPassword((String)map.get("upw"));
		log.info("id: "+memberDTO.getId());
		log.info("pw: "+memberDTO.getPassword());
		
		Map<String,String> msg = new HashMap<String,String>();
		msg.put("result","exist");
		log.info(""+msg);
		
		return msg;
	}
	
	@RequestMapping(value="/login",  method= {RequestMethod.POST})
	public String loginaction(@RequestParam Map<String,Object> map, Model model,HttpServletRequest request ) {
		log.info("로그인 진행");
		HttpSession session = request.getSession();
		String rawPw = (String)map.get("j_password");
//		String j_username = (String)map.get("j_username");
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId((String)map.get("inputId"));
		MemberDTO memberInfo = memberService.memberLogin(memberDTO);
		String encodePw = memberInfo.getPassword();
	        
		if(memberInfo != null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
		    
		   if(true == pwEncoder.matches(rawPw, encodePw)) {
			   session.setAttribute("member", memberInfo); 
				return "redirect:/";
		   }
		   else {
				model.addAttribute("result", 0);
				return "redirect:/member/login";
		   }
		   
		    
		}else {
			 model.addAttribute("result", 0);
			 return "redirect:/member/login";
		}
		
		
	}
	
}