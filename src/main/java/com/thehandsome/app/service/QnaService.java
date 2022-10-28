/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * QnaMapper(문의서비스(인터페이스))
 */
package com.thehandsome.app.service;

import java.util.List;

import com.thehandsome.app.dto.CategoryDTO;
import com.thehandsome.app.dto.PagingDTO;
import com.thehandsome.app.dto.QnaDTO;

public interface QnaService {
   
   //qna 입력
   public void qnainsert(QnaDTO qna) throws Exception;
   
   //qna 조회
   public List<QnaDTO> qnaselect(int mNo);
   
   //qna 삭제
   public void qnadelect(int qid);
   
   //qna 수정 내용 불러오기
   public QnaDTO qnaselectDTO(int qid);
   
   // 게시물 총 갯수
   public int countQna();

   // 페이징 처리 게시글 조회
   public List<QnaDTO> selectQna(PagingDTO vo);
   
   //qna 수정
   public void qnaupdate(QnaDTO qna);
}