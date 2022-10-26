package com.thehandsome.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.thehandsome.app.dto.AddressDTO;

@Mapper
public interface AddressMapper {
   public int insertAddress(AddressDTO address);
   public AddressDTO selectBaseAddress(int mno);
   public List<AddressDTO> selectAddresses(int mno);
}