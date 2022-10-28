<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>


<div id="bodyWrap">
	<h3 class="cnts_title">
		<span id="menuTitle">1:1 문의</span>
	</h3>
	<div class="sub_container">
		<!-- lnb -->
		<div class="lnb_wrap">
			<h4><a href="/ko/mypage">마이페이지<!-- 마이페이지 --></a></h4>
			<div class="lnb">
						<dl>
							<dt>주문조회</dt>
							<dd><a href="/ko/mypage/order/myorders" onclick="GA_Event('마이페이지','LNB','주문/배송/반품/취소');">주문/배송/반품/취소</a></dd>
							</dl>
						<dl>
							<dt>혜택관리</dt>
							<dd><a href="/ko/mypage/voucher" onclick="GA_Event('마이페이지','LNB','나의 쿠폰');">나의 쿠폰<!-- 쿠폰함 --></a></dd>
							</dl>
						<dl>
							<dt>나의 상품관리</dt>
							<dd><a href="/ko/mypage/myWish" onclick="GA_Event('마이페이지','LNB','위시리스트');">위시리스트<!-- 위시리스트 --></a></dd>
							</dl>
						<dl>
							<dt>나의 정보관리</dt>
							<dd><a href="/ko/mypage/personInfomationChangePWCheck" onclick="GA_Event('마이페이지','LNB','개인정보 변경/탈퇴');">개인정보 변경/탈퇴</a></dd>
							<dd><a href="/ko/mypage/shoppingAddressPWCheck" onclick="GA_Event('마이페이지','LNB','배송지 관리');">배송지 관리</a></dd>
							</dl>
						<dl>
							<dt>나의 활동관리</dt>
							<!-- <dd><a href="#">회원등급</a></dd> -->
							<dd><a href="/ko/mypage/myreview" onclick="GA_Event('마이페이지','LNB','내 상품평');">내 상품평</a></dd>
							<dd><a href="/ko/mypage/myqna" onclick="GA_Event('마이페이지','LNB','상품 Q&amp;A');">상품 Q&amp;A</a></dd>
							<dd><a href="/ko/mypage/mymantomaninquiry" onclick="GA_Event('마이페이지','LNB','1:1 문의');">1:1 문의</a></dd>
							<!-- <dd><a href="#">이벤트 참여현황</a></dd> -->
						</dl>
						</div>
					<!-- ph_guide -->
					<div class="ph_guide">
						<p class="tlt">고객센터 운영 안내</p>
						<p class="phone">1800-5700<span style="color:#c69c6d;" class="txt">(유료)</span></p>
						<p class="txt">평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span></p>
						<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com</a>
					</div>
					<!-- //ph_guide -->
				</div>
		<!-- //lnb -->
		<!-- cnts -->
		<div class="sub_cnts">
			
			
			<style type="text/css">
tr.hidden {
     display: none;
}

</style>
<script>
function test(MyId){
	var str = MyId;
	str = str.substr(10);
	console.log(str);
	const arrowDown = document.getElementById(MyId);
	const inquiryAnswer = document.getElementById("inquiry-answer" + str);
	arrowDown.addEventListener("click", () => {
        if (inquiryAnswer.style.display == "") {
            inquiryAnswer.style.display = "none";
            return;
        }
        inquiryAnswer.style.display = "";

    });
}


 function ft(MyId){
	 	var str = MyId;
	 	str = str.substr(10);
    	const arrowDown = document.getElementById(MyId);
        const inquiryAnswer = document.getElementById("inquiry-answer" + str);
        arrowDown.addEventListener("click", () => {
            if (inquiryAnswer.style.display == "block") {
                inquiryAnswer.style.display = "none";
                return;
            }
            inquiryAnswer.style.display = "block";
        });
 }
 
 
//ajax로 컨트롤러에 값넘기기(qna 삭제)
 function delete_btn(qid){ 
		
	 	 var qid = qid.value;
		    console.log(qid);

			
			  $.ajax({
				    url: "/qna/qnaDelete",
				    data: {qid : qid},
				    type: "POST",
				    success : function(data){
				      location.href= "/qna/customerCenterMain";
				    },
				    error : function(){
				      alert("에러")		
				    }
				  });   
		
		
	}
	
 //ajax로 컨트롤러에 값넘기기(qna 수정)
  function update_btn(qid){ 
	 
	 var qid = qid.value;
	 console.log(qid);
 	  $.ajax({
		    url: "/qna/qnaUpdate",
		    data: {qid : qid},
		    type: "POST",
		    success : function(data){
		      location.href= "/qna/qnaUpdate?qid="+qid;
		    },
		    error : function(){
		      alert("에러")		
		    }
		  });   
	 
 } 
 </script>

<!-- //lnbWrap -->

	<form id="mantomaninquiryForm" action="/ko/svcenter/mantomaninquiry">
		<input type="hidden" name="pkInquiry" id="pkInquiry">
		</form>
    
	<!-- //search1 -->
	<div class="title_wrap mt50">
		<h4 class="float_left">나의 1:1 문의</h4>
		<p class="txt_line">고객님의 문의를 등록하시면 빠른 시일 내 답변 드리겠습니다.</p>
		<div class="btn_wrap">
			<a href="/qna/mtmInqrReg" class="btn add_ss mr0">문의하기</a>
		</div>
	</div>
	<!-- Table -->
	<div class="tblwrap">
		<table class="tbl_ltype">
		<caption>&gt;나의 1:1 문의 목록</caption>
		<colgroup>
			<col style="width:100px">
			<col style="width:140px">
			<col>
			<col style="width:100px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">등록일</th>
				<th scope="col">상담유형</th>
				<th scope="col">내용</th>
				<th scope="col">처리상태</th>
			</tr>
		</thead>
		
		
		
		<tbody id="listBody"><tr class="al_middle" id="clickme1">
		<c:forEach items="${viewAll}" var="qnaList" varStatus="status">
		<form id= "form1" name="formm" method="post">
			<td class="frt"><c:out value="${qnaList.qdate}"></c:out></td>
			<td><c:out value="${qnaList.qcategory}"></c:out></td>
			<td class="al_left"><a onClick="test(this.id)" id="arrow-down${status.index}"><c:out value="${qnaList.qcontent}"></c:out></a></td>
			<td><c:out value="${qnaList.qstatus}"></c:out></td></tr>
			<tr class="info3" style="display:none;" id="inquiry-answer${status.index}">
   <td class="qna_wrap" colspan="4">
      <div class="qna_box ch">
         <div class="qna_thing rev">
            <ul>
               <li>
                  <img src="${pageContext.request.contextPath}/resources/qnaimage/${qnaList.qimg}" alt="이미지"
                     style="width:100px; height:100px;">
              </li>
            </ul>
         </div>
<!--          <div class="qna_thing prod_list">
            <ul>
               <li>
                  <img src="http://newmedia.thehandsome.com/SH/2C/FW/SH2CAWSH714M_CM_S01.jpg" alt="플랩 포켓 셔츠">
                  <p> <span>SYSTEM HOMME</span><br>플랩 포켓 셔츠 </p>
               </li>
            </ul>
         </div> -->

         <div class="qt">
            <span class="ico">quest</span>
            <div class="txt">
               <p style="word-wrap:break-word"><c:out value="${qnaList.qcontent}"></c:out></p>
            </div>
         </div>


         <div class="an">
            <span class="ico">answer</span>
            <div class="txt">
               <p style=" word-wrap: break-word">안녕하세요, 고객님 더한섬닷컴 최성희 파트너입니다.<br>더한섬닷컴을 찾아주신 고객님께 진심으로 감사
                  인사드립니다.<br><br>네 고객님 문의 내용이 확인되지 않아 답변이 어려운 점 양해 부탁드립니다 문의사항 있으실 경우 기재하시어 재문의 부탁드립니다<br><br>추가적인 문의가
                  있으실 경우 언제든지 재문의 남겨주시면, 신속한 답변을 위해 최선을 다하겠습니다.<br>아울러 저희 고객센터(1800-5700)는 평일(월~금) 오전 9시 부터 오후 6시까지 운영
                  중입니다. <br>언제나 고객님 가까이에서 함께하는 쇼핑파트너가 되겠습니다.<br>오늘도 감사합니다. 더한섬닷컴과 함께 즐거운 하루 되시길 바랍니다.<br><br></p>
               <p class="date">답변일 : ${qnaList.qdate}</p>
               
                  <input type="text" name="qid" id="qid" value="${qnaList.qid}" style="display:none;">
                  <button onClick="update_btn(qid)" id="qnaWriteSend">수정</button>
                  <button type="button" onClick="delete_btn(qid)" id="qnaCancel" >삭제</button>
                  
            </div>
         </div>
      </div>
   </td>
</tr>
         </form>
         </c:forEach>
        </tbody>
        
	</table>
</div>
		<!-- //Table -->
		<!--paging-->
			<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="customerCenterMain?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="customerCenterMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="customerCenterMain?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
	    <!--//paging-->


</div>
		<!-- //cnts -->
	</div>
</div>

