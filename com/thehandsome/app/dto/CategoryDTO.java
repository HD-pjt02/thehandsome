package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * ?‘?„±? : ? •?Š¹?•˜
 * ?‘?„±?¼ : 2022.10.17.?›”
 * ?ƒ?’ˆ ì¹´í…Œê³ ë¦¬ ? •ë³? ???¥?•˜?Š” ê°ì²´
 */
@Data
public class CategoryDTO {
	/* 1. ì¹´í…Œê³ ë¦¬ ??ë¶„ë¥˜ */
	private String clarge;
	/* 2. ì¹´í…Œê³ ë¦¬ ì¤‘ë¶„ë¥? */
	private String cmedium;
	/* 3. ì¹´í…Œê³ ë¦¬ ?†Œë¶„ë¥˜ */
	private String csmall;
	
	public CategoryDTO() {
			
	}

	public CategoryDTO(String clarge, String cmedium, String csmall) {
		this.clarge = clarge;
		this.cmedium = cmedium;
		this.csmall = csmall;
	}
}
