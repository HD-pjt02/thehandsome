package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

/* 
 * 작성자 : 정승하
 * 작성일 : 2022.10.17.월
 * 상품 상세 정보 저장하는 객체
 */
@Data
public class ProductDTO {
	/* 1. 상품 품번 */
	private String pcode;
	/* 2. 브랜드 품번 */
	private String bname;
	/* 3. 카테고리 대분류 */
	private String clarge;
	/* 4. 카테고리 중분류 */
	private String cmedium;
	/* 5. 카테고리 소분류 */
	private String csmall;
	/* 6. 상품 Number */
	private int pno;
	/* 7. 상품 이름 */
	private String pname;
	/* 8. 상품 가격 */
	private int pprice;
	/* 9. 상품 상세정보 */
	private String pcontent;
	/* 10. 상품 등록일 */
	private Timestamp pregdate;
	/* 11. 상품 할인률 */
	private int pdiscount;
	/* 12. 상품 좋아요 개수 */
	private int plikeamount;
	/* 13. 상품 사용 여부 */
	private String penabled;
}
