package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

/* 
 * ?��?��?�� : ?��?��?��
 * ?��?��?�� : 2022.10.17.?��
 * ?��?�� ?��?�� ?���? ???��?��?�� 객체
 */
@Data
public class ProductDTO {
	/* 1. ?��?�� ?���? */
	private String pcode;
	/* 2. 브랜?�� ?���? */
	private String bname;
	/* 3. 카테고리 ??분류 */
	private String clarge;
	/* 4. 카테고리 중분�? */
	private String cmedium;
	/* 5. 카테고리 ?��분류 */
	private String csmall;
	/* 6. ?��?�� Number */
	private int pno;
	/* 7. ?��?�� ?���? */
	private String pname;
	/* 8. ?��?�� �?�? */
	private int pprice;
	/* 9. ?��?�� ?��?��?���? */
	private String pcontent;
	/* 10. ?��?�� ?��록일 */
	private Timestamp pregdate;
	/* 11. ?��?�� ?��?���? */
	private int pdiscount;
	/* 12. ?��?�� 좋아?�� 개수 */
	private int plikeamount;
	/* 13. ?��?�� ?��?�� ?���? */
	private String penabled;
}
