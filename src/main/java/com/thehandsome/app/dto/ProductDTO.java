package com.thehandsome.app.dto;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class ProductDTO {
	private String pcode;
	private String pname;
	private String pcontent;
	private int pprice;
	private String pbrand;
	private Timestamp pregdate;
	private int pdiscount;
	private int plikeamount;
	private String penabled;
}
