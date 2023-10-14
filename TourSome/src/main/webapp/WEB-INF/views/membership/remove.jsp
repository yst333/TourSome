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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<!-- 
	<c:if test="${result == 'success'}">
		회원탈퇴가 완료되었습니다!
	</c:if>
	<c:if test="${result != 'success'}">
		해당 아이디가 존재하지 않습니다!
	</c:if>
-->
	<form action="/membership/remove" id="actionForm" method="get">
		<input type="hidden" value="${result}" name="result" id="result">
	</form>
	
<script type="text/javascript">
	$(document).ready(function() {
		
		var actionForm = $("#actionForm");
		
		var result = actionForm.find("input[name='result']").val();
		console.log("asdf");
		console.log(result);
		if (result === 'success') {
			alert("회원탈퇴가 완료되었습니다!")
			actionForm.attr("action", "/index.jsp");
			actionForm.find("#result").remove();
			actionForm.submit();
		} else{
			alert("회원정보가 일치하지 않습니다!");
			actionForm.attr("action", "/index.jsp");
			actionForm.find("#result").remove();
			actionForm.submit();
		}
		
	});
</script>
</body>
</html>