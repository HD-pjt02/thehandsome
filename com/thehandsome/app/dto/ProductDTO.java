package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

/* 
 * ??±? : ? ?Ή?
 * ??±?Ό : 2022.10.17.?
 * ?? ??Έ ? λ³? ???₯?? κ°μ²΄
 */
@Data
public class ProductDTO {
	/* 1. ?? ?λ²? */
	private String pcode;
	/* 2. λΈλ? ?λ²? */
	private String bname;
	/* 3. μΉ΄νκ³ λ¦¬ ??λΆλ₯ */
	private String clarge;
	/* 4. μΉ΄νκ³ λ¦¬ μ€λΆλ₯? */
	private String cmedium;
	/* 5. μΉ΄νκ³ λ¦¬ ?λΆλ₯ */
	private String csmall;
	/* 6. ?? Number */
	private int pno;
	/* 7. ?? ?΄λ¦? */
	private String pname;
	/* 8. ?? κ°?κ²? */
	private int pprice;
	/* 9. ?? ??Έ? λ³? */
	private String pcontent;
	/* 10. ?? ?±λ‘μΌ */
	private Timestamp pregdate;
	/* 11. ?? ? ?Έλ₯? */
	private int pdiscount;
	/* 12. ?? μ’μ? κ°μ */
	private int plikeamount;
	/* 13. ?? ?¬?© ?¬λΆ? */
	private String penabled;
}
