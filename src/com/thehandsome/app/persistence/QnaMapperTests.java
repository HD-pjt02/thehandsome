package com.thehandsome.app.persistence;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.app.dto.QnaDTO;
import com.thehandsome.app.mapper.QnaMapper;
import com.thehandsome.app.dto.*;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class QnaMapperTests {

	@Autowired
	private QnaMapper qnamapper;			//MemberMapper.java �������̽� ������ ����
	
//	//���� �Է� �׽�Ʈ �޼ҵ�
//	@Test
//	public void qnaInsert() throws Exception{
//		QnaVO qna = new QnaVO();
//		
////		qna.setMId("bansongs");
//		qna.setQTitle("test");			//��������
//		qna.setQContent("test");		//���ǳ���
//		qna.setQDate(new Timestamp(System.currentTimeMillis()));		//���ǳ�¥
//		qna.setQReplyDate(new Timestamp(System.currentTimeMillis()));		//����ȸ�ų�¥
////		qna.setQReplyTitle("test");		//����ȸ������
////		qna.setQReplyContent("test");	//����ȸ�ų���
////		qna.setQManager("bansongs");
////		qna.setMNo(1);
//		qnamapper.qnaInsert(qna);
//		
//		log.info(qna);
//		
//	}
	
	@Test
	public void qnaSelect() throws Exception{	
		
		int qna= 1;
		//���ǿ��� id�� �����´����� qna�� �־
		List<QnaDTO> list = qnamapper.qnaSelect(qna);
	    System.out.println(list);
	}
	
//	@Test
//	public void memberIdChk() throws Exception {
//		String id = "test3";
//		String id2 = "test123";
//		membermapper.idCheck(id);
//		membermapper.idCheck(id2);
//		System.out.println(membermapper.idCheck(id));
//		System.out.println(membermapper.idCheck(id2));
//	}
	
//	 /* �α��� ���� mapper �޼��� �׽�Ʈ */
//	@Test
//	public void memberLogin() throws Exception {
//		MemberVO member = new MemberVO();
//		
//		member.setMemberId("test3");
//		member.setMemberPw("test3");
//		membermapper.memberLogin(member);
//		System.out.println("���? �� : " + membermapper.memberLogin(member));
//	}
	
	
	
}