package com.thehandsome.app.dto;

import lombok.Data;

@Data
public class CategoryDTO {
	private int ccode;		// 상품의 카테고리 코드번호
	private String lcname;	// 상품의 대분류 카테고리
	private String mcname;	// 상품의 중분류 카테고리
	private String scname;	// 상품의 소분류 카테고리
}