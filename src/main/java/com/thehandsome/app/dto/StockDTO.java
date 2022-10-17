package com.thehandsome.app.dto;

import lombok.Data;

/* 작성자 : 정승하
 * 작성일 : 2022.10.18.화
 * 상품 사이즈 재고 정보를 저장하는 객체
 */
@Data
public class StockDTO {
	private int sno;
	private String pcode;
	private String pcolor;
	private String psize;
	private int pamount;
}