/* 
 * ?��?��?�� : �?민석
 * ?��?��?�� : 2022.10.17.?��
 * QnaMapper(문의?��비스(?��?��?��?��?��))
 */
package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.QnaDTO;

public interface QnaService {
	
	//문의 ?��?��
	public void qnainsert(QnaDTO qna) throws Exception;
	
	public List<QnaDTO> qnaselect(int mNo);
}
