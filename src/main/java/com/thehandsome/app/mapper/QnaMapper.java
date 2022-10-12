/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaMapper(문의.xml(mybatis)실행)
 */

package com.thehandsome.app.mapper;
import java.util.List;

import com.thehandsome.app.dto.*;
public interface QnaMapper {

	//1:1문의
	public void qnaInsert(QnaDTO qna);
	//1:1문의 조회
	public List<QnaDTO> qnaSelect(int nMo);
}
