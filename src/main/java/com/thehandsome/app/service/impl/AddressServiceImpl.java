package com.thehandsome.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.thehandsome.app.dto.AddressDTO;
import com.thehandsome.app.mapper.AddressMapper;
import com.thehandsome.app.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService{
   
   @Resource
   private AddressMapper addressMapper;
   
   @Override
   public int insertAddress(AddressDTO address) {
      return addressMapper.insertAddress(address);
   }

   @Override
   public AddressDTO getBaseAddress(int mno) {
      return addressMapper.selectBaseAddress(mno);
   }

   @Override
   public List<AddressDTO> getAddresses(int mno) {
      return addressMapper.selectAddresses(mno);
   }
}