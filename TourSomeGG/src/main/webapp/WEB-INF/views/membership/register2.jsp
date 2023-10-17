<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<!-- 
<c:if test="${result == 'success'}">
	회원가입이 완료되었습니다!
</c:if>
-->
	<form action="/membership/register" id="actionForm">
		<input type="hidden" id="result" value="${result}" name="result">
	</form>


<script type="text/javascript">
	$(document).ready(function() {
		
		var actionForm = $("#actionForm");
		var result = actionForm.find("input[name='result']").val();
		if (result == 'success') {
			alert("회원가입이 완료되었습니다!")
			actionForm.attr("action", "/membership/login");
			actionForm.find("#result").remove();
			actionForm.submit();
		} else{
			alert("다시 확인해 주세요!");
			actionForm.attr("action", "/index.jsp");
			actionForm.find("#result").remove();
			actionForm.submit();
		}
		
	});
</script>


</body>
</html>