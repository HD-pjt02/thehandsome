<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/headerMember.jsp"%>

<div id="bodyWrap">
	<h3 class="cnts_title">
		<span>1:1 문의 하기</span>
	</h3>
	<div class="sub_container clearfix">
		<!-- lnbWrap -->
		<div class="iframe_lnb">
					<div class="lnb_wrap">
						<h4><a href="/svcenter/submain">고객센터<!-- 고객센터 --></a></h4>
								<div class="lnb">
									<p><a href="/ko/svcenter/notice">공지사항<!-- 공지사항 --></a></p>
									<p><a href="/ko/svcenter/mantomaninquiry">1:1 문의 등록<!-- 1:1 문의하기 --></a></p>
									<p><a href="/ko/svcenter/faq">FAQ<!-- FAQ; --></a></p>
									<p><a href="/ko/svcenter/mending">수선진행조회<!-- 수선진행조회; --></a></p> 
									<p><a href="/ko/footer/vocProvision">고객의 소리</a></p>
									<!-- <p><a href="#;">APP 다운로드 소개</a></p> -->
									<dl>
										<dt>쇼핑 가이드</dt>
										<dd><a href="/ko/svcenter/memberjoinguide">회원 가입</a></dd>
										<dd><a href="/ko/svcenter/theClubInfo">온라인 멤버십</a></dd>
										<dd><a href="/ko/svcenter/memberbenefitguide">한섬 VVIP 혜택</a></dd>
										<dd><a href="/ko/svcenter/pointguide">한섬마일리지 혜택</a></dd>
										<dd><a href="/ko/svcenter/couponguide">쿠폰</a></dd>
		<dd><a href="/ko/svcenter/paymentguide">주문/결제</a></dd>
										<dd><a href="/ko/svcenter/asguide">배송/교환/반품/AS</a></dd>
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
				</div><!-- //lnbWrap -->
		<div class="sub_cnts">
			<div class="title_wrap mt30 clearfix">
				<h4 class="float_left">1:1 문의 등록</h4>
				<p class="reqd_txt"><strong class="reqd">*</strong> 표시는 필수항목입니다.</p>
			</div>
			<form id="inquiry_insert" name="formm" method="post">
				<fieldset>
					<legend>1:1 문의 입력</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>1:1 문의 입력</caption>
							<colgroup>
								<col style="width:140px">
								<col>
							</colgroup>
							<tbody>
								<tr>
										<th scope="row"><strong class="reqd">*</strong>문의 항목</th>
										<td>더한섬닷컴 문의</td>
									</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong>문의 종류</th>
									<td>
										<select name="qcategory" title="문의 유형" class="select_small" id="inquiry1" style="width:160px">
											<option value="행사/이벤트">행사/이벤트</option>
											<option value="쿠폰/혜택문의">쿠폰/혜택문의</option>
											<option value="주문/확인취소">주문/확인취소</option>
											<option value="웨딩 프로모션">웨딩 프로모션</option>
											<option value="온라인수선">온라인수선</option>
											<option value="오프라인 문의">오프라인 문의</option>
											<option value="오에라 문의">오에라 문의</option>
											<option value="상품문의">상품문의</option>
											<option value="배송관련">배송관련</option>
											<option value="${qnaDTO.qcategory}" selected>${qnaDTO.qcategory}</option>
										  </select>
										</td>
								</tr>
								
								<tr>
									<th scope="row"><strong class="reqd">*</strong>문의제목</th>
									<td>
										<input type="text" id="inquiryTitle" name="qtitle" title="문의제목" class="w_all" value="${qnaDTO.qtitle}">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<strong class="reqd">*</strong>문의 내용<span class="com_txt_p">(2000자 이하)</span>
									</th>
									<td>
										<!-- textarea -->
										<textarea id="text1" name="qcontent" title="리뷰 입력" cols="30" rows="10" placeholder="문의하실 상품의 상품명/제품코드/사이즈/컬러를 정확히 적어주세요.

주문하신 상품이라면 주문번호와 문의 하실 상품명/제품코드/사이즈/컬러와 함께 궁금하신 사항을 적어 주시면
정확한 답변을 드리는데 도움이 됩니다.

반품접수는 마이페이지 주문내역에서 “반품 신청“ 버튼을 클릭하여 반품을 접수해주셔야 합니다." maxlength="500">${qnaDTO.qcontent}</textarea>
										<!-- //textarea -->
									</td>
								</tr>
								<!-- popup end -->
								
								<tr>
									<th scope="row" class="th_space">사진등록</th>
									<td>
										<!-- File upload -->
										<div class="file_upload">
											<input type="file" name="uploadFile" multiple="multiple">
											<input type="text" id="qid2" name="qid" value="${qnaDTO.qid}" style="display:none">
										</div>
										<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>
										<!-- //File upload -->
									</td>
								</tr>
								
								
							</tbody>
						</table>
					</div>
					<!-- btn -->
				</fieldset>
				<div class="btnwrap">
					<button class="btn wt" type="button" class="btn-cancel" onclick="go_back()">
					  취소
					</button>
					<button class="btn gray mr0" type="button" class="btn-confirm" onclick="go_update()">등록</button>
				  </div>
				</form>
			</div>
	</div>

	
</div>


<script>
	let a = document.getElementById("text1");
	a.addEventListener("keyup", function () {
	  let b = document.getElementById("em1");
	  b.innerText = a.value.length;
	});
	console.log(a.value.length);
  </script>
  
  <script>
	function go_back() {
	  window.history.back();
	}
  </script>
  
  <script>
  function go_update() {
	    if (document.formm.qcategory.value == "") {
	      alert("문의 분야를 설정해주세요.");
	      document.formm.depth1.focus();
	    } else if (document.formm.qcontent.value == "") {
	      alert("문의 내용을 입력해주세요.");
	      document.formm.cntn.focus();
	    } else if (document.formm.qtitle.value == "") {
	        alert("문의 제목을 입력해주세요.");
	        document.formm.cntn.focus();
	      }
	      else {
	      document.formm.action = "/qna/qnaUpdateExecute";
	      document.formm.submit();
	    }
	  }
  
  </script> 
</html>


