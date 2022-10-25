package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.PageDTO;

public interface MyOrderService {
   public List<OrderItemListDTO> getProductOrder(int mno, PageDTO page, String type, String keyword);
   public int getProductOrderCount(int mno, String type, String keyword);
}