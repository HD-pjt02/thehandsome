package com.thehandsome.app.service;

import java.util.List;

import javax.annotation.Resource;

import com.thehandsome.app.dto.AddressDTO;

public interface AddressService {



	public int insertAddress(AddressDTO address);

	public AddressDTO getBaseAddress(int mno);

	public List<AddressDTO> getAddresses(int mno);
}
