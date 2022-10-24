package com.thehandsome.app.dto;

import lombok.Data;

@Data
public class AddressDTO {
   private int ano;
   private int mno;
   private String acode;
   private String aname;
   private String addr1;
   private String addr2;
   private String addr3;
   private String toname;
   private String tophone;
   //
   private String isdefault;
   private int member_mno;
   //
   private int abaseaddresscheck;
}