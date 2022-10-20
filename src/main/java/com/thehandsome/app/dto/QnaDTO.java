/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaVO(문의모델)
 */
package com.thehandsome.app.dto;
import java.io.File;
import java.sql.Timestamp;

import lombok.Data;
@Data
public class QnaDTO {
	//문의 id
	private int qid;
	
	//멤버 id
	private String mid;
	
	//문의제목
	private String qtitle;
	
	//문의내용
	private String qcontent;
	
	//문의날짜
	private Timestamp qdate;
	
	//문의회신날짜
	private Timestamp qreplydate;
	
	//문의회신제목
	private String qreplytitle;
	
	//문의회신내용
	private String qreplycontent;
	
	//관리자
	private String qmanager;
	
	//멤버 number
	private int mno;
	
	//문의 분야
	private String qcategory;
	
	//처리 상태
	private String qstatus;
	
	//qna 이미지
	private String qimg;
}
