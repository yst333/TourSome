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

    <title>SB Admin 2 - Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.css" rel="stylesheet">
	<style>
	    .mt-5, .my-5 {
	    	margin-top: 15rem!important;
		}
    </style>
</head>

<body class="bg-gradient-primary">
<iframe class="movie" src="https://player.vimeo.com/video/307474784?h=1de4894024&controls=0&autoplay=1&muted=1&loop=1&autopause=0&transparent=0" width="100%" height="100%" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <a href="/main.jsp" class="col-lg-6 d-none d-lg-block bg-password-image"></a>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                    <form class="user" method="get" action="/membership/find_password">
	                                    <div class="form-group">
                                           <input type="email" class="form-control form-control-user"
                                               id="exampleInputEmail" aria-describedby="IdHelp" name="id"
                                               placeholder="Enter Id...">
	                                    </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp" name="email"
                                                placeholder="Enter Email Address...">
                                        </div>
                                        <a href="/membership/find_passwrod" class="btn btn-primary btn-user btn-block find_btn">
                                            Find Password
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/membership/register">Create an Account!</a>
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

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
	<script type="text/javascript">
    	$(".find_btn").on("click",function(e){
    		e.preventDefault();
    		var actionForm = $(".user");
    		if (actionForm.find("input[name='id']").val() == '') {
				alert("ID를 입력하세요!");
				return false;
			} else if(actionForm.find("input[name='email']").val() == ''){
				alert("Email을 입력하세요!");
				return false;
			};
    		actionForm.submit();
    	});
    </script>
</body>

</html>