package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

/* 
 * ?‘?„±? : ? •?Š¹?•˜
 * ?‘?„±?¼ : 2022.10.17.?›”
 * ?ƒ?’ˆ ?ƒ?„¸ ? •ë³? ???¥?•˜?Š” ê°ì²´
 */
@Data
public class ProductDTO {
	/* 1. ?ƒ?’ˆ ?’ˆë²? */
	private String pcode;
	/* 2. ë¸Œëœ?“œ ?’ˆë²? */
	private String bname;
	/* 3. ì¹´í…Œê³ ë¦¬ ??ë¶„ë¥˜ */
	private String clarge;
	/* 4. ì¹´í…Œê³ ë¦¬ ì¤‘ë¶„ë¥? */
	private String cmedium;
	/* 5. ì¹´í…Œê³ ë¦¬ ?†Œë¶„ë¥˜ */
	private String csmall;
	/* 6. ?ƒ?’ˆ Number */
	private int pno;
	/* 7. ?ƒ?’ˆ ?´ë¦? */
	private String pname;
	/* 8. ?ƒ?’ˆ ê°?ê²? */
	private int pprice;
	/* 9. ?ƒ?’ˆ ?ƒ?„¸? •ë³? */
	private String pcontent;
	/* 10. ?ƒ?’ˆ ?“±ë¡ì¼ */
	private Timestamp pregdate;
	/* 11. ?ƒ?’ˆ ?• ?¸ë¥? */
	private int pdiscount;
	/* 12. ?ƒ?’ˆ ì¢‹ì•„?š” ê°œìˆ˜ */
	private int plikeamount;
	/* 13. ?ƒ?’ˆ ?‚¬?š© ?—¬ë¶? */
	private String penabled;
}
