/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaMapper(문의서비스(인터페이스) 구현)
 */

package com.thehandsome.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.app.service.QnaService;
import com.thehandsome.app.mapper.*;
import com.thehandsome.app.dto.*;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	QnaMapper qnamapper;
	
	
	//qna 입력
	@Override
	public void qnainsert(QnaDTO qna) throws Exception {
		qnamapper.qnaInsert(qna);
	}
	
	//qna 조회
	@Override
	public List<QnaDTO> qnaselect(int nMo) {
		return qnamapper.qnaSelect(nMo);
	}

	//qna 삭제
	@Override
	public void qnadelect(int qid) {
		qnamapper.qnaDelete(qid);
	}

}
