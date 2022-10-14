/* 
 * ?‘?„±? : ê¹?ë¯¼ì„
 * ?‘?„±?¼ : 2022.10.17.?›”
 * QnaVO(ë¬¸ì˜ëª¨ë¸)
 */
package com.thehandsome.app.dto;
import java.sql.Timestamp;

import lombok.Data;
@Data
public class QnaDTO {
	//ë¬¸ì˜ id
	private int qid;
	
	//ë©¤ë²„ id
	private String mid;
	
	//ë¬¸ì˜? œëª?
	private String qtitle;
	
	//ë¬¸ì˜?‚´?š©
	private String qcontent;
	
	//ë¬¸ì˜?‚ ì§?
	private Timestamp qdate;
	
	//ë¬¸ì˜?šŒ?‹ ?‚ ì§?
	private Timestamp qreplyDate;
	
	//ë¬¸ì˜?šŒ?‹ ? œëª?
	private String qreplyTitle;
	
	//ë¬¸ì˜?šŒ?‹ ?‚´?š©
	private String qreplyContent;
	
	//ê´?ë¦¬ì
	private String qmanager;
	
	//ë©¤ë²„ number
	private int mno;
	
	//ë¬¸ì˜ ë¶„ì•¼
	private String qcategory;
	
	//ì²˜ë¦¬ ?ƒ?ƒœ
	private String qstatus;
}
