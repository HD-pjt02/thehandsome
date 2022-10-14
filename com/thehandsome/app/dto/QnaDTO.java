/* 
 * ?��?��?�� : �?민석
 * ?��?��?�� : 2022.10.17.?��
 * QnaVO(문의모델)
 */
package com.thehandsome.app.dto;
import java.sql.Timestamp;

import lombok.Data;
@Data
public class QnaDTO {
	//문의 id
	private int qid;
	
	//멤버 id
	private String mid;
	
	//문의?���?
	private String qtitle;
	
	//문의?��?��
	private String qcontent;
	
	//문의?���?
	private Timestamp qdate;
	
	//문의?��?��?���?
	private Timestamp qreplyDate;
	
	//문의?��?��?���?
	private String qreplyTitle;
	
	//문의?��?��?��?��
	private String qreplyContent;
	
	//�?리자
	private String qmanager;
	
	//멤버 number
	private int mno;
	
	//문의 분야
	private String qcategory;
	
	//처리 ?��?��
	private String qstatus;
}
