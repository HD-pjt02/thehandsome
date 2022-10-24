package com.thehandsome.app.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.PageDTO;
import com.thehandsome.app.mapper.MyOrderMapper;
import com.thehandsome.app.service.MyOrderService;


@Service
public class MyOrderServiceImpl implements MyOrderService {
   private static final Logger logger = LoggerFactory.getLogger(MyOrderService.class);
   
   @Resource
   private MyOrderMapper myOrderMapper;
   
   public List<OrderItemListDTO> getProductOrder(int mno, PageDTO page, String type, String keyword) {
      HashMap<String, Object> hm = new HashMap<>();
      hm.put("mno", mno);
      hm.put("page", page);
      hm.put("type", type);
      hm.put("keyword", keyword);
      return myOrderMapper.selectProductOrders(hm);
   }
   public int getProductOrderCount(int mno, String type, String keyword) {
      HashMap<String, Object> map = new HashMap<>();
      map.put("mno", mno);
      map.put("type", type);
      map.put("keyword", keyword);
      return myOrderMapper.selectProductOrderCount(map);
   }
}