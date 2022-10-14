package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * ?��?��?�� : ?��?��?��
 * ?��?��?�� : 2022.10.17.?��
 * ?��?�� 카테고리 ?���? ???��?��?�� 객체
 */
@Data
public class CategoryDTO {
	/* 1. 카테고리 ??분류 */
	private String clarge;
	/* 2. 카테고리 중분�? */
	private String cmedium;
	/* 3. 카테고리 ?��분류 */
	private String csmall;
	
	public CategoryDTO() {
			
	}

	public CategoryDTO(String clarge, String cmedium, String csmall) {
		this.clarge = clarge;
		this.cmedium = cmedium;
		this.csmall = csmall;
	}
}
