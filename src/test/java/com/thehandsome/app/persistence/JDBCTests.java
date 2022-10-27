package com.thehandsome.app.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;


/* 
 * 작성자 : 신미림
 * 작성일 : 2022.10.17.월
 
*/


@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try{
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1",
					"handsome",
					"1234");
			log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
}
//2022.10.17.월
//JUnit Test 완료
