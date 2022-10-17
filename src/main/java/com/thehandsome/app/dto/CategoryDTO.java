package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * 작성자 : 정승하
 * 작성일 : 2022.10.17.월
 * 상품 카테고리 정보 저장하는 객체
 */
@Data
public class CategoryDTO {
	/* 1. 카테고리 대분류 */
	private String clarge;
	/* 2. 카테고리 중분류 */
	private String cmedium;
	/* 3. 카테고리 소분류 */
	private String csmall;
	
	public CategoryDTO() {
			
	}

	public CategoryDTO(String clarge, String cmedium, String csmall) {
		this.clarge = clarge;
		this.cmedium = cmedium;
		this.csmall = csmall;
	}
}
