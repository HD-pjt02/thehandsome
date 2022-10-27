package com.thehandsome.app.dto;

import java.util.Date;
import lombok.Data;

/* 
 * 작성자 : 신미림(추가)
 * 작성일 : 2022.10.24.월
 * 
*/


@Data
public class MemberDTO {
	private int mno;
	private String id;
	private String password;
	private String email;
	private String phone;
	private String name;
	private String birth;
	private int mileage;
	private Date regdate;
	private Date lastlogindate;
	private String role;
	private String enable;
	private int amount;
	private String grade;
	
}
