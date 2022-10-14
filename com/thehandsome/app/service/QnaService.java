/* 
 * ?‘?„±? : ê¹?ë¯¼ì„
 * ?‘?„±?¼ : 2022.10.17.?›”
 * QnaMapper(ë¬¸ì˜?„œë¹„ìŠ¤(?¸?„°?˜?´?Š¤))
 */
package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.QnaDTO;

public interface QnaService {
	
	//ë¬¸ì˜ ?…? ¥
	public void qnainsert(QnaDTO qna) throws Exception;
	
	public List<QnaDTO> qnaselect(int mNo);
}
