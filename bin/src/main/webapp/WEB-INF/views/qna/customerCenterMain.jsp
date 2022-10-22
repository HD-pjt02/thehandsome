<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- CSS only -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/customerCenterMain.css"
	type="text/css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />

<title>Here is header</title>
</head>

<body id="body">

	<!-- header.jsp 삽입 -->

	<div class="contents">
		<div class="innercon">
			<section class="lnbarea">
				<h2>고객센터</h2>
				<ul>
					<li class="lnb-depth1"><a href="/qna/customerCenterMain">문의조회</a>
					</li>
					<li class="lnb-depth1"><a href="/qna/mtmInqrReg">1:1 문의</a></li>
				</ul>
			</section>
			<section class="conarea">
				<div class="link-list">
					<div class="cs">
						<h2>현대식품관 상담톡</h2>
						<p>평일 08:00 ~ 20:00</p>
					</div>
					<div class="inquiry-wrapper">
						<div class="inquiry">
							<div class="chat-icon">
								<i class="bi bi-chat-dots"
									style="font-size: 30px; margin-right: 10px"></i>
							</div>
							<div>
								<p>1:1문의하기</p>
								</a> <small>쉽고 편리하게 문의하세요.</small>
							</div>
						</div>
						<div class="inquiry-list">
							<div class="chat-icon">
								<i class="bi bi-card-list"
									style="font-size: 32px; margin-right: 15px"></i>
							</div>
							<div>
								<p>1:1문의내역</p>
								<small>문의 내역을 지금 확인하세요.</small>
							</div>
						</div>
					</div>
					<div class="inquiryList">
						<c:forEach items="${viewAll}" var="qnaList" varStatus="status">
							<form id= "form1" name="formm" method="post">
								<div class="inquiry-history">
									<div class="info">
										<input type="text" name="qid" id="qid"
											value="${qnaList.qid}"> <span class="inquirytype"><c:out
												value="${qnaList.qcategory}"></c:out></span>
									</div>
									<div class="text-wrapper">
										<div class="text-answer">
											<span><c:out value="${qnaList.qcontent}"></c:out></span>
										</div>
										<div class="text-date">
											<span><c:out value="${qnaList.qdate}"></c:out></span> <i
												class="bi bi-arrow-down-short" style="font-size: 32px"
												id="arrow-down${status.index}" onClick="ft(this.id)"></i>
										</div>
									</div>
								</div>
								<div class="inquiry-answer" id="inquiry-answer${status.index}">
									<div class="inquiry-answer2">
										<span><c:out value="${qnaList.qstatus}"></c:out></span>
										<button class="delete_inquiry_btn" type="button" onClick="delete_btn(qid)">삭제</button>
										<button class="update_inquiry_btn" type="button" onClick="update_btn(qid)">수정</button>
									</div>
								<img src="${pageContext.request.contextPath}/resources/qnaimage/${qnaList.qimg}" alt="이미지">
								</div>
							</form>
						</c:forEach>
					</div>
					
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
				</div>
			</section>
		</div>
	</div>

	<!-- footer.jsp 삽입 -->

</body>
<script>
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
 
 
//제이쿼리로 컨트롤러에 값넘기기
 function delete_btn(qid){ 
		//qna삭제
	 	 var qid = qid.value;
		    console.log(qid);
		 	$("#form1").attr("action", "/qna/qnaDelete?qid="+qid);
			$("#form1").submit();
			
			
			//바닐라js로 컨트롤러에 값넘기기
			/* fetch("/qna/qnaDelete?qid="+qid).then(() => {
				console.log("성공");
			}).catch(){
				console.log("실패");
			} */
		
		
	};
	
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

</html>