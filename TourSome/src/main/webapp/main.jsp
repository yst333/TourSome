<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<c:if test="${session.name != null}">
		<c:out value="${session.name}" /> 님 환영합니다!
		<form action="/membership/logout" method="post" role="form">
			<input class="logout" type="submit" value="로그아웃">
		</form>
		<form action="/membership/remove_account" method="post" role="form" id="remove_acount">
			<input type="hidden" value="${session.id}" name="id">
			<input class="remove_acount" type="submit" value="회원탈퇴">
		</form>
		<form action="/membership/modify">
			<input type="submit" value="회원정보수정">
		</form>
	</c:if>
	
	<c:if test="${session.name == '' || session.name == null}">
		<form action="/membership/login">
			<input type="submit" value="로그인">
		</form>
	</c:if>



</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	var session_id = "<c:out value = "${session.id}" />";
	console.log(session_id);
	$(document).ready(function() {
		$(".logout").on("click", function() {
			alert("로그아웃이 완료되었습니다!");
		});

		$(".remove_acount").on("click", function() {
			alert("회원탈퇴가 완료되었습니다!");
			$("#remove_acount").submit();
		});
	});
</script>
</html>