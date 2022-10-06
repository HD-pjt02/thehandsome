package com.thehandsome.mapper;

import org.apache.ibatis.annotations.Select;


public interface BrandDAO {
//	public List<BrandDTO> selectAllBrands();
//
//	public int selectTest();
	
	@Select("select sysdate from dual")
	public String getTime1();
	
	public String getTime2();
}
