package com.thehandsome.app.dto;

import java.util.Date;

import lombok.Data;
/* 작성자 : 김민석
 * 작성일 : 2022.10.22.토
 * 주문리스트DTO
 */
@Data
public class OrderItemListDTO {
   
    
   private int ono;
   private Date odate;
   private int ostate;
   private int pmonth;
   private String ptype;
   private String oreceivername;
   private String oreceiverphone1;
   private String oreceiverphone2; // nullable
   private String ocomment; // nullable
   private int mno;
   private int ano;
   private int oamount;
   private String pcode;
   private String pcolor;
   private String psize;
   private String pname;
   private String bname;
   private int pprice;
   private String imgurl1;
   private String imgurl2;
   //검색 필터
   private String type;
   private String keyword;
}
