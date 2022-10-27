package com.thehandsome.app.dto;

import lombok.Data;
/* 
 * 작성자 : 신미림(추가)
 * 작성일 : 2022.10.24.월
 * 
*/

@Data
public class EventDTO {
   
   private int eid;
   private String ename;
   private String edetail;
   private String estartdate;
   private String eenddate;
   private String eimage;
   private int eamount;
   private int elimit;
   private String coupon_code;
}