package com.thehandsome.app.persistence;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/* 
 * 작성자 : 신미림
 * 작성일 : 2022.10.17.월
 
*/


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MybatisTest {
	@Setter(onMethod_ = @Autowired)
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testConnection() {
		try(SqlSession sqlSession = sqlSessionFactory.openSession(true);
				Connection conn = sqlSession.getConnection()) {
			log.info(sqlSession);
			log.info(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

