<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
                            </div>
                            <form class="user" action="/membership/register1" method="post" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="id" name="id"
                                        placeholder="아이디">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="password" name="password" placeholder="비밀번호">
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="password_repeat" name="password_repeat" placeholder="비밀번호 확인">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="email" name="email"
                                        placeholder="이메일">
                                </div>
                                <div class="form-group row">
	                                <div class="col-sm-6 mb-3 mb-sm-0">
	                                    <input type="text" class="form-control form-control-user" id="name" name="name"
	                                        placeholder="이름">
	                                </div>
	                                <div class="col-sm-6 mb-3 mb-sm-0">
	                                    <input type="text" class="form-control form-control-user" id="p_num" name="p_num"
	                                        placeholder="핸드폰 번호">
	                                </div>
                                </div>
                                <div class="form-group">
	                                <div class="col-sm-6 mb-3 mb-sm-0">
									    <input type="button" class = "btn btn-secondary btn-user" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required class="button_add" ><br><br>
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
						                <input type="hidden" id="address1"  name="address1" style="width: 250px;" required>
									    <input type="text" class="bar2 form-control form-control-user" id="address2" name="address2" placeholder="주소" style="width: 410px;" required><br>
									</div>
									<div class="col-sm-6 mb-3 mb-sm-3">
									    <input type="text" class="bar2 form-control form-control-user" id="address3" name="address3" placeholder="상세주소" style="width: 410px;" required>
									    <input class="extraAddress" type="hidden" id="address4" name="address4" placeholder="참고항목" size="0">
									</div>
									<div class="form-group row">
										<div class="col-sm-12 mb-3 mb-sm-0">성별
										</div>
										<div class="col-sm-3 mb-8 mb-sm-0" style="padding-left: 30px; padding-top: 1em;">
											<input class="form-check-input" type="radio" name="gender" value="M">
											<label class="form-check-label" for="flexRadioDisabled">남자</label>
										</div>
										<div class="col-sm-3 mb-3 mb-sm-0" style="padding-left: 30px; padding-top: 1em;">
										    <input class="form-check-input" type="radio" name="gender" value="F">
										    <label class="form-check-label" for="flexRadioDisabled">여자</label> 
									    </div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input class="form-control form-control-user" type="number" name="age" placeholder="나이">
										</div>
									</div>
                                </div>
                                <div class="form-group">
	                                <a href="/membership/login" class="btn btn-primary btn-user btn-block register_btn">회원가입 </a>
	                                <hr>
                                </div>
                                <!-- 
                                <a href="index.jsp" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.jsp" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                                 -->
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="/membership/forgot-password">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="/membership/login">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	
    	$(".register_btn").on("click",function(e){
    		var actionForm = $(".user");
        	var password = actionForm.find("input[name='password']").val();
        	var password_repeat = actionForm.find("input[name='password_repeat']").val();
        	var register = true;
    		e.preventDefault();
	    		
	    		actionForm.find("input").each(function(index, item) {
	    			if ($(this).val().trim() == '' || $(this).val().trim() == null) {
						alert($(this).attr("name") + " 항목을 입력하세요!");
						register = false;
						return false;
					}
	    		});
	    		
    			if (register == true) {
    				if (password == password_repeat) {
    	    			actionForm.find("input[name='password_reqeat']").remove();
    	    			actionForm.submit();
    	    		} else if(password != password_repeat){
    	    			alert("비밀번호가 같지 않습니다!");
    	    			return false;
    	    		}	
				}
    		
    	});
    	
    });
    </script>
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