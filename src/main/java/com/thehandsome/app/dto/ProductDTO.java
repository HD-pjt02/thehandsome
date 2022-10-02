package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class ProductDTO {
	private String pcode;
	private String pname;
	private String pcontent;
	private int pprice;
	private int pbrand;
	private int pcategory;
	private Timestamp pregdate;
	private int pdiscount;
	private int plikeamount;
	private String penabled;
}
