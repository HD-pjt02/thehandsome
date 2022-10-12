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
	
	//문의 입력
	public void qnainsert(QnaDTO qna) throws Exception;
	
	public List<QnaDTO> qnaselect(int mNo);
}
