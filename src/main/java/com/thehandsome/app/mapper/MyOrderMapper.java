package com.thehandsome.app.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.OrderItemListDTO;

@Mapper
public interface MyOrderMapper {
   public List<OrderItemListDTO> selectProductOrders(HashMap<String, Object> mnoPage);
   public int selectProductOrderCount(HashMap<String, Object> map);
}