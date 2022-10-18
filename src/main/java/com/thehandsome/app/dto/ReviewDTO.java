package com.thehandsome.app.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	private int rno;
	private String mid;
	private String pcode;          
	private String pcodecolor;
	private String psize;
	private Date rdate;
	private int rrate;
	private String reviewtype;
	private String rcontent;
	private String rimg;
	private String product_pcode;
	private int product_pno;
}
