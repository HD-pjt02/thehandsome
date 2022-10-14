package com.thehandsome.app.service.impl;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.mapper.MemberMapper;
import com.thehandsome.app.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Component
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private JavaMailSenderImpl mailSender; 
	private int authNumber; 
	
	@Value("${email.account}")
	private String from; // email-config?— ?„¤? •?•œ ??‹ ?˜ ?´ë©”ì¼ ì£¼ì†Œë¥? ?…? ¥

	@Override
	public Long isdupluid(String uid) {
		return memberMapper.isdupluid(uid);
	}

	/*?´ë©”ì¼ ?¸ì¦?*/
	// ?‚œ?ˆ˜ ë°œìƒ
	public void makeRandomNumber() {
		// ?‚œ?ˆ˜?˜ ë²”ìœ„ 111111 ~ 999999 (6?ë¦? ?‚œ?ˆ˜)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("?¸ì¦ë²ˆ?˜¸ : " + checkNum);
		authNumber = checkNum;
	}

	// ?´ë©”ì¼ ë³´ë‚¼ ?–‘?‹!
	@Override
	public String joinEmail(String email) {
		makeRandomNumber();
		
		String setFrom = from;
		String toMail = email;
		String title = "[?”?•œ?„¬?‹·ì»?]?´ë©”ì¼ ?¸ì¦? ?•ˆ?‚´ ë©”ì¼?…?‹ˆ?‹¤."; // ?´ë©”ì¼ ? œëª?
		String content = "<table style=\"width:760px; padding:60px 20px 30px; margin:0 auto;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"    <tbody><tr><td>\r\n" + 
				"                <table style=\"width:760px; padding:0 0 5px; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <tbody><tr><td style=\"text-align:left; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com\" target=\"_blank\" style=\"border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\"><img src=\"http://www.thehandsome.com/_ui/desktop/common/images/email/logo.gif\" alt=\"THEHANDSOME.COM\" border=\"0\" loading=\"lazy\"></a>\r\n" + 
				"                            </td><td style=\"text-align:right; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/member/login\" target=\"_blank\" style=\"color:#363636; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-decoration:none; border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\">ë¡œê·¸?¸</a>\r\n" + 
				"                                <span style=\"color:#e7e4d7; font-size:11px; line-height:11px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/svcenter/submain\" target=\"_blank\" style=\"color:#363636; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-decoration:none; border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\">ê³ ê°?„¼?„°</a>\r\n" + 
				"                            </td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr><tr><td style=\"color:#363636; font-size:11px; line-height:11px; font-family:Dotum,sans-serif; font-weight:normal; text-align:right; border:0; border-top:1px solid #000; padding:10px 0 0;\"> 2022-10-09 </td></tr><tr><td style=\"color:#222; font-size:26px; line-height:40px; font-family:Malgun Gothic, Dotum, sans-serif; font-weight:bold; text-align:center; border:0; padding:50px 0 0; margin:0;\">?´ë©”ì¼ ?¸ì¦? ?•ˆ?‚´ ë©”ì¼?…?‹ˆ?‹¤.</td></tr><tr><td style=\"color:#222; font-size:16px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:15px 0 0;\">\r\n" + 
				"            ?”?•œ?„¬?‹·ì»´ì? ?•ˆ? „?•˜ê³? ?¸ë¦¬í•œ ?„œë¹„ìŠ¤ë¥? ? œê³µí•˜ê¸? ?œ„?•´ ìµœì„ ?„ ?‹¤?•©?‹ˆ?‹¤.\r\n" + 
				"            </td></tr><tr><td style=\"height:50px;border:0; padding:0; margin:0;\"></td></tr><tr><td style=\"width:760px; height:50px; border:0; border-top:1px solid #e3e3e3; padding:0;\">\r\n" + 
				"            </td></tr><tr><td style=\"color:#222; font-size:12px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:30px 0 0;\">\r\n" + 
				"            ?šŒ?›ê°??…?„ ?•˜ê¸? ?œ„?•´ ?•„?˜ ?´ë©”ì¼ ?¸ì¦í•˜ê¸? ë²„íŠ¼?„ ?´ë¦??•´ì£¼ì„¸?š”.\r\n" + 
				"            </td></tr><tr><td style=\"height:10px;border:0; padding:0; margin:0;\"></td></tr><tr><td style=\"text-align:center; padding:20px 0 0;\">\r\n" + 
				"                <a href=\"http://localhost:8085/member/joinprovision?joincode="+authNumber+","+toMail+"\" target=\"_blank\" style=\"display:inline-block; color:#ffffff; font-size:14px; line-:14px; font-family:dotum,sans-serif; font-weight:bold; text-decoration:none; background-color:#474747; border:0; padding:14px 25px; margin:0;\" rel=\"noreferrer noopener\">?´ë©”ì¼ ?¸ì¦í•˜ê¸?</a>\r\n" + 
				"            </td></tr><tr><td style=\"color:#222; font-size:12px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:10px 0 0;\">\r\n" + 
				"            ?¸ì¦? ?œ ?š¨?‹œê°? : 30ë¶? ?´?‚´\r\n" + 
				"            </td></tr><tr><td style=\"height:120px;border:0; padding:0; margin:0;\"></td></tr><tr><td>\r\n" + 
				"                <table style=\"width:760px; background:#f5f5f5; padding:15px 30px 15px 20px; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <colgroup><col style=\"width:10px\"><col style=\"width:700px\"></colgroup>\r\n" + 
				"                    <tbody><tr><td style=\"color:#999; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:top; border:0; padding:0;\">?†</td><td style=\"color:#999; font-size:11px; line-height:18px;font-family:Dotum,sans-serif; font-weight:normal; text-align:left; border:0; padding:0;\">\r\n" + 
				"                            ë³? ë©”ì¼?? ? •ë³´í†µ?‹ ë§? ?´?š© ì´‰ì§„ ë°? ? •ë³? ë³´í˜¸ ?“±?— ê´??•œ ë²•ë¥ ?— ê·¼ê±°?•˜?—¬ ?ˆ˜?‹ ?™?˜ ?—¬ë¶??? ê´?ê³„ì—†?´ ë²•ì  ?˜ë¬? ?‚¬?•­?œ¼ë¡? ë°œì†¡ ?œ ë©”ì¼?…?‹ˆ?‹¤.\r\n" + 
				"                            </td></tr><tr><td style=\"color:#999;font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:top; border:0; padding:0;\">?†</td><td style=\"color:#999;font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; border:0; padding:0;\">\r\n" + 
				"                            ë³? ë©”ì¼?? ë°œì‹  ? „?š© ë©”ì¼?´ë¯?ë¡? ?šŒ?‹  ?˜ì§? ?•Š?Šµ?‹ˆ?‹¤. ë¬¸ì˜?‚¬?•­?? ê³ ê°?„¼?„°ë¥? ?´?š©?•´ ì£¼ì‹œê¸? ë°”ë?‹ˆ?‹¤.\r\n" + 
				"                            </td></tr><tr><td colspan=\"2\" style=\"text-align:right; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/svcenter/submain\" target=\"_blank\" style=\" color:#999; font-size:11px; line-:11px;font-family:dotum,sans-serif; font-weight:normal; text-align:center; text-decoration:none; background-color:#fff; border:0; border:1px solid #e3e3e3; padding:5px 10px; margin:0;\" rel=\"noreferrer noopener\">ê³ ê°?„¼?„°</a>\r\n" + 
				"                            </td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr><tr><td>\r\n" + 
				"                <table style=\"width:760px; border-top:1px solid #e3e3e3; padding:0; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <colgroup><col style=\"width:555px\"><col style=\"width:205px\"></colgroup>\r\n" + 
				"                    <tbody><tr><td colspan=\"2\" style=\"border:0; padding:30px 0 0 20px;\">\r\n" + 
				"                                <img src=\"http://www.thehandsome.com/_ui/desktop/common/images/email/footer_logo.gif\" alt=\"THEHANDSOME.COM\" border=\"0\" loading=\"lazy\">\r\n" + 
				"                            </td></tr><tr><td style=\"color:#424242; font-size:10px; line-height:18px; font-family:Malgun Gothic,Dotum,sans-serif; font-weight:normal; border:0; padding:10px 0 0 20px;\">\r\n" + 
				"                            (ì£?) ?•œ?„¬\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            ???‘œ?´?‚¬ ê¹?ë¯¼ë•\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            ?„œ?š¸?‹œ ê°•ë‚¨êµ? ?„?‚°??ë¡? 523 ?•œ?„¬ë¹Œë”©\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            TEL 02.3416.2000\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            FAX 02.516.7028\r\n" + 
				"                            <br>\r\n" + 
				"                            ?‚¬?—…??“±ë¡ë²ˆ?˜¸ 120-81-26337\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            ?†µ?‹ ?Œë§¤ì—…?‹ ê³ ë²ˆ?˜¸ ê°•ë‚¨ ? œ 00826?˜¸\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">?”‚</span>\r\n" + 
				"                            ê°œì¸? •ë³´ë³´?˜¸ì±…ì„? ?œ¤?¸?ˆ˜\r\n" + 
				"                            </td><td style=\"border:0; padding:10px 0 0 0; margin:0;\">\r\n" + 
				"                                <a href=\"http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208126337\" style=\"color:#999; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-align:center; text-decoration:none; background-color:#fff; border:0; border:1px solid #e3e3e3; padding:5px 10px; margin:0;\" rel=\"noreferrer noopener\" target=\"_blank\">?‚¬?—…?? •ë³´í™•?¸</a>\r\n" + 
				"                            </td></tr><tr><td colspan=\"2\" style=\"color:#363636; font-size:10px; line-height:10px; font-family:Malgun Gothic,sans-serif; font-weight:normal; text-align:left; letter-spacing:1px; border:0; padding:10px 0 0 20px; margin:0;\">COPYRIGHT @ 2015 HANDSOME. ALL RIGHT RESERVED.</td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr></tbody>\r\n" + 
				"</table>"; // ?´ë©”ì¼ ?‚´?š© ?‚½?…
		mailSend( setFrom,toMail, title, content);
		return Integer.toString(authNumber);
	}

	// ?´ë©”ì¼ ? „?†¡ ë©”ì†Œ?“œ
	public void mailSend(String setFrom,String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		// true ë§¤ê°œê°’ì„ ? „?‹¬?•˜ë©? multipart ?˜•?‹?˜ ë©”ì„¸ì§? ? „?‹¬?´ ê°??Š¥.ë¬¸ì ?¸ì½”ë”© ?„¤? •?„ ê°??Š¥?•˜?‹¤.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom("predicthappy@naver.com");
			helper.setTo(toMail);
			helper.setSubject(title);
			// true ? „?‹¬ > html ?˜•?‹?œ¼ë¡? ? „?†¡ , ?‘?„±?•˜ì§? ?•Š?œ¼ë©? ?‹¨?ˆœ ?…?Š¤?Š¸ë¡? ? „?‹¬.
			helper.setText(content, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Long joinMember(MemberDTO memberDTO) {
		return memberMapper.joinMember(memberDTO);
	}

	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO) {
		return memberMapper.memberLogin(memberDTO);
	}
	
	/*?´ë©”ì¼ ?¸ì¦? ?*/

}
