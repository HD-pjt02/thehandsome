/* 
 * ?‘?„±? : ê¹?ë¯¼ì„
 * ?‘?„±?¼ : 2022.10.17.?›”
 * QnaMapper(ë¬¸ì˜?„œë¹„ìŠ¤(?¸?„°?˜?´?Š¤) êµ¬í˜„)
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
	
	
	//ë¬¸ì˜ ?…? ¥
	@Override
	public void qnainsert(QnaDTO qna) throws Exception {
		qnamapper.qnaInsert(qna);
	}
	

	@Override
	public List<QnaDTO> qnaselect(int nMo) {
		// TODO Auto-generated method stub
		return qnamapper.qnaSelect(nMo);
	}

}
