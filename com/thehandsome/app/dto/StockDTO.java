package com.thehandsome.app.dto;

import lombok.Data;

/* ?��?��?�� : ?��?��?��
 * ?��?��?�� : 2022.10.18.?��
 * ?��?�� ?��?���? ?���? ?��보�?? ???��?��?�� 객체
 */
@Data
public class StockDTO {
	private int sno;
	private String pcode;
	private String pcolor;
	private String psize;
	private int pamount;
}