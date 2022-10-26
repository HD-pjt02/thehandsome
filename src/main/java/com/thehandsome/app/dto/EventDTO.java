package com.thehandsome.app.dto;

import lombok.Data;

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