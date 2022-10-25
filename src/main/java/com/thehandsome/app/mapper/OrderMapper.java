package com.thehandsome.app.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.OrderItemDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
/* 작성자 : 김민석
 * 작성일 : 2022.10.22.토
 * 주문하기 위한 OrderMappr
 */

@Mapper
public interface OrderMapper {
	public int insertOrderNewAddress(OrderItemListDTO orderitemlist);
	public int insertOrderOldAddress(OrderItemListDTO orderitemlist);
	public int insertItemToProductOrderItem(OrderItemDTO orderitem);
	public int decreaseStockAmount(HashMap<String, Object> map);
	public Long checkMemberOrderProduct(OrderItemListDTO orderDTO);
}
