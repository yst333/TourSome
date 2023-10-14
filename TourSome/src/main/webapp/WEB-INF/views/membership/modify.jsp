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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

	<form action="/membership/modify" id="actionForm" method="post">
		<input type="hidden" value="${result}" name="result" id="result">
	</form>

	<script type="text/javascript">
		$(document).ready(function() {

			var actionForm = $("#actionForm");
			var result = actionForm.find("input[name='result']").val();
			console.log(result);
			if (result == '1') {
				alert("회원정보 수정이 완료되었습니다!");
			} else {
				alert("입력하신 ID가 존재하지 않습니다!");
			}
			actionForm.find("input[name='result']").remove();
			actionForm.attr("action", "/index.jsp");
			actionForm.submit();
		});
	</script>

</body>
</html>