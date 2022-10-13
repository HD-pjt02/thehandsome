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
	private String from; // email-config에 설정한 자신의 이메일 주소를 입력

	@Override
	public Long isdupluid(String uid) {
		return memberMapper.isdupluid(uid);
	}

	/*이메일 인증*/
	// 난수 발생
	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("인증번호 : " + checkNum);
		authNumber = checkNum;
	}

	// 이메일 보낼 양식!
	@Override
	public String joinEmail(String email) {
		makeRandomNumber();
		
		String setFrom = from;
		String toMail = email;
		String title = "[더한섬닷컴]이메일 인증 안내 메일입니다."; // 이메일 제목
		String content = "<table style=\"width:760px; padding:60px 20px 30px; margin:0 auto;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"    <tbody><tr><td>\r\n" + 
				"                <table style=\"width:760px; padding:0 0 5px; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <tbody><tr><td style=\"text-align:left; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com\" target=\"_blank\" style=\"border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\"><img src=\"http://www.thehandsome.com/_ui/desktop/common/images/email/logo.gif\" alt=\"THEHANDSOME.COM\" border=\"0\" loading=\"lazy\"></a>\r\n" + 
				"                            </td><td style=\"text-align:right; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/member/login\" target=\"_blank\" style=\"color:#363636; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-decoration:none; border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\">로그인</a>\r\n" + 
				"                                <span style=\"color:#e7e4d7; font-size:11px; line-height:11px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/svcenter/submain\" target=\"_blank\" style=\"color:#363636; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-decoration:none; border:0; padding:0; margin:0;\" rel=\"noreferrer noopener\">고객센터</a>\r\n" + 
				"                            </td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr><tr><td style=\"color:#363636; font-size:11px; line-height:11px; font-family:Dotum,sans-serif; font-weight:normal; text-align:right; border:0; border-top:1px solid #000; padding:10px 0 0;\"> 2022-10-09 </td></tr><tr><td style=\"color:#222; font-size:26px; line-height:40px; font-family:Malgun Gothic, Dotum, sans-serif; font-weight:bold; text-align:center; border:0; padding:50px 0 0; margin:0;\">이메일 인증 안내 메일입니다.</td></tr><tr><td style=\"color:#222; font-size:16px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:15px 0 0;\">\r\n" + 
				"            더한섬닷컴은 안전하고 편리한 서비스를 제공하기 위해 최선을 다합니다.\r\n" + 
				"            </td></tr><tr><td style=\"height:50px;border:0; padding:0; margin:0;\"></td></tr><tr><td style=\"width:760px; height:50px; border:0; border-top:1px solid #e3e3e3; padding:0;\">\r\n" + 
				"            </td></tr><tr><td style=\"color:#222; font-size:12px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:30px 0 0;\">\r\n" + 
				"            회원가입을 하기 위해 아래 이메일 인증하기 버튼을 클릭해주세요.\r\n" + 
				"            </td></tr><tr><td style=\"height:10px;border:0; padding:0; margin:0;\"></td></tr><tr><td style=\"text-align:center; padding:20px 0 0;\">\r\n" + 
				"                <a href=\"http://localhost:8085/member/joinprovision?joincode="+authNumber+","+toMail+"\" target=\"_blank\" style=\"display:inline-block; color:#ffffff; font-size:14px; line-:14px; font-family:dotum,sans-serif; font-weight:bold; text-decoration:none; background-color:#474747; border:0; padding:14px 25px; margin:0;\" rel=\"noreferrer noopener\">이메일 인증하기</a>\r\n" + 
				"            </td></tr><tr><td style=\"color:#222; font-size:12px; line-height:20px; font-family:Dotum,sans-serif; font-weight:normal; text-align:center; border:0; padding:10px 0 0;\">\r\n" + 
				"            인증 유효시간 : 30분 이내\r\n" + 
				"            </td></tr><tr><td style=\"height:120px;border:0; padding:0; margin:0;\"></td></tr><tr><td>\r\n" + 
				"                <table style=\"width:760px; background:#f5f5f5; padding:15px 30px 15px 20px; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <colgroup><col style=\"width:10px\"><col style=\"width:700px\"></colgroup>\r\n" + 
				"                    <tbody><tr><td style=\"color:#999; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:top; border:0; padding:0;\">ㆍ</td><td style=\"color:#999; font-size:11px; line-height:18px;font-family:Dotum,sans-serif; font-weight:normal; text-align:left; border:0; padding:0;\">\r\n" + 
				"                            본 메일은 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률에 근거하여 수신동의 여부와 관계없이 법적 의무 사항으로 발송 된 메일입니다.\r\n" + 
				"                            </td></tr><tr><td style=\"color:#999;font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:top; border:0; padding:0;\">ㆍ</td><td style=\"color:#999;font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; border:0; padding:0;\">\r\n" + 
				"                            본 메일은 발신 전용 메일이므로 회신 되지 않습니다. 문의사항은 고객센터를 이용해 주시길 바랍니다.\r\n" + 
				"                            </td></tr><tr><td colspan=\"2\" style=\"text-align:right; border:0; padding:0;\">\r\n" + 
				"                                <a href=\"http://www.thehandsome.com/ko/svcenter/submain\" target=\"_blank\" style=\" color:#999; font-size:11px; line-:11px;font-family:dotum,sans-serif; font-weight:normal; text-align:center; text-decoration:none; background-color:#fff; border:0; border:1px solid #e3e3e3; padding:5px 10px; margin:0;\" rel=\"noreferrer noopener\">고객센터</a>\r\n" + 
				"                            </td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr><tr><td>\r\n" + 
				"                <table style=\"width:760px; border-top:1px solid #e3e3e3; padding:0; margin:0;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
				"                    <colgroup><col style=\"width:555px\"><col style=\"width:205px\"></colgroup>\r\n" + 
				"                    <tbody><tr><td colspan=\"2\" style=\"border:0; padding:30px 0 0 20px;\">\r\n" + 
				"                                <img src=\"http://www.thehandsome.com/_ui/desktop/common/images/email/footer_logo.gif\" alt=\"THEHANDSOME.COM\" border=\"0\" loading=\"lazy\">\r\n" + 
				"                            </td></tr><tr><td style=\"color:#424242; font-size:10px; line-height:18px; font-family:Malgun Gothic,Dotum,sans-serif; font-weight:normal; border:0; padding:10px 0 0 20px;\">\r\n" + 
				"                            (주) 한섬\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            대표이사 김민덕\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            서울시 강남구 도산대로 523 한섬빌딩\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            TEL 02.3416.2000\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            FAX 02.516.7028\r\n" + 
				"                            <br>\r\n" + 
				"                            사업자등록번호 120-81-26337\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            통신판매업신고번호 강남 제 00826호\r\n" + 
				"                            <span style=\"color:#e7e4d7; font-size:11px; line-height:18px; font-family:Dotum,sans-serif; font-weight:normal; vertical-align:middle; border:0; padding:0; margin:0;\">│</span>\r\n" + 
				"                            개인정보보호책임자 윤인수\r\n" + 
				"                            </td><td style=\"border:0; padding:10px 0 0 0; margin:0;\">\r\n" + 
				"                                <a href=\"http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208126337\" style=\"color:#999; font-size:11px; line-:11px; font-family:dotum,sans-serif; font-weight:normal; text-align:center; text-decoration:none; background-color:#fff; border:0; border:1px solid #e3e3e3; padding:5px 10px; margin:0;\" rel=\"noreferrer noopener\" target=\"_blank\">사업자정보확인</a>\r\n" + 
				"                            </td></tr><tr><td colspan=\"2\" style=\"color:#363636; font-size:10px; line-height:10px; font-family:Malgun Gothic,sans-serif; font-weight:normal; text-align:left; letter-spacing:1px; border:0; padding:10px 0 0 20px; margin:0;\">COPYRIGHT @ 2015 HANDSOME. ALL RIGHT RESERVED.</td></tr></tbody>\r\n" + 
				"                </table>\r\n" + 
				"            </td></tr></tbody>\r\n" + 
				"</table>"; // 이메일 내용 삽입
		mailSend( setFrom,toMail, title, content);
		return Integer.toString(authNumber);
	}

	// 이메일 전송 메소드
	public void mailSend(String setFrom,String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom("predicthappy@naver.com");
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
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
	
	/*이메일 인증 끝*/

}
