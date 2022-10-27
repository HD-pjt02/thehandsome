<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/headerMain.jsp"%>


<html>
<head>
<title>룰렛</title>
<meta charset="UTF-8" />
</head>
<script>
var rolLength = 6; // 해당 룰렛 콘텐츠 갯수
var setNum; // 랜덤숫자 담을 변수
var hiddenInput = document.createElement("input");
hiddenInput.className = "hidden-input";
var mileage = 0;

//랜덤숫자부여
const rRandom = () => {
  var min = Math.ceil(0);
  var max = Math.floor(rolLength - 1);
  return Math.floor(Math.random() * (max - min)) + min;
};

const rRotate = () => {
  var panel = document.querySelector(".rouletter-wacu");
  var btn = document.querySelector(".rouletter-btn");
  var deg = [];
  // 룰렛 각도 설정(rolLength = 6)
  for (var i = 1, len = rolLength; i <= len; i++) {
    deg.push((360 / len) * i);
  }
  
  // 랜덤 생성된 숫자를 히든 인풋에 넣기
  var num = 0;
  document.body.append(hiddenInput);
  setNum = hiddenInput.value = rRandom();
   
  // 애니설정
  var ani = setInterval(() => {
    num++;
    panel.style.transform = "rotate(" + 360 * num + "deg)";
    btn.disabled = true; //button,input
    btn.style.pointerEvents = "none"; //a 태그
    
    // 총 50에 다달했을때, 즉 마지막 바퀴를 돌고나서
    if (num === 50) {
      clearInterval(ani);
      panel.style.transform = `rotate(${deg[setNum]}deg)`;
    }
  }, 50);
};

// 정해진 alert띄우기, custom modal등
const rLayerPopup = (num) => {

	switch (num) {
    case 1:
    	mileage = 4000;
      break;
    case 3:
    	mileage = 3000;
      break;
    case 5:
    	mileage = 5000;
      break;
    default:
    	mileage = 0;
  }
  var la = "";
  if(mileage<=0){
	la  = new layerAlert('당첨!! 5,000 마일리지 즉시 적립!');
  }
  else{
	  $.ajax({
          url: '/event/wantmileage',
          type: "GET",            
          data: {mileage: mileage},
          async : false,
          success: function(data){
        	  
              if(data != null) { //이벤트 포인트 수령여부
            	  la  = new layerAlert('당첨!! '+mileage+' 마일리지 즉시 적립!');
                  
              }else {
            	  la  = new layerAlert('이벤트 중복 참여는 불가능합니다.');
            	 
              }
          },
          error: function(xhr, Status, error) {
              //
          }
	  });
	
	
  }
   
};

// reset
const rReset = (ele) => {
  setTimeout(() => {
    ele.disabled = false;
    ele.style.pointerEvents = "auto";
    rLayerPopup(setNum);
    hiddenInput.remove();
  }, 5500);
};

// 룰렛 이벤트 클릭 버튼
document.addEventListener("click", function (e) {
  var target = e.target;
  if (target.tagName === "BUTTON") {
	   //로그인이 되어 있는지 확인한다.
      <% if(session.getAttribute("member")==null){%>
         goLogin("review");
         return;
       <%}%>
    rRotate();
    rReset(target);
  }
});
</script>
<body>
	<div id="bodyWrap" class="login">
		<h3 class="cnts_title">
			<span>룰렛돌리기~!</span>
		</h3>
		<div class="sub_container" >
				<div class="border_box1">
					<!-- 추가 190417 -->
					<div id="app" style="context-align:center;">
						<div class="rouletter">
						    <div class="rouletter-bg">
						        <div class="rouletter-wacu"></div>
						    </div>
						    <div class="rouletter-arrow"></div>
						    <button class="rouletter-btn">start</button>
						</div>
					</div>
				</div>
				</div>
				</div>
				
</body>
</html>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>