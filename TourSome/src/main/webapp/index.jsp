<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SpringMVC 게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

	
	<form action="/board/list" method="get">
		
		<input type="submit" value="SpringMVC 게시판 Go! Go!!">
	
	</form>

	<h2>로그인</h2>
	<form action="/membership/login" method="post" role="form">
		아이디 : <input type="text" name="id">
		비밀번호 : <input type="password" name="password">
		<input type="submit" value="로그인">
	
	</form>

	<h2>회원가입</h2>
	<form action="/membership/register1" method="post" role="form">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="text" name="password"><br>
		이메일 : <input type="text" name="email"><br>
		이름 : <input type="text" name="name"><br>
		핸드폰번호 : <input type="text" name="p_num"><br>
		주소 : <br><input type="hidden" id="address1"  name="address1" style="width: 250px;" required>
	    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required class="button_add" ><br>
	    <input type="text" class="bar2" id="address2" name="address2" placeholder="주소" style="width: 410px;" required><br>
	    <input type="text" class="bar2" id="address3" name="address3" placeholder="상세주소" style="width: 410px;" required>
	    <input class="extraAddress" type="hidden" id="address4" name="address4" placeholder="참고항목" size="0">
	    <br>
		성별 : <input type="radio" name="gender" value="M">남자
			  <input type="radio" name="gender" value="F">여자 <br>
		나이 : <input type="number" name="age"><br>
		<input type="submit" value="가입하기" class="submit">
		<input type="reset" value="초기화">
	</form>
	<br><br>

	<h2>개인정보 수정</h2>
	<form action="/membership/modify" method="get" role="form">
	변경할 아이디 : <input type="text" name="id">
	이름 : <input type="text" name="name"> <br />
	비밀번호 : <input type="password" name="password"> <br>
	이메일 : <input type="text" name="email"> <br /> 
	핸드폰 번호 : <input type="text" name="p_num"> <br /> 
	주소 : <input type="text" name="address"> <br />
	성별 : <input type="radio" name="gender" value="M">남자
		 <input type="radio" name="gender" value="F">여자 <br>
	나이 : <input type="number" name="age"><br>
	<input type="submit" value="개인정보 수정"> 
	<input type="reset" value="초기화"> 
	</form>
	<br><br>
   
	<h2>아이디 찾기</h2>
	<form action="/membership/find_id" method="get">
		이름 : <input type="text" name="name">
		이메일 : <input type="text" name="email">
		<input type="submit" value="아이디 찾기">
		<input type="reset" value="초기화">
	</form>
	<br><br>
	
	<h2>비밀번호 찾기</h2>
	<form action="/membership/find_password" method="get">
		아이디 : <input type="text" name="id">
		이메일 : <input type="text" name="email">
		<input type="submit" value="비밀번호 찾기">
		<input type="reset" value="초기화">
	</form>
	<br><br>
	
	<h2>삭제하기</h2>
	<form action="/membership/remove" method="get">
		아이디 : <input type="text" name="id">
		<input type="submit" value="삭제하기">
		<input type="reset" value="초기화">
	</form> 
	
	<br>
	<br>
	
	<form action="/index.jsp" id="actionForm">
		<input type="hidden" id="result" value="${result}" name="result">
	</form>

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
                    document.getElementById("address4").value = extraAddr;
                
                } else {
                    document.getElementById("address4").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('address1').value = data.zonecode;
                document.getElementById("address2").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address3").focus();
            }
        }).open();
    }
	function address() {
	  // 주소 입력란에서 값을 가져와서 합침
	  const address1 = document.getElementById('address1').value;
	  const address2 = document.getElementById('address2').value;
	  const address3 = document.getElementById('address3').value;
	  const address4 = document.getElementById('address4').value;
	  // 주소를 합쳐서 출력 또는 저장할 곳에 넣습니다.
	  const address = `${address1} ${address2} ${address3} ${address4}`;

	  // 결과를 출력 또는 저장할 곳에 넣으세요.
	  console.log('합쳐진 주소:', address);
	}
    </script>

</body>
</html>