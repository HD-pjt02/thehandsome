<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mtmInqrReg.css" type="text/css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
  </script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" />
  <title>Document</title>
</head>

<body id="body">

  <!-- header.jsp 삽입 -->

  <div class="contents">
    <div class="innercon">
      <section class="lnbarea">
        <h2>고객센터</h2>
        <ul>
          <li class="lnb-depth1">
            <a href="/main">main</a>
          </li>
          <li class="lnb-depth1">
            <a href="tohomeServlet?command=inquiry_moveform">1:1 문의</a>
          </li>
        </ul>
      </section>
      <section class="conarea">
        <h3 class="tit">1:1 문의등록</h3>

        <div class="infotxt">
          <p>문의하신 내용에 대한 답변은 이메일 또는 마이페이지 > 1:1 문의내역에서 확인하실 수 있습니다.</p>
          <p>SMS 문자와 이메일로 답변 완료 알림을 받아보실 수 있습니다.</p>
        </div>

        <div class="customerform">
          <form class="inqrForm" id="inquiry_insert" method="post" name="formm">
            <div class="form-filter">
              <p>문의 분야</p>
              <select name="qCategory" title="문의선택" class="select_small" id="inquiry1">
                <option value="event">행사/이벤트</option>
                <option value="coupon">쿠폰/혜택문의</option>
                <option value="orderdelete">주문/확인취소</option>
                <option value="wedding">웨딩 프로모션</option>
                <option value="onelinerepair">온라인수선</option>
                <option value="offlineinquiry">오프라인 문의</option>
                <option value="oerainquiry">오에라 문의</option>
                <option value="productinquiry">상품문의</option>
                <option value="shppingrelated">배송관련</option>
              </select>
            </div>

            <div class="inquiryTitle">
              <label for="name">문의 제목</label>

              <input type="text" id="inquiryTitle" name="qTitle" required minlength="4" maxlength="8" size="10" value="${qnaDTO.qtitle}">
            </div>

            <div class="contentsbox">
              <div class="contentstop">
                문의 내용
                <span class="counter">
                  <em id="em1">0</em><em>/500</em>
                </span>
              </div>
              <textarea id="text1" name="qContent" title="리뷰 입력" style="padding: 10px 15px" placeholder="문의하실 상품의 상품명/제품코드/사이즈/컬러를 정확히 적어주세요. 주문하신 상품이라면 주문번호와 문의 하실 상품명/제품코드/사이즈/컬러와 함께 궁금하신 
              사항을 적어주시면 정확한 답변을 드리는데 도움이 됩니다. 반품접수는 마이페이지 주문내역에서 '반품 신청' 버튼을 클릭하여 반품을 접수해주셔야 합니다." maxlength="500"
                rows="5" cols="80" value="${qnaList.qcontent}"></textarea>
            </div>

            <div class="imginsert">사진등록</div>

            <div class="imgcontents">

              <label class="img_label" for="file">
                <i class="bi bi-plus" style="font-size: 48px"></i>
                <input type="file" accept=".jpg .png .gif" name="uploading" class="upload-hidden" title="사진 첨부"
                  id="file" onchange="change_img()" />
              </label>
              <ol class="img_ol">
                <li id="a1"></li>
                <li id="a2"></li>
                <li id="a3"></li>
                <li id="a4"></li>
              </ol>
            </div>


            <div>SMS 알림받기</div>

            <div class="btns">
              <button type="button" class="btn-cancel" onclick="initializing()">
                취소
              </button>
              <button type="button" class="btn-confirm" onclick="go_save()">등록</button>
            </div>
          </form>
        </div>
      </section>
    </div>
  </div>


</body>
<script>
  let a = document.getElementById("text1");
  a.addEventListener("keyup", function () {
    let b = document.getElementById("em1");
    b.innerText = a.value.length;
  });
  console.log(a.value.length);
</script>

<script>
  function initializing() {
    var input = document.getElementById("inquiry1");
    var text1 = document.getElementById("text1");
    input.value = null;
    text1.value = null;
  }
</script>

<script>
  function go_save() {
    if (document.formm.qCategory.value == "") {
      alert("문의 분야를 설정해주세요.");
      document.formm.depth1.focus();
    } else if (document.formm.qContent.value == "") {
      alert("문의 내용을 입력해주세요.");
      document.formm.cntn.focus();
    } else if (document.formm.qTitle.value == "") {
        alert("문의 제목을 입력해주세요.");
        document.formm.cntn.focus();
      }
      else {
      document.formm.action = "/qna/mtmInqrReg";
      document.formm.submit();
    }
  }

  function change_img() {
    //document.getElementById("img_name").innerHTML = a;

    var file = document.getElementById('file');
    //파일 경로.
    var filePath = file.value;
    //전체경로를 \ 나눔.
    var filePathSplit = filePath.split('\\');
    //전체경로를 \로 나눈 길이.
    var filePathLength = filePathSplit.length;
    //마지막 경로를 .으로 나눔.
    var fileNameSplit = filePathSplit[filePathLength - 1].split('.');
    //파일명 : .으로 나눈 앞부분
    var fileName = fileNameSplit[0];
    //파일 확장자 : .으로 나눈 뒷부분
    var fileExt = fileNameSplit[1];
    //파일 크기
    var fileSize = file.files[0].size;

    document.getElementById("a1").innerHTML = '파일 경로 : ' + filePath;
    document.getElementById("a2").innerHTML = '파일명 : ' + fileName;
    document.getElementById("a3").innerHTML = '파일 확장자 : ' + fileExt;
    document.getElementById("a4").innerHTML = '파일 크기 : ' + fileSize;


    console.log('파일 경로 : ' + filePath);
    console.log('파일명 : ' + fileName);
    console.log('파일 확장자 : ' + fileExt);
    console.log('파일 크기 : ' + fileSize);
  }
</script>



</html>