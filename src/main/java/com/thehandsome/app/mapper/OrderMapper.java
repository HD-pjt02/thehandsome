package com.thehandsome.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.OrderDTO;

@Mapper
public interface OrderMapper {
	public int insertOrderNewAddress(OrderDTO Order);
	public int insertOrderOldAddress(OrderDTO Order);
	//public int insertItemToProductOrderItem(ProductOrderItem productOrderItem);
	//public int decreaseStockAmount(HashMap<String, Object> map);
}
