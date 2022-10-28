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
   
   //qna 업데이트 전 조회
   @Override
   public QnaDTO qnaselectDTO(int qid) {
      return qnamapper.qnaSelectDTO(qid);
      
   }
   // 게시물 총 갯수
   @Override
   public int countQna() {
      return qnamapper.countQna();
   }
   
   // 페이징 처리 게시글 조회
   @Override
   public List<QnaDTO> selectQna(PagingDTO vo) {
      return qnamapper.selectQna(vo);
   }
   
   //qna 수정
      @Override
      public void qnaupdate(QnaDTO qna){
         qnamapper.qnaUpdate(qna);
      }
   
   

}