package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * ?��?��?�� : ?��?��?��
 * ?��?��?�� : 2022.10.17.?��
 * ?��?�� 브랜?�� ?���? ???��?��?�� 객체
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
