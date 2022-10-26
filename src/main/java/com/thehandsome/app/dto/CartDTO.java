package com.thehandsome.app.dto;

import java.util.List;

import lombok.Data;

/* 
 * 작성자 : 정승하
 * 작성일 : 2022.10.22.토
 * CartDTO(장바구니 DTO객체)
 */
@Data
public class CartDTO {
   private int cartno;
   private String cartcode;
   private String pcode;
   private String pname;
   private String bname;
   private int pprice;
   private String pcolor;
   private String psize;
   private int pamount;
   private int mno;
   private List<ColorDTO> colors;
   private List<StockDTO> sizes;
   private int coloridx;
}