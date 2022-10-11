package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * 작성자 : 정승하
 * 작성일 : 2022.10.17.월
 * 상품 브랜드 정보 저장하는 객체
 */
@Data
public class BrandDTO {
	private int bno;
	private String bname;
	
	public BrandDTO() {

	}

	public BrandDTO(String bname) {
		this.bname = bname;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}
}
