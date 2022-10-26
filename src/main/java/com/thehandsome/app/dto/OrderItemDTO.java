package com.thehandsome.app.dto;

import lombok.Data;
/* 작성자 : 김민석
 * 작성일 : 2022.10.22.토
 * 주문아이템DTO
 */
@Data
public class OrderItemDTO {
   private int ono;
   // stock 넘버
   private String sno;
   
   private int oamount;
}