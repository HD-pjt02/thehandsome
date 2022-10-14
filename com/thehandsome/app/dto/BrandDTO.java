package com.thehandsome.app.dto;

import lombok.Data;

/* 
 * ?‘?„±? : ? •?Š¹?•˜
 * ?‘?„±?¼ : 2022.10.17.?›”
 * ?ƒ?’ˆ ë¸Œëœ?“œ ? •ë³? ???¥?•˜?Š” ê°ì²´
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
