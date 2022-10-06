package com.thehandsome.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.mapper.BrandDAO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MapperTest {
	
	@Autowired
	private BrandDAO brandDAO;
	
//	@Test
//	public void testGetTime() {
//		log.info(brandDAO.selectTest());
//	}
	
	@Test
	public void testGetTime1() {
		log.info(brandDAO.getTime1());
	}
	
	@Test
	public void testGetTime2() {
		log.info(brandDAO.getTime2());
	}
}