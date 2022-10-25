package com.thehandsome.app.service;

import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.transaction.annotation.Transactional;

import com.thehandsome.app.dto.AddressDTO;
import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.OrderItemDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
/* 작성자 : 김민석
 * 작성일 : 2022.10.22.토
 * 주문 서비스(주문수량, 결제, 상세상품넘어오는 값들, 주문)
 */
public interface OrderService {
	public int insertOrder(OrderItemListDTO orderitemlist, int ano);

	public int insertItemToProductOrderItem(OrderItemDTO orderitem);

	public int decreaseStockAmount(String scode, int amount);

	// 결제하기 버튼을 누르고 일어나는 트랜잭션
	public void paymentOrder(OrderItemListDTO orderitemlist, AddressDTO address, 
			String checkedItems, int itemsLength);

	public Long checkMemberOrderProduct(OrderItemListDTO orderDTO);
}
