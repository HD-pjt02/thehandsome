/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaMapper(문의서비스(인터페이스))
 */
package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.QnaDTO;

public interface QnaService {
	
	//qna 입력
	public void qnainsert(QnaDTO qna) throws Exception;
	
	//qna 조회
	public List<QnaDTO> qnaselect(int mNo);
	
	//qna 삭제
	public void qnadelect(int qid);
	
	
		
}
