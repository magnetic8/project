<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#u_birthdate" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );  
</script>
</head>
<body>
<body>
	<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
	<div id="wrap">
		<br>
		<br> <b><font size="6" color="gray">회원가입</font></b> <br>
		<br>
		<br>

		<form method="post" action="${cpath}/join.do" name="frm"
			onsubmit="return checkValue()">
			<input type="hidden" name="chk" value=0>
			<table>
				<tr>
					<td for="login_id">아이디</td>
					<td><input type="text" id="login_id" name="login_id"
						maxlength="50" placeholder="이메일주소를 입력하세요" required
						onchange="fn_idcheck()"> <!--  <input type="button" value="중복확인" >    -->
						<button type="button" onclick="fn_idcheck()">중복확인</button></td>
				</tr>

				<tr>
					<td for="u_pw">비밀번호</td>
					<td><input type="password" id="u_pw" name="u_pw" maxlength="50"
						placeholder="8자리 이상" required ></td>
				</tr>

				<tr>
					<td for="u_pwcheck">비밀번호 확인</td>
					<td><input type="password" id="u_pwcheck" name="u_pwcheck"
						maxlength="50" required ></td>
				</tr>

				<tr>
					<td for="user_name">이름</td>
					<td><input type="text" id="user_name" name="user_name"
						maxlength="50"></td>
				</tr>
				 <tr>
					<td for="u_nick">닉네임</td>
					<td><input type="text" id="u_nick" name="u_nick"
						maxlength="20" placeholder="닉네임을 입력하세요" required
						onchange="fn_niccheck()">     
						<button type="button" onclick="fn_niccheck()">중복체크</button></td>
				</tr> 

				<tr>
					<td for="u_birthdate">생일</td>
					<td><input type="text" id="u_birthdate" name="u_birthdate" class="box2"
						required></td>
				</tr>

				<!-- <tr>
					<td for="email">이메일</td>
					<td><input type="text" id="email" name="email" maxlength="50">@
						<select name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr> -->

				<!-- <tr>
                    <td for="phone">휴대전화</td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr> -->

				<tr>
					<input type="text" id="sample6_postcode" name="post"
						placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()"
						value="우편번호 찾기">
					<br>
					<input type="text" id="sample6_address" name="u_addr"
						placeholder="주소">
					<br>
					<input type="text" id="sample6_detailAddress" name="u_addr1"
						placeholder="상세주소">
					<input type="text" id="sample6_extraAddress" placeholder="동이름">

				</tr>


				<!-- <tr>
                    <td for="address">주소</td>
                    <td>
                        <input type="text" size="50" id="address" name="address"/>
                        
                        <input type="text" size="5" name="zipcode"/>
                        <button type="button" onclick="sample5_execDaumPostcode()">우편번호찾기</button><br>
                    </td>
                </tr>
            
                <tr>
                    <td for="address_detail">상세주소</td>
                    <td>
                        <input type="text" size="50" name="address_detail"/>
                    </td>
                </tr>
            <br> -->
			</table>

			<button type="submit" onclick="fn_submit();return false;">가입</button>

		</form>
	</div>
	<script>
		/* let login_id=document.querySelector('#login_id')
		let u_pw=document.querySelector('#u_pw')
		let u_pwcheck=document.querySelector('#u_pwcheck')
		//1. 아이디는 4~15자리의 영문과 숫자를 입력하세요
		
		u_pw.addEventListener("change",checku_pw);
		u_pwcheck.addEventListener('change', compareu_pw)
		//id 중복체크
		 */
		 
		
		function fn_idcheck(){
			var login_id=document.frm.login_id.value;
			if(login_id==""){
				 alert("아이디를 입력해주세요.")
				 document.frm.login_id.focus()
				 return false;
		    }
			if(login_id.length<4 || login_id.length>15){
				alert("아이디는 4~15자리의 영문과 숫자를 입력하세요")
				document.frm.login_id.focus()
				return false;
			}
			var url="${cpath}/idCheck.do?login_id="+login_id;
			window.open(url,"중복아이디체크","width=300,height=200")
		}
		function fn_niccheck(){
			var u_nick=document.frm.u_nick.value;
			if(u_nick==""){
				 alert("닉네임을 입력해주세요.")
				 document.frm.u_nick.focus()
				 return false;
		    }
			if(u_nick.length<1 || u_nick.length>15){
				alert("닉네임은 1~15자리로 입력해주세요")
				document.frm.u_nick.focus()
				return false;
			}
			var url="${cpath}/nicCheck.do?u_nick="+u_nick;
			window.open(url,"중복닉네임 체크","width=300,height=200")
		}
		
		 //비번 8자리이상입력
		 let u_pw=document.querySelector('#u_pw')
		let u_pwcheck=document.querySelector('#u_pwcheck')
		u_pw.addEventListener("change",checku_pw);
		u_pwcheck.addEventListener('change', compareu_pw)
		
		function checku_pw(){
			if(this.value.length<8){
				alert("비밀번호는 8자리 이상")
				this.focus()
			}
		}
		//비밀번호와 비밀번호확인값이 같은지 확인
		//값이 틀리면 "암호가 다릅니다 다시 입력하세요!!!"
		function compareu_pw(){
			console.log("1 : "+this.value);
			console.log("2 : "+u_pw.value);
			if(this.value!=u_pw.value){
				alert("암호가 다릅니다 다시 입력하세요!!!")
				this.value=""
				this.focus()
			}
		}
		
		//가입버튼 눌렀을때 확인
		function fn_submit(){
			var f = document.frm;
				
			if(f.login_id.value==""){
				alert("아이디를 입력해주세요");
				f.login_id.focus();
				return false;
			}
			if(f.chk.value=="0"){
			 	alert("아이디 중복체크를 해주세요.")
			 	return false;
			}
			
			if(f.u_pw.value==""){
				alert("암호를 입력해주세요.");
				f.u_pw.focus();
				return false;				
			}
			if(f.user_name.value==""){
				alert("이름을 입력해주세요.")
				f.user_name.focus();
				return false;				
			}
			f.submit();
		}

	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>