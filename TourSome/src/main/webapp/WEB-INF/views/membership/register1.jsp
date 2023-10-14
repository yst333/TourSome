<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

	<form action="/membership/register2" id="actionForm1" method="post">
			<input type="hidden" id="id" value="${member_true.id}" name="id">
			<input type="hidden" id="password" value="${member_true.password}" name="password">
			<input type="hidden" id="name" value="${member_true.name}" name="name">
			<input type="hidden" id="email" value="${member_true.email}" name="email">
			<input type="hidden" id="p_num" value="${member_true.p_num}" name="p_num">
			<input type="hidden" id="address" value="${member_true.address}" name="address">
			<input type="hidden" id="gender" value="${member_true.gender}" name="gender">
			<input type="hidden" id="age" value="${member_true.age}" name="age">
	</form>
	
	<form action="/index.jsp" id="actionForm2" method="post">
			<input type="hidden" id="id" value="${member_false.id}" name="id">
	</form>

	<script type="text/javascript">
		$(document).ready(function() {
			var actionForm1 = $("#actionForm1");
			var actionForm2 = $("#actionForm2");
			var id = actionForm2.find("input[name='id']").val();
			console.log(id);
			if (id == '') {
				actionForm1.submit();
			} else{
				alert("이미 존재하는 아이디입니다!");
				actionForm2.find("input[name='id']").remove();
				actionForm2.submit();
			}
		});
	</script>


</body>
</html>