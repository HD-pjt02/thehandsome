/* 
 * ?‘?„±? : ê¹?ë¯¼ì„
 * ?‘?„±?¼ : 2022.10.17.?›”
 * QnaMapper(ë¬¸ì˜.xml(mybatis)?‹¤?–‰)
 */

package com.thehandsome.app.mapper;
import java.util.List;

import com.thehandsome.app.dto.*;
public interface QnaMapper {

	//1:1ë¬¸ì˜
	public void qnaInsert(QnaDTO qna);
	//1:1ë¬¸ì˜ ì¡°íšŒ
	public List<QnaDTO> qnaSelect(int nMo);
}
