/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaVO(문의모델)
 */
package com.thehandsome.app.dto;
import java.sql.Timestamp;

import lombok.Data;
@Data
public class QnaDTO {
	//문의 id
	private int qId;
	
	//멤버 id
	private String mId;
	
	//문의제목
	private String qTitle;
	
	//문의내용
	private String qContent;
	
	//문의날짜
	private Timestamp qDate;
	
	//문의회신날짜
	private Timestamp qReplyDate;
	
	//문의회신제목
	private String qReplyTitle;
	
	//문의회신내용
	private String qReplyContent;
	
	//관리자
	private String qManager;
	
	//멤버 number
	private int mNo;
	
	//문의 분야
	private String qCategory;
	
	//처리 상태
	private String qStatus;
}
