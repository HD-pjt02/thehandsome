<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header2.jsp"%>

		
 
<script>
$(document).ready(function(){
    

     var nowYear = parseInt('2008');
     var nowMonth = parseInt('10');
     var nowDay = parseInt('09');
     var monthArray = [0, 31, 28, 31, 30, 31, 30, 31, 31 ,30, 31, 30, 31];

     
     
    
    //if(nowYear < 2000) nowYear += 1900;
    
    //년도 
    for(var i=nowYear; i>=1900; i--) {
        $('#selYear').append("<option value='" + i + "'>" + i + "</option>");
    }
    
    $("#selYear").change(function(){


    	var selYear1 = $('#selYear').val();
    	
		if($('#selMonth').val() == 02){
			if($("#selDay option:last").val() >= 29){
				
    			$("#selDay option[value='29']").remove();
    			$("#selDay option[value='30']").remove();
    			$("#selDay option[value='31']").remove();
    		}
    		
			if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0 ){
    			$("#selDay").append("<option value='29'>29</option>");
    		}
    	}
		
		
		//만14세미만 가입X
		if(nowYear == selYear1){
			for(var i = nowMonth+1;i <= 12; i++){
				if(i<10){$("#selMonth option[value='0"+i+"']").remove();}
				else{$("#selMonth option[value='"+i+"']").remove();}
				if($("#selMonth").val() > nowMonth)$("#selMonth").val('').prop("selected", true);
			}
			
			if(nowMonth == parseInt($('#selMonth').val())){
				
				var n_selMonth = parseInt($('#selMonth').val());
				var maxDay = monthArray[n_selMonth];

				for(var i = nowDay+1;i <= maxDay;i++){
					if(i<10){$("#selDay option[value='0"+i+"']").remove();}
					else{$("#selDay option[value='"+i+"']").remove();}
					if($("#selDay").val() > nowDay){$("#selDay").val('').prop("selected", true);}
				}
			}
		}else{
			var n_selMonth = parseInt($('#selMonth').val());
			var maxDay = monthArray[n_selMonth];
			
			if($("#selMonth option:last").val() < 12){
				for(var i = nowMonth+1;i <= 12; i++){
					if(i<10){$("#selMonth").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selMonth").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
			
			
			if($("#selDay option:last").val() < maxDay){
				
				if($('#selMonth').val() == 02){
					if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0 ){maxDay=29;}
				}
				
				for(var i = parseInt($("#selDay option:last").val())+1;i <= maxDay;i++){
					if(i<10){$("#selDay").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selDay").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
			
		}
    });
    
    $("#selMonth").change(function(){
    	var lastDay = $("#selDay option:last").val();
    	var selYear1 = $('#selYear').val();
    	var n_selMonth = parseInt($('#selMonth').val());
		var maxDay = monthArray[n_selMonth];
    	
    	if($(this).val() == 02){
    		
    		
    		$("#selDay option[value='31']").remove();
			$("#selDay option[value='30']").remove();
			$("#selDay option[value='29']").remove();
    		
    		if((selYear1%4 == 0 && selYear1%100 !=0) || selYear1%400 == 0){
    			$("#selDay").append("<option value='29'>29</option>");
        		
    		};

    		
    	}else if($(this).val() == 04 || $(this).val() == 06 || $(this).val() == 09 || $(this).val() == 11){
    		
    		
    			if(lastDay == 28){
					$("#selDay").append("<option value='29'>29</option>");
					$("#selDay").append("<option value='30'>30</option>");
    			}else if(lastDay == 29){
					$("#selDay").append("<option value='30'>30</option>");
    			}else if(lastDay == 31){
					$("#selDay option[value='31']").remove();
    			}
    		
    			
    	}else{
    		
    		if(lastDay == 28){
    			$("#selDay").append("<option value='29'>29</option>");
    			$("#selDay").append("<option value='30'>30</option>");
    			$("#selDay").append("<option value='31'>31</option>");
    		}else if(lastDay == 29){
    			$("#selDay").append("<option value='30'>30</option>");
    			$("#selDay").append("<option value='31'>31</option>");
    		}else if(lastDay == 30){
				$("#selDay").append("<option value='31'>31</option>");
    		}
    	}
    	
    	
    	//만14세미만 가입X
		if(nowYear == selYear1 && nowMonth == $('#selMonth').val()){
			
				for(var i = nowDay + 1;i <= $("#selDay option:last").val();i++){
					if(i<10){$("#selDay option[value='0"+i+"']").remove();}
					else{$("#selDay option[value='"+i+"']").remove();}
					if($("#selDay option:last").val() < $("#selDay").val())$("#selDay").val('').prop("selected", true);
				}
		}else{
			
			if($("#selDay option:last").val() < maxDay){
				for(var i = parseInt($("#selDay option:last").val()) + 1;i <= maxDay;i++){
					if(i<10){$("#selDay").append("<option value='0"+i+"'>0"+i+"</option>");}
					else{$("#selDay").append("<option value='"+i+"'>"+i+"</option>");}
				}
			}
		}
    });
    
    emailTypeDomainSelectController("#emailDomain","#emailDomainSel");

    passwordValidationCheck('pw');
    passwordValidationCheck('pwc');
    
    $("#pw").keypress(function(event){

        if(capsLock(event)){
            $("#pwcapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcapsLockMsg").text("");
        }
        if($("#pw").val().length > 0)
            $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
     });
     
     $("#pw").focus(function(event){
        $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
     });
     
     $("#pw").blur(function(){
         if($(this).val().length > 0){
            var pwRegExp = /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
            if(!pwRegExp.test($(this).val())){  
                $("#pwMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
                $("#pwTypeChk").val("");
                return true;
            }
            $("#pwTypeChk").val("Y");   
            $("#pwMsg").text("");
            $("#pwcMsg").text("");
            $("#pwConfirmChk").val("");
        }
     });
     
     $("#pwc").keypress(function(event){
         
        if(capsLock(event)){
            $("#pwcCapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
        } else {
            $("#pwcCapsLockMsg").text("");
        }
        
        if($("#pwc").val().length > 0)
            $("#pwcMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
         
     });
     
     $("#pwc").focus(function(event){
            $("#pwcMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
            
     });
     
     $("#pwc").blur(function(){
        if($("#pw").val()!=$("#pwc").val()){
            $("#pwcMsg").text("비밀번호가 일치하지 않습니다");
            $("#pwConfirmChk").val("");
            //$("#pwc").val("");
            return true;
        }
        if($("#pw").val()!= ""){
            $("#pwConfirmChk").val("Y");
            $("#pwcMsg").text("비밀번호가 확인되었습니다.");
        }
     });
     
     $('#emailDubChkBtn').click(function(){
         var vc = new ValidationCheck();
         vc.checkIdList = ['email','emailDomain'];
         vc.msgFn = function(msg){
             $("#emailMsg").text(msg);
         };
         if(vc.isValid()){
             $.ajax({
                 type:"GET",
                 url:"/ko/member/isduplemail?email="+$("#email").val()+"@"+$("#emailDomain").val(),
                 success:function(response){
                     if(response==true){
                         $("#emailMsg").text('이미 사용중인 이메일입니다.');
                     }else{
                         $("#emailMsg").text('사용 가능한 이메일입니다.');
                         $("#emailDuplChk").val('Y');
                         
                     }
                 },
                 error:function(e){
                     console.log(e);
                 }
             });
         }
     });
     
     $("#email, #emailDomain, #emailDomainSel").change(function(){
          $("#emailMsg").text('');
          $("#emailDuplChk").val(''); 
          var email1 = "${useremail}";
          var email2= $("#email").val()+"@"+$("#emailDomain").val();
          
          if(email1 != email2){
	          $("#ck1").prop('checked', false);
	          $("#ck1").attr('checked', false);
          }
      });     

      $("#cancleBtn").click(function(){
          var lc = new layerConfirm('회원가입을 취소하시겠습니까?', '확인', '취소');
          lc.confirmAction = function(){
              location.href="/";
          };
      });

      
      var joinCfBtnChk = 0;
      $("#joinBtn").click(function(){

          var vc = new ValidationCheck(); 
          vc.checkIdList = ['pw', 'pwc', 'name', 'selYear', 'selMonth', 'selDay'];

          if(!vc.isValid()){
              return;
          }
          
          var pwTypeChk = $("#pwTypeChk").val();
          var pwConfirmChk = $("#pwConfirmChk").val();
          var emailDuplChk = $("#emailDuplChk").val();

          if ( pwTypeChk !== "Y") {
              layerAlert("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요 ");
              return;
          }
          
          if ( pwConfirmChk !== "Y") {
              layerAlert("비밀번호가 일치하지 않습니다 ");
              return;
          }
          
          
          if($("#email").val()!=""){
              if ( emailDuplChk !== "Y") {
                  layerAlert("E-mail 중복확인이 되지 않았습니다.");
                  return;
              }
              
              var email = $("#email").val()+"@"+$("#emailDomain").val();
              if (!validateEmail(email)) {
                  layerAlert("잘못된 E-mail 형식입니다.");
                  return;
              }
              
              if(email.length > 50) {
                  layerAlert("E-mail은 최대 50자입니다.");
                  return;
              }
          }else{
              if($("#emailReceiveYn").is(':checked')){
                  layerAlert("E-mail (정보수신용) 을 입력해 주세요.");
                  return;
              }
          }
          
          $("#cancleBtn").attr("disabled", true);
          $("#joinBtn").attr("disabled", true);
          
          $("#collectionAgreementYN").val("Y");
          $("#emailAddress").val($("#email").val()+"@"+$("#emailDomain").val());
          
          if($("#email").val()==""){
              $("#emailAddress").val("");
          }
          $("#sBirthday").val($("#selYear").val() + $("#selMonth").val() + $("#selDay").val());
          $("#memberJoinForm").attr("action", "/member/joincompleteaction");
          $("#memberJoinForm").submit();
      });
      
      
      $("#email,#emailDomain").keypress(function(event){
          if(event.which == 32){
              return false;
          }
      });
      
      $('#ck1').click(function(){
          if($(this).is(':checked')){
              var email = "${useremail}";
              var emailArray = email.split("@");
              
              $("#email").val(emailArray[0]);
              $("#emailDomainSel").val(emailArray[1]);
              $("#emailDomain").val(emailArray[1]);
              $("#emailDomainSel option:eq(0)").prop("selected", "selected");
              $("#emailDomain").show();
          }
      }); 
      
      $(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
      
      $('.email-prev-detail-btn').click(function(e) {
          e.preventDefault();
          $('.email-detail-pop').show();
          $('.btn_close').click(function(e) {
              e.preventDefault();
              $('.email-detail-pop').hide();
          });
      });
});


/*
 * 비밀번호태그 Key 이벤트 [2017.01.11 - 이현승]
 */
var passwordValidationCheck = function(fid){
    var t = this;
    
    this.msgFn = function(msg){
        $('#'+fid).blur();
        layerAlert(msg)
    };
    
    this.notLockFn = function(){
        //default do nothing. but you can do something!
    };
    
    $('#'+fid).keyup(function(event){
        passwordSamePassCheck(fid);
    });
}

/*
 * 비밀번호 유효성 체크 [2017.01.11 - 이현승]
 */
var readonlyFlag = false;
function passwordSamePassCheck(fid){
    
    var SamePass_0 = 0; // 동일문자 카운트
    var SamePass_1 = 0; // 연속성(+) 카운드
    var SamePass_2 = 0; // 연속성(-) 카운드
    
    var inputdata = $('#'+fid).val();
    
    for (var i = 0; i < inputdata.length; i++) {     // 4자리
        var chr_pass_0 = inputdata.charCodeAt(i - 2);//3);
        var chr_pass_1 = inputdata.charCodeAt(i - 1);//2);
        var chr_pass_2 = inputdata.charCodeAt(i);// - 1);
        
        if (i > 1) {
            // 동일문자 카운트
            if ((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
                SamePass_0++;
            } else {
                SamePass_0 = 0;
            }
            // 연속성(+) 카운드
            if (chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
                SamePass_1++;
            } else {
                SamePass_1 = 0;
            }
            // 연속성(-) 카운드
            if (chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
                SamePass_2++;
            } else {
                SamePass_2 = 0;
            }
        }
        
        if(!readonlyFlag){
            if (SamePass_0 > 0) {
                readonlyFlag = true;
                $("input").attr("readonly",readonlyFlag);
                var la = new layerAlert("동일문자를 3번 이상 사용할 수 없습니다.");
                la.confirmAction = function(){
                    readonlyFlag = false;
                    $("input").attr("readonly",readonlyFlag);
                    $('#'+fid).focus();
                };
            } else if (SamePass_1 > 0 || SamePass_2 > 0) {
                readonlyFlag = true;
                $("input").attr("readonly",readonlyFlag);
                var la = new layerAlert("연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");
                la.confirmAction = function(){
                    readonlyFlag = false;
                    $("input").attr("readonly",readonlyFlag);
                    $('#'+fid).focus();
                };
            }
        }
    }
}


      

function validateEmail(email) {
  var re = /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

</script>

<form id="memberJoinForm" action="/member/joininfoform" method="GET"><input type="hidden" name="emailDuplChk" id="emailDuplChk" value="" title="이메일 중복">
        <input type="hidden" name="pwTypeChk" id="pwTypeChk" value="" title="비밀번호 형식">
        <input type="hidden" name="pwConfirmChk" id="pwConfirmChk" value="" title="비밀번호 일치">
        <input type="hidden" id="uid" name="uid" value="${useremail}">
        <input type="hidden" id="emailAddress" name="emailAddress" value="">
        <input type="hidden" id="sBirthday" name="sBirthday" value="">
        <input type="hidden" id="gender" name="gender" value="">
        <input type="hidden" id="collectionAgreementYN" name="collectionAgreementYN" value="">
        

        <div id="bodyWrap">
            <!--title-->
            <h3 class="cnts_title"><span>회원가입</span></h3>
            <!--//title-->
            <!--join step-->
            <div class="email_step">
                <ul class="clearfix">
                    <li class="step01">step01 이메일인증</li>
                    <li class="step02">step02 회원약관동의</li>
                    <li class="step03 on">step03 회원정보 입력</li>
                    <li class="step04">step04 가입완료</li>
                </ul>
            </div>
            <!--//join step-->
            <!--sub container-->
            <div class="sub_container">
                <div class="join_title">
                    <p class="title">고객님의 회원정보를 입력해주세요.</p>
                </div>
                    <fieldset>
                        <legend>회원정보입력</legend>
                        <div class="box_type_1">
                            <div class="title_wrap clearfix">
                                <h4 class="float_left">회원정보</h4>
                                <p class="reqd_txt float_right"><strong class="reqd">*</strong> 표시는 필수항목입니다.</p>
                            </div>
                                <div class="tblwrap">
                                <table class="tbl_wtype1">
                                    <caption>회원가입 입력항목</caption>
                                    <colgroup>
                                        <col style="width:160px">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row">이메일 아이디</th>
                                            <td>${useremail}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><strong class="reqd">*</strong><label for="pw">비밀번호</label></th>
                                            <td>
                                                <input type="password" id="pw" name="passwd" style="width:150px" title="비밀번호">
                                                <span class="guide_comment lh_30" id="pwMsg"></span>
                                                <span class="guide_comment lh_30" id="pwcapsLockMsg"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><strong class="reqd">*</strong> <label for="pw2">비밀번호 확인</label></th>
                                            <td>
                                                <input type="password" id="pwc" style="width:150px" title="비밀번호 확인">
                                                <span class="guide_comment" id="pwcMsg"></span>
                                                <span class="guide_comment" id="pwcCapsLockMsg"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="email">E-mail (정보수신용)</label></th>
                                            <td>
                                                <input type="text" style="width:120px" title="이메일" id="email"> 
                                                <span class="andmail">@</span>
                                                <select id="emailDomainSel" style="width:120px" title="이메일">
                                                    <option value="">직접입력</option>
                                                    <option value="naver.com">naver.com</option>
                                                    <option value="daum.net">daum.net</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                    <option value="lycos.co.kr">lycos.co.kr</option>
                                                    <option value="nate.com">nate.com</option>
                                                    <option value="empas.com">empas.com</option>
                                                    <option value="hotmail.com">hotmail.com</option>
                                                    <option value="msn.com">msn.com</option>
                                                    <option value="hanmir.com">hanmir.com</option>
                                                    <option value="chol.net">chol.net</option>
                                                    <option value="korea.com">korea.com</option>
                                                    <option value="netsgo.com">netsgo.com</option>
                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                    <option value="hanafos.com">hanafos.com</option>
                                                    <option value="freechal.com">freechal.com</option>
                                                    <option value="hitel.net">hitel.net</option>
                                                </select>
                                                <input type="text" id="emailDomain" style="width:120px" value="" title="이메일 도메인">
                                                <input type="button" class="btn add_s" id="emailDubChkBtn" value="중복확인">
                                                <span class="guide_comment" id="emailMsg"></span>
                                                <div class="wtype_comment pt10">
                                                    <input type="checkbox" id="ck1"><label for="ck1">이메일 아이디 적용</label>
                                                </div>
                                                <div class="wtype_comment pt5">
                                                    <input type="checkbox" id="emailReceiveYn" name="emailReceiveYn" value="Y"><label for="emailReceiveYn">이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다. (선택)</label>
                                                    <a href="javascript:void(0);" class="email-prev-detail-btn">자세히 보기</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><strong class="reqd">*</strong><label for="name">이름</label></th>
                                            <td>
                                                <input type="text" style="width:120px" id="name" name="name"> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><strong class="reqd">*</strong><label for="birth">생년월일</label></th>
                                            <td>
                                                <select style="width:80px" id="selYear" title="년도">
                                                    <option value="">년</option>
                                                <option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select>
                                                <select style="width:80px" id="selMonth" title="월">
                                                    <option value="">월</option>
                                                    <option value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>
                                                <select style="width:80px" id="selDay" title="일">
                                                    <option value="">일</option>
                                                    <option value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                    <option value="13">13</option>
                                                    <option value="14">14</option>
                                                    <option value="15">15</option>
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            
                            <div class="btnwrap">
                                <input type="button" value="취소" class="btn wt" id="cancleBtn">
                                <input type="button" value="회원가입" class="btn gray mr0" id="joinBtn">
                            </div>
                        </div>
                    </fieldset>
            </div>
            <!--//sub container-->
        </div>
        
        <div class="layerArea email-detail-pop" style="display: none;">
            <div class="layerBg"></div>
            <div class="popwrap w_type_11">
                <div class="terms_box box_type_2">
                    ■ 개인정보의 수집항목 및 이용<br><br>
                    더한섬닷컴은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의 서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수 있으며 선택항목을 입력하지 않아도 서비스 이용에 제한은 없습니다.<br><br>
                    <span style="color:#000; display:block; margin-bottom:12px;">회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</span>
                    <table class="tbl_ltype">
                        <caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
                        <colgroup>
                            <col style="width:auto">
                            <col style="width:202px;">
                            <col style="width:103px;">
                            <col style="width:254px;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">수집 방법</th>
                                <th scope="col">이용 목적</th>
                                <th scope="col">수집 정보</th>
                                <th scope="col">수집 항목</th>
                                <th scope="col">보유 기간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="frt">간편회원가입</td>
                                <td><strong>신규서비스/상품안내</strong></td>
                                <td>선택</td>
                                <td>이메일</td>
                                <td>회원 탈퇴 시 또는 동의 철회 시</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="javascript:void(0)" class="btn_close"><img src="${pageContext.request.contextPath}/resources/images/popup/ico_close.png" alt="닫기"></a>
                </div>
            </div>
        </div>
<div>
<input type="hidden" name="CSRFToken" value="289c8a50-3404-43c6-9404-7ea8ef0646fd">
</div></form><!-- footerWrap -->

<script type="text/javascript">
//<![CDATA[ 

$(document).ready(function(){
    var ua = navigator.userAgent.toLowerCase();
    // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
    if((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1) ){
        $("#f_insta").show();
    }
});

getNewsList("/ko/magazine");


// 2022.03.29 푸터 공지사항 추가
getFooterNotices("/ko/svcenter");


function moveMobile(){
// 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
	location.href = "/ko/?uiel=Mobile";
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
